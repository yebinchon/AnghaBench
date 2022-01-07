
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct isp1760_hcd {TYPE_1__* memory_pool; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ size; int free; } ;


 int BLOCK_1_NUM ;
 scalar_t__ BLOCK_1_SIZE ;
 int BLOCK_2_NUM ;
 scalar_t__ BLOCK_2_SIZE ;
 int BLOCK_3_NUM ;
 scalar_t__ BLOCK_3_SIZE ;
 scalar_t__ PAYLOAD_AREA_SIZE ;
 scalar_t__ PAYLOAD_OFFSET ;
 int WARN_ON (int) ;

__attribute__((used)) static void init_memory(struct isp1760_hcd *priv)
{
 int i, curr;
 u32 payload_addr;

 payload_addr = PAYLOAD_OFFSET;
 for (i = 0; i < BLOCK_1_NUM; i++) {
  priv->memory_pool[i].start = payload_addr;
  priv->memory_pool[i].size = BLOCK_1_SIZE;
  priv->memory_pool[i].free = 1;
  payload_addr += priv->memory_pool[i].size;
 }

 curr = i;
 for (i = 0; i < BLOCK_2_NUM; i++) {
  priv->memory_pool[curr + i].start = payload_addr;
  priv->memory_pool[curr + i].size = BLOCK_2_SIZE;
  priv->memory_pool[curr + i].free = 1;
  payload_addr += priv->memory_pool[curr + i].size;
 }

 curr = i;
 for (i = 0; i < BLOCK_3_NUM; i++) {
  priv->memory_pool[curr + i].start = payload_addr;
  priv->memory_pool[curr + i].size = BLOCK_3_SIZE;
  priv->memory_pool[curr + i].free = 1;
  payload_addr += priv->memory_pool[curr + i].size;
 }

 WARN_ON(payload_addr - priv->memory_pool[0].start > PAYLOAD_AREA_SIZE);
}
