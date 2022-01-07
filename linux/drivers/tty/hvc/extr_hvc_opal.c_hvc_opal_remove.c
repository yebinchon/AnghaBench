
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct hvc_struct {int vtermno; } ;


 struct hvc_struct* dev_get_drvdata (int *) ;
 int hvc_opal_boot_priv ;
 int ** hvc_opal_privs ;
 int hvc_remove (struct hvc_struct*) ;
 int kfree (int *) ;

__attribute__((used)) static int hvc_opal_remove(struct platform_device *dev)
{
 struct hvc_struct *hp = dev_get_drvdata(&dev->dev);
 int rc, termno;

 termno = hp->vtermno;
 rc = hvc_remove(hp);
 if (rc == 0) {
  if (hvc_opal_privs[termno] != &hvc_opal_boot_priv)
   kfree(hvc_opal_privs[termno]);
  hvc_opal_privs[termno] = ((void*)0);
 }
 return rc;
}
