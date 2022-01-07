
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {int srp_task; int dev; } ;
struct device {int dummy; } ;


 struct ibmvscsi_host_data* dev_get_drvdata (struct device*) ;
 int tasklet_schedule (int *) ;
 int to_vio_dev (int ) ;
 int vio_disable_interrupts (int ) ;

__attribute__((used)) static int ibmvscsi_resume(struct device *dev)
{
 struct ibmvscsi_host_data *hostdata = dev_get_drvdata(dev);
 vio_disable_interrupts(to_vio_dev(hostdata->dev));
 tasklet_schedule(&hostdata->srp_task);

 return 0;
}
