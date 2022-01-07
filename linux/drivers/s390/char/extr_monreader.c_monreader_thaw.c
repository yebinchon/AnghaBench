
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_private {int iucv_severed; int * path; int iucv_connected; } ;
struct device {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IUCV_IPRMDATA ;
 int MON_MSGLIM ;
 int MON_SERVICE ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 struct mon_private* dev_get_drvdata (struct device*) ;
 int * iucv_path_alloc (int ,int ,int ) ;
 int iucv_path_connect (int *,int *,int ,int *,int ,struct mon_private*) ;
 int iucv_path_free (int *) ;
 int mon_conn_wait_queue ;
 int monreader_iucv_handler ;
 int pr_err (char*,int) ;
 int user_data_connect ;
 int wait_event (int ,int) ;

__attribute__((used)) static int monreader_thaw(struct device *dev)
{
 struct mon_private *monpriv = dev_get_drvdata(dev);
 int rc;

 if (!monpriv)
  return 0;
 rc = -ENOMEM;
 monpriv->path = iucv_path_alloc(MON_MSGLIM, IUCV_IPRMDATA, GFP_KERNEL);
 if (!monpriv->path)
  goto out;
 rc = iucv_path_connect(monpriv->path, &monreader_iucv_handler,
          MON_SERVICE, ((void*)0), user_data_connect, monpriv);
 if (rc) {
  pr_err("Connecting to the z/VM *MONITOR system service "
         "failed with rc=%i\n", rc);
  goto out_path;
 }
 wait_event(mon_conn_wait_queue,
     atomic_read(&monpriv->iucv_connected) ||
     atomic_read(&monpriv->iucv_severed));
 if (atomic_read(&monpriv->iucv_severed))
  goto out_path;
 return 0;
out_path:
 rc = -EIO;
 iucv_path_free(monpriv->path);
 monpriv->path = ((void*)0);
out:
 atomic_set(&monpriv->iucv_severed, 1);
 return rc;
}
