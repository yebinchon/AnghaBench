
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ bios_image_size; int * image_update_buffer; } ;


 int ENOMEM ;
 int memory_read_from_buffer (char*,size_t,int *,int *,scalar_t__) ;
 int pr_debug (char*,int *,scalar_t__) ;
 TYPE_1__ rbu_data ;

__attribute__((used)) static ssize_t read_rbu_mono_data(char *buffer, loff_t pos, size_t count)
{

 if ((rbu_data.image_update_buffer == ((void*)0)) ||
  (rbu_data.bios_image_size == 0)) {
  pr_debug("read_rbu_data_mono: image_update_buffer %p ,"
   "bios_image_size %lu\n",
   rbu_data.image_update_buffer,
   rbu_data.bios_image_size);
  return -ENOMEM;
 }

 return memory_read_from_buffer(buffer, count, &pos,
   rbu_data.image_update_buffer, rbu_data.bios_image_size);
}
