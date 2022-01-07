
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;


 int ZFCP_STATUS_ADAPTER_SUSPENDED ;
 int zfcp_ccw_offline_sync (struct ccw_device*,int ,char*) ;

__attribute__((used)) static int zfcp_ccw_suspend(struct ccw_device *cdev)
{
 zfcp_ccw_offline_sync(cdev, ZFCP_STATUS_ADAPTER_SUSPENDED, "ccsusp1");
 return 0;
}
