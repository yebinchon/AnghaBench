
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_slink_data {int bytes_per_word; } ;
struct spi_transfer {int dummy; } ;


 int SLINK_PACK_SIZE_16 ;
 int SLINK_PACK_SIZE_32 ;
 int SLINK_PACK_SIZE_4 ;
 int SLINK_PACK_SIZE_8 ;

__attribute__((used)) static u32 tegra_slink_get_packed_size(struct tegra_slink_data *tspi,
      struct spi_transfer *t)
{
 switch (tspi->bytes_per_word) {
 case 0:
  return SLINK_PACK_SIZE_4;
 case 1:
  return SLINK_PACK_SIZE_8;
 case 2:
  return SLINK_PACK_SIZE_16;
 case 4:
  return SLINK_PACK_SIZE_32;
 default:
  return 0;
 }
}
