
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int dma_addr_t ;
struct TYPE_5__ {int* command_packet_phys; scalar_t__ posted_request_count; scalar_t__ max_posted_request_count; int * state; } ;
typedef TYPE_1__ TW_Device_Extension ;


 int TWL_HIBQPH_REG_ADDR (TYPE_1__*) ;
 int TWL_HIBQPL_REG_ADDR (TYPE_1__*) ;
 int TWL_PULL_MODE ;
 scalar_t__ TW_COMMAND_OFFSET ;
 int TW_S_POSTED ;
 int writel (int ,int ) ;

__attribute__((used)) static int twl_post_command_packet(TW_Device_Extension *tw_dev, int request_id)
{
 dma_addr_t command_que_value;

 command_que_value = tw_dev->command_packet_phys[request_id];
 command_que_value += TW_COMMAND_OFFSET;


 writel((u32)((u64)command_que_value >> 32), TWL_HIBQPH_REG_ADDR(tw_dev));

 writel((u32)(command_que_value | TWL_PULL_MODE), TWL_HIBQPL_REG_ADDR(tw_dev));

 tw_dev->state[request_id] = TW_S_POSTED;
 tw_dev->posted_request_count++;
 if (tw_dev->posted_request_count > tw_dev->max_posted_request_count)
  tw_dev->max_posted_request_count = tw_dev->posted_request_count;

 return 0;
}
