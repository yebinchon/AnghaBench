
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int u64 ;
struct sony_backlight_props {int handle; unsigned char offset; int maxlvl; } ;


 int ARRAY_SIZE (unsigned char*) ;
 int dprintk (char*,unsigned char,...) ;
 int sony_find_snc_handle (int) ;
 int sony_nc_acpi_handle ;
 int sony_nc_buffer_call (int ,char*,int *,unsigned char*,int) ;

__attribute__((used)) static void sony_nc_backlight_ng_read_limits(int handle,
  struct sony_backlight_props *props)
{
 u64 offset;
 int i;
 int lvl_table_len = 0;
 u8 min = 0xff, max = 0x00;
 unsigned char buffer[32] = { 0 };

 props->handle = handle;
 props->offset = 0;
 props->maxlvl = 0xff;

 offset = sony_find_snc_handle(handle);




 i = sony_nc_buffer_call(sony_nc_acpi_handle, "SN06", &offset, buffer,
   32);
 if (i < 0)
  return;

 switch (handle) {
 case 0x012f:
 case 0x0137:
  lvl_table_len = 9;
  break;
 case 0x143:
 case 0x14b:
 case 0x14c:
  lvl_table_len = 16;
  break;
 }





 for (i = 0; i < lvl_table_len && i < ARRAY_SIZE(buffer); i++) {

  dprintk("Brightness level: %d\n", buffer[i]);

  if (!buffer[i])
   break;

  if (buffer[i] > max)
   max = buffer[i];
  if (buffer[i] < min)
   min = buffer[i];
 }
 props->offset = min;
 props->maxlvl = max;
 dprintk("Brightness levels: min=%d max=%d\n", props->offset,
   props->maxlvl);
}
