
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct esp_lun_data* hostdata; } ;
struct esp_lun_data {scalar_t__ hold; int num_tagged; } ;


 int BUG_ON (int ) ;

__attribute__((used)) static void esp_clear_hold(struct scsi_device *dev, void *data)
{
 struct esp_lun_data *lp = dev->hostdata;

 BUG_ON(lp->num_tagged);
 lp->hold = 0;
}
