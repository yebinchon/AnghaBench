
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_dev {int dummy; } ;


 int rtsx_release_resources (struct rtsx_dev*) ;
 int rtsx_to_host (struct rtsx_dev*) ;
 int scsi_host_put (int ) ;

__attribute__((used)) static void release_everything(struct rtsx_dev *dev)
{
 rtsx_release_resources(dev);





 scsi_host_put(rtsx_to_host(dev));
}
