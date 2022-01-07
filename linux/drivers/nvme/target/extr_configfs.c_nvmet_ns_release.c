
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ns {int dummy; } ;
struct config_item {int dummy; } ;


 int nvmet_ns_free (struct nvmet_ns*) ;
 struct nvmet_ns* to_nvmet_ns (struct config_item*) ;

__attribute__((used)) static void nvmet_ns_release(struct config_item *item)
{
 struct nvmet_ns *ns = to_nvmet_ns(item);

 nvmet_ns_free(ns);
}
