
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cg_item; } ;
struct nvmet_host {TYPE_1__ group; } ;


 char* config_item_name (int *) ;

__attribute__((used)) static inline char *nvmet_host_name(struct nvmet_host *host)
{
 return config_item_name(&host->group.cg_item);
}
