
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270 {struct raw3270* ascebc; } ;
struct ccw_device {int dev; } ;


 int ENOMEM ;
 struct raw3270* ERR_PTR (int) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int get_device (int *) ;
 int kfree (struct raw3270*) ;
 char* kmalloc (int,int) ;
 struct raw3270* kzalloc (int,int) ;
 int raw3270_setup_device (struct ccw_device*,struct raw3270*,char*) ;

__attribute__((used)) static struct raw3270 *
raw3270_create_device(struct ccw_device *cdev)
{
 struct raw3270 *rp;
 char *ascebc;
 int rc;

 rp = kzalloc(sizeof(struct raw3270), GFP_KERNEL | GFP_DMA);
 if (!rp)
  return ERR_PTR(-ENOMEM);
 ascebc = kmalloc(256, GFP_KERNEL);
 if (!ascebc) {
  kfree(rp);
  return ERR_PTR(-ENOMEM);
 }
 rc = raw3270_setup_device(cdev, rp, ascebc);
 if (rc) {
  kfree(rp->ascebc);
  kfree(rp);
  rp = ERR_PTR(rc);
 }

 get_device(&cdev->dev);
 return rp;
}
