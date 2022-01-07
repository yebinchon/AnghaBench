
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {unsigned int drv_buf_alloc; scalar_t__ fw_crash_buffer_size; int fw_crash_state; scalar_t__ drv_buf_index; scalar_t__* crash_buf; } ;


 int UNAVAILABLE ;
 int vfree (scalar_t__) ;

void
megasas_free_host_crash_buffer(struct megasas_instance *instance)
{
 unsigned int i;
 for (i = 0; i < instance->drv_buf_alloc; i++) {
  if (instance->crash_buf[i])
   vfree(instance->crash_buf[i]);
 }
 instance->drv_buf_index = 0;
 instance->drv_buf_alloc = 0;
 instance->fw_crash_state = UNAVAILABLE;
 instance->fw_crash_buffer_size = 0;
}
