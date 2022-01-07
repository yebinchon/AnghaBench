
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct ssd1307fb_par {int height; unsigned int width; int client; TYPE_2__* info; } ;
struct ssd1307fb_array {int* data; } ;
struct TYPE_3__ {unsigned int line_length; } ;
struct TYPE_4__ {int* screen_buffer; TYPE_1__ fix; } ;


 unsigned int DIV_ROUND_UP (int,int) ;
 int SSD1307FB_DATA ;
 int kfree (struct ssd1307fb_array*) ;
 struct ssd1307fb_array* ssd1307fb_alloc_array (unsigned int,int ) ;
 int ssd1307fb_write_array (int ,struct ssd1307fb_array*,unsigned int) ;

__attribute__((used)) static void ssd1307fb_update_display(struct ssd1307fb_par *par)
{
 struct ssd1307fb_array *array;
 u8 *vmem = par->info->screen_buffer;
 unsigned int line_length = par->info->fix.line_length;
 unsigned int pages = DIV_ROUND_UP(par->height, 8);
 int i, j, k;

 array = ssd1307fb_alloc_array(par->width * pages, SSD1307FB_DATA);
 if (!array)
  return;
 for (i = 0; i < pages; i++) {
  for (j = 0; j < par->width; j++) {
   int m = 8;
   u32 array_idx = i * par->width + j;
   array->data[array_idx] = 0;

   if (i + 1 == pages && par->height % 8)
    m = par->height % 8;
   for (k = 0; k < m; k++) {
    u8 byte = vmem[(8 * i + k) * line_length +
            j / 8];
    u8 bit = (byte >> (j % 8)) & 1;
    array->data[array_idx] |= bit << k;
   }
  }
 }

 ssd1307fb_write_array(par->client, array, par->width * pages);
 kfree(array);
}
