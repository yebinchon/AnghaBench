
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct controller_priv {int ctrl_lock; scalar_t__ cpld_base; int control_reg; } ;


 scalar_t__ CPLD_CONTROL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (int,int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void do_reset(struct controller_priv *cd, u8 rst_bit, bool reset)
{
 mutex_lock(&cd->ctrl_lock);




 if (reset)
  cd->control_reg &= ~rst_bit;
 else
  cd->control_reg |= rst_bit;
 writeb(cd->control_reg, cd->cpld_base + CPLD_CONTROL);
 if (reset)
  usleep_range(100, 200);
 mutex_unlock(&cd->ctrl_lock);
}
