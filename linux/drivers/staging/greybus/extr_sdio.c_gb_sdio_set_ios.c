
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_sdio_set_ios_request {int dummy; } ;
struct gb_sdio_host {int gbphy_dev; int connection; } ;


 int GB_SDIO_TYPE_SET_IOS ;
 int gb_operation_sync (int ,int ,struct gb_sdio_set_ios_request*,int,int *,int ) ;
 int gbphy_runtime_get_sync (int ) ;
 int gbphy_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int gb_sdio_set_ios(struct gb_sdio_host *host,
      struct gb_sdio_set_ios_request *request)
{
 int ret;

 ret = gbphy_runtime_get_sync(host->gbphy_dev);
 if (ret)
  return ret;

 ret = gb_operation_sync(host->connection, GB_SDIO_TYPE_SET_IOS, request,
    sizeof(*request), ((void*)0), 0);

 gbphy_runtime_put_autosuspend(host->gbphy_dev);

 return ret;
}
