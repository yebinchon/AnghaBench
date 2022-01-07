
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct zd_chip {int dummy; } ;
struct wiphy {int fw_version; } ;
struct TYPE_4__ {TYPE_1__* hw; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;


 int FW_REG_FIRMWARE_VER ;
 int dev_info (int ,char*,int ) ;
 int fw_reg_addr (struct zd_chip*,int ) ;
 int snprintf (int ,int,char*,int ) ;
 int zd_chip_dev (struct zd_chip*) ;
 TYPE_2__* zd_chip_to_mac (struct zd_chip*) ;
 int zd_ioread16_locked (struct zd_chip*,int *,int ) ;

__attribute__((used)) static int print_fw_version(struct zd_chip *chip)
{
 struct wiphy *wiphy = zd_chip_to_mac(chip)->hw->wiphy;
 int r;
 u16 version;

 r = zd_ioread16_locked(chip, &version,
  fw_reg_addr(chip, FW_REG_FIRMWARE_VER));
 if (r)
  return r;

 dev_info(zd_chip_dev(chip),"firmware version %04hx\n", version);

 snprintf(wiphy->fw_version, sizeof(wiphy->fw_version),
   "%04hx", version);

 return 0;
}
