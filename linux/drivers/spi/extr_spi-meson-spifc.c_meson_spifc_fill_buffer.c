
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct meson_spifc {int regmap; } ;


 scalar_t__ REG_C0 ;
 int memcpy (int *,int const*,int) ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void meson_spifc_fill_buffer(struct meson_spifc *spifc, const u8 *buf,
        int len)
{
 u32 data;
 int i = 0;

 while (i < len) {
  if (len - i >= 4)
   data = *(u32 *)buf;
  else
   memcpy(&data, buf, len - i);

  regmap_write(spifc->regmap, REG_C0 + i, data);

  buf += 4;
  i += 4;
 }
}
