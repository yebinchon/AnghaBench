
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadsheetfb_par {int dummy; } ;


 scalar_t__ BS_SPIFLASH_PAGE_SIZE ;
 int broadsheet_spiflash_write_page (struct broadsheetfb_par*,int,char const*) ;

__attribute__((used)) static int broadsheet_spiflash_write_sector(struct broadsheetfb_par *par,
    int addr, const char *data, int sector_size)
{
 int i;
 int err;

 for (i = 0; i < sector_size; i += BS_SPIFLASH_PAGE_SIZE) {
  err = broadsheet_spiflash_write_page(par, addr + i, &data[i]);
  if (err)
   return err;
 }
 return 0;
}
