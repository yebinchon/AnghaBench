
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_device {int dev; } ;
struct cros_ec_rpmsg {int host_event_work; int ept; } ;
struct cros_ec_device {struct cros_ec_rpmsg* priv; } ;


 int cancel_work_sync (int *) ;
 int cros_ec_unregister (struct cros_ec_device*) ;
 struct cros_ec_device* dev_get_drvdata (int *) ;
 int rpmsg_destroy_ept (int ) ;

__attribute__((used)) static void cros_ec_rpmsg_remove(struct rpmsg_device *rpdev)
{
 struct cros_ec_device *ec_dev = dev_get_drvdata(&rpdev->dev);
 struct cros_ec_rpmsg *ec_rpmsg = ec_dev->priv;

 cros_ec_unregister(ec_dev);
 rpmsg_destroy_ept(ec_rpmsg->ept);
 cancel_work_sync(&ec_rpmsg->host_event_work);
}
