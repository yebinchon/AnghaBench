
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int disk; } ;
struct device {int dummy; } ;


 struct scsi_disk* dev_get_drvdata (struct device*) ;
 int revalidate_disk (int ) ;

__attribute__((used)) static void sd_rescan(struct device *dev)
{
 struct scsi_disk *sdkp = dev_get_drvdata(dev);

 revalidate_disk(sdkp->disk);
}
