
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_chip {int dummy; } ;
struct zd_mac {int regdomain; int lock; int default_regdomain; struct zd_chip chip; } ;
struct ieee80211_hw {int wiphy; } ;


 int ENC_SNIFFER ;
 int ZD_ASSERT (int) ;
 int irqs_disabled () ;
 int regulatory_hint (int ,char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zd_chip_disable_int (struct zd_chip*) ;
 int zd_chip_enable_int (struct zd_chip*) ;
 int zd_chip_init_hw (struct zd_chip*) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 int zd_read_regdomain (struct zd_chip*,int *) ;
 int zd_reg2alpha2 (int ,char*) ;
 int zd_set_encryption_type (struct zd_chip*,int ) ;

int zd_mac_init_hw(struct ieee80211_hw *hw)
{
 int r;
 struct zd_mac *mac = zd_hw_mac(hw);
 struct zd_chip *chip = &mac->chip;
 char alpha2[2];
 u8 default_regdomain;

 r = zd_chip_enable_int(chip);
 if (r)
  goto out;
 r = zd_chip_init_hw(chip);
 if (r)
  goto disable_int;

 ZD_ASSERT(!irqs_disabled());

 r = zd_read_regdomain(chip, &default_regdomain);
 if (r)
  goto disable_int;
 spin_lock_irq(&mac->lock);
 mac->regdomain = mac->default_regdomain = default_regdomain;
 spin_unlock_irq(&mac->lock);



 r = zd_set_encryption_type(chip, ENC_SNIFFER);
 if (r)
  goto disable_int;

 r = zd_reg2alpha2(mac->regdomain, alpha2);
 if (r)
  goto disable_int;

 r = regulatory_hint(hw->wiphy, alpha2);
disable_int:
 zd_chip_disable_int(chip);
out:
 return r;
}
