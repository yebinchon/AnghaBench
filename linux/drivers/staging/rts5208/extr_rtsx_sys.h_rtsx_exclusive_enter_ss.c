
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_dev {int reg_lock; } ;
struct rtsx_chip {struct rtsx_dev* rtsx; } ;


 int rtsx_enter_ss (struct rtsx_chip*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void rtsx_exclusive_enter_ss(struct rtsx_chip *chip)
{
 struct rtsx_dev *dev = chip->rtsx;

 spin_lock(&dev->reg_lock);
 rtsx_enter_ss(chip);
 spin_unlock(&dev->reg_lock);
}
