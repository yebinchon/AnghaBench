
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_host {int dummy; } ;
struct config_item {int dummy; } ;


 int kfree (struct nvmet_host*) ;
 struct nvmet_host* to_host (struct config_item*) ;

__attribute__((used)) static void nvmet_host_release(struct config_item *item)
{
 struct nvmet_host *host = to_host(item);

 kfree(host);
}
