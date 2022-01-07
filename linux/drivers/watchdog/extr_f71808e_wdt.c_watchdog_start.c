
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int type; int pulse_val; int lock; int sioaddr; scalar_t__ pulse_mode; } ;


 int BIT (int) ;
 int ENODEV ;
 int F71808FG_FLAG_WDOUT_EN ;
 int F71808FG_FLAG_WD_EN ;
 int F71808FG_FLAG_WD_PULSE ;
 int F71808FG_REG_WDO_CONF ;
 int F71808FG_REG_WDT_CONF ;
 int F81865_FLAG_WDOUT_EN ;
 int F81865_REG_WDO_CONF ;
 int SIO_F71808FG_LD_WDT ;
 int SIO_F81866_REG_GPIO1 ;
 int SIO_F81866_REG_PORT_SEL ;
 int SIO_REG_CLOCK_SEL ;
 int SIO_REG_ENABLE ;
 int SIO_REG_MFUNCT1 ;
 int SIO_REG_MFUNCT2 ;
 int SIO_REG_MFUNCT3 ;
 int SIO_REG_TSI_LEVEL_SEL ;


 int f71862fg_pin_configure (int ) ;







 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int superio_clear_bit (int ,int ,int) ;
 int superio_enter (int ) ;
 int superio_exit (int ) ;
 int superio_inb (int ,int ) ;
 int superio_outb (int ,int ,int) ;
 int superio_select (int ,int ) ;
 int superio_set_bit (int ,int ,int) ;
 TYPE_1__ watchdog ;
 int watchdog_keepalive () ;

__attribute__((used)) static int watchdog_start(void)
{
 int err;
 u8 tmp;


 err = watchdog_keepalive();
 if (err)
  return err;

 mutex_lock(&watchdog.lock);
 err = superio_enter(watchdog.sioaddr);
 if (err)
  goto exit_unlock;
 superio_select(watchdog.sioaddr, SIO_F71808FG_LD_WDT);


 switch (watchdog.type) {
 case 136:

  superio_clear_bit(watchdog.sioaddr, SIO_REG_MFUNCT2, 3);
  superio_clear_bit(watchdog.sioaddr, SIO_REG_MFUNCT3, 3);
  break;

 case 135:
  err = f71862fg_pin_configure(watchdog.sioaddr);
  if (err)
   goto exit_superio;
  break;

 case 134:
 case 133:

  superio_clear_bit(watchdog.sioaddr, SIO_REG_MFUNCT1, 4);
  break;

 case 132:

  superio_set_bit(watchdog.sioaddr, SIO_REG_MFUNCT1, 1);
  break;

 case 131:

  superio_outb(watchdog.sioaddr, SIO_REG_MFUNCT3,
   superio_inb(watchdog.sioaddr, SIO_REG_MFUNCT3) & 0xcf);
  break;

 case 130:

  superio_clear_bit(watchdog.sioaddr, SIO_REG_CLOCK_SEL, 3);

  superio_outb(watchdog.sioaddr, SIO_REG_TSI_LEVEL_SEL, 0x5f &
   superio_inb(watchdog.sioaddr, SIO_REG_TSI_LEVEL_SEL));
  break;

 case 129:

  superio_clear_bit(watchdog.sioaddr, SIO_REG_MFUNCT3, 5);
  break;

 case 128:






  tmp = superio_inb(watchdog.sioaddr, SIO_F81866_REG_PORT_SEL);
  tmp &= ~(BIT(3) | BIT(0));
  tmp |= BIT(2);
  superio_outb(watchdog.sioaddr, SIO_F81866_REG_PORT_SEL, tmp);

  superio_clear_bit(watchdog.sioaddr, SIO_F81866_REG_GPIO1, 5);
  break;

 default:




  err = -ENODEV;
  goto exit_superio;
 }

 superio_select(watchdog.sioaddr, SIO_F71808FG_LD_WDT);
 superio_set_bit(watchdog.sioaddr, SIO_REG_ENABLE, 0);

 if (watchdog.type == 129 || watchdog.type == 128)
  superio_set_bit(watchdog.sioaddr, F81865_REG_WDO_CONF,
    F81865_FLAG_WDOUT_EN);
 else
  superio_set_bit(watchdog.sioaddr, F71808FG_REG_WDO_CONF,
    F71808FG_FLAG_WDOUT_EN);

 superio_set_bit(watchdog.sioaddr, F71808FG_REG_WDT_CONF,
   F71808FG_FLAG_WD_EN);

 if (watchdog.pulse_mode) {

  u8 wdt_conf = superio_inb(watchdog.sioaddr,
    F71808FG_REG_WDT_CONF);


  wdt_conf = (wdt_conf & 0xfc) | (watchdog.pulse_val & 0x03);

  wdt_conf |= BIT(F71808FG_FLAG_WD_PULSE);

  superio_outb(watchdog.sioaddr, F71808FG_REG_WDT_CONF,
    wdt_conf);
 } else {

  superio_clear_bit(watchdog.sioaddr, F71808FG_REG_WDT_CONF,
    F71808FG_FLAG_WD_PULSE);
 }

exit_superio:
 superio_exit(watchdog.sioaddr);
exit_unlock:
 mutex_unlock(&watchdog.lock);

 return err;
}
