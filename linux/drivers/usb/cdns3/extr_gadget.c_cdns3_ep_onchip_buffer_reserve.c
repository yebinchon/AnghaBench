
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_device {int onchip_buffers; int onchip_used_size; int out_mem_is_allocated; } ;


 int EPERM ;

__attribute__((used)) static int cdns3_ep_onchip_buffer_reserve(struct cdns3_device *priv_dev,
       int size, int is_in)
{
 int remained;


 remained = priv_dev->onchip_buffers - priv_dev->onchip_used_size - 2;

 if (is_in) {
  if (remained < size)
   return -EPERM;

  priv_dev->onchip_used_size += size;
 } else {
  int required;





  if (priv_dev->out_mem_is_allocated >= size)
   return 0;

  required = size - priv_dev->out_mem_is_allocated;

  if (required > remained)
   return -EPERM;

  priv_dev->out_mem_is_allocated += required;
  priv_dev->onchip_used_size += required;
 }

 return 0;
}
