
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct broadsheetfb_par {TYPE_1__* info; } ;
struct TYPE_2__ {int device; } ;


 int ETIMEDOUT ;
 int broadsheet_spiflash_read_byte (struct broadsheetfb_par*,int*) ;
 int broadsheet_spiflash_write_byte (struct broadsheetfb_par*,int) ;
 int broadsheet_write_reg (struct broadsheetfb_par*,int,int) ;
 int dev_err (int ,char*) ;
 int mdelay (int) ;

__attribute__((used)) static int broadsheet_spiflash_wait_for_status(struct broadsheetfb_par *par,
        int timeout)
{
 u8 tmp;
 int err;

 do {
  broadsheet_write_reg(par, 0x0208, 1);

  err = broadsheet_spiflash_write_byte(par, 0x05);
  if (err)
   goto failout;

  err = broadsheet_spiflash_read_byte(par, &tmp);
  if (err)
   goto failout;

  broadsheet_write_reg(par, 0x0208, 0);

  if (!(tmp & 0x1))
   return 0;

  mdelay(5);
 } while (timeout--);

 dev_err(par->info->device, "Timed out waiting for spiflash status\n");
 return -ETIMEDOUT;

failout:
 broadsheet_write_reg(par, 0x0208, 0);
 return err;
}
