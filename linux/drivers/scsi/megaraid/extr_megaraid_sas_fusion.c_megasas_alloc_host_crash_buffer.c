
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {unsigned int drv_buf_alloc; TYPE_1__* pdev; int * crash_buf; } ;
struct TYPE_2__ {int dev; } ;


 int CRASH_DMA_BUF_SIZE ;
 unsigned int MAX_CRASH_DUMP_SIZE ;
 int dev_info (int *,char*,unsigned int) ;
 int vzalloc (int ) ;

__attribute__((used)) static void
megasas_alloc_host_crash_buffer(struct megasas_instance *instance)
{
 unsigned int i;

 for (i = 0; i < MAX_CRASH_DUMP_SIZE; i++) {
  instance->crash_buf[i] = vzalloc(CRASH_DMA_BUF_SIZE);
  if (!instance->crash_buf[i]) {
   dev_info(&instance->pdev->dev, "Firmware crash dump "
    "memory allocation failed at index %d\n", i);
   break;
  }
 }
 instance->drv_buf_alloc = i;
}
