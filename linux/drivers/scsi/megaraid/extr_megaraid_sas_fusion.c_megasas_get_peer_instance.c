
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {int clusterId; scalar_t__ peerIsPresent; scalar_t__ requestorId; } ;
struct TYPE_2__ {struct megasas_instance** instance; } ;


 int MAX_MGMT_ADAPTERS ;
 int MEGASAS_CLUSTER_ID_SIZE ;
 TYPE_1__ megasas_mgmt_info ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static struct
megasas_instance *megasas_get_peer_instance(struct megasas_instance *instance)
{
 int i;

 for (i = 0; i < MAX_MGMT_ADAPTERS; i++) {
  if (megasas_mgmt_info.instance[i] &&
   (megasas_mgmt_info.instance[i] != instance) &&
    megasas_mgmt_info.instance[i]->requestorId &&
    megasas_mgmt_info.instance[i]->peerIsPresent &&
   (memcmp((megasas_mgmt_info.instance[i]->clusterId),
   instance->clusterId, MEGASAS_CLUSTER_ID_SIZE) == 0))
   return megasas_mgmt_info.instance[i];
 }
 return ((void*)0);
}
