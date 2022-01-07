
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int scan_mutex; int scsi_host_ptr; scalar_t__ sa_firmware; } ;


 int aac_scan_safw_host (struct aac_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_scan_host (int ) ;

int aac_scan_host(struct aac_dev *dev)
{
 int rcode = 0;

 mutex_lock(&dev->scan_mutex);
 if (dev->sa_firmware)
  rcode = aac_scan_safw_host(dev);
 else
  scsi_scan_host(dev->scsi_host_ptr);
 mutex_unlock(&dev->scan_mutex);

 return rcode;
}
