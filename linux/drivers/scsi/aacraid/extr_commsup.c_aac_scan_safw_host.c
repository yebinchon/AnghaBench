
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int dummy; } ;


 int aac_schedule_safw_scan_worker (struct aac_dev*) ;
 int aac_update_safw_host_devices (struct aac_dev*) ;

__attribute__((used)) static int aac_scan_safw_host(struct aac_dev *dev)
{
 int rcode = 0;

 rcode = aac_update_safw_host_devices(dev);
 if (rcode)
  aac_schedule_safw_scan_worker(dev);

 return rcode;
}
