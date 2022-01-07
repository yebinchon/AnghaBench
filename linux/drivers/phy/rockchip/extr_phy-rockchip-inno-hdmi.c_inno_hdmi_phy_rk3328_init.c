
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char nvmem_cell ;
struct inno_hdmi_phy {int chip_version; int dev; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (unsigned char*) ;
 int PTR_ERR (unsigned char*) ;
 int RK3328_BYPASS_PDATA_EN ;
 int RK3328_BYPASS_PLLPD_EN ;
 int RK3328_BYPASS_POWERON_EN ;
 int RK3328_BYPASS_RXSENSE_EN ;
 int RK3328_INT_POL_HIGH ;
 int RK3328_PDATA_EN ;
 int inno_write (struct inno_hdmi_phy*,int,int) ;
 int kfree (unsigned char*) ;
 unsigned char* nvmem_cell_get (int ,char*) ;
 int nvmem_cell_put (unsigned char*) ;
 unsigned char* nvmem_cell_read (unsigned char*,size_t*) ;

__attribute__((used)) static int inno_hdmi_phy_rk3328_init(struct inno_hdmi_phy *inno)
{
 struct nvmem_cell *cell;
 unsigned char *efuse_buf;
 size_t len;





 inno_write(inno, 0x01, RK3328_BYPASS_RXSENSE_EN |
     RK3328_BYPASS_POWERON_EN |
     RK3328_BYPASS_PLLPD_EN);
 inno_write(inno, 0x02, RK3328_INT_POL_HIGH | RK3328_BYPASS_PDATA_EN |
     RK3328_PDATA_EN);


 inno_write(inno, 0x05, 0);
 inno_write(inno, 0x07, 0);


 inno->chip_version = 1;
 cell = nvmem_cell_get(inno->dev, "cpu-version");
 if (IS_ERR(cell)) {
  if (PTR_ERR(cell) == -EPROBE_DEFER)
   return -EPROBE_DEFER;

  return 0;
 }

 efuse_buf = nvmem_cell_read(cell, &len);
 nvmem_cell_put(cell);

 if (IS_ERR(efuse_buf))
  return 0;
 if (len == 1)
  inno->chip_version = efuse_buf[0] + 1;
 kfree(efuse_buf);

 return 0;
}
