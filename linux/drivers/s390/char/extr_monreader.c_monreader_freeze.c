
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_private {int * path; scalar_t__ read_index; scalar_t__ write_index; int msglim_count; int read_ready; int iucv_connected; int iucv_severed; } ;
struct device {int dummy; } ;


 int atomic_set (int *,int ) ;
 struct mon_private* dev_get_drvdata (struct device*) ;
 int iucv_path_free (int *) ;
 int iucv_path_sever (int *,int ) ;
 int pr_warn (char*,int) ;
 int user_data_sever ;

__attribute__((used)) static int monreader_freeze(struct device *dev)
{
 struct mon_private *monpriv = dev_get_drvdata(dev);
 int rc;

 if (!monpriv)
  return 0;
 if (monpriv->path) {
  rc = iucv_path_sever(monpriv->path, user_data_sever);
  if (rc)
   pr_warn("Disconnecting the z/VM *MONITOR system service failed with rc=%i\n",
    rc);
  iucv_path_free(monpriv->path);
 }
 atomic_set(&monpriv->iucv_severed, 0);
 atomic_set(&monpriv->iucv_connected, 0);
 atomic_set(&monpriv->read_ready, 0);
 atomic_set(&monpriv->msglim_count, 0);
 monpriv->write_index = 0;
 monpriv->read_index = 0;
 monpriv->path = ((void*)0);
 return 0;
}
