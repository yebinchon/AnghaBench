
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct meson_spifc {int regmap; } ;


 scalar_t__ REG_C0 ;
 int memcpy (int *,int *,int) ;
 int regmap_read (int ,scalar_t__,int *) ;

__attribute__((used)) static void meson_spifc_drain_buffer(struct meson_spifc *spifc, u8 *buf,
         int len)
{
 u32 data;
 int i = 0;

 while (i < len) {
  regmap_read(spifc->regmap, REG_C0 + i, &data);

  if (len - i >= 4) {
   *((u32 *)buf) = data;
   buf += 4;
  } else {
   memcpy(buf, &data, len - i);
   break;
  }
  i += 4;
 }
}
