
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned char timeout; } ;
typedef enum chips { ____Placeholder_chips } chips ;


 int W83627HF_LD_WDT ;
 int cr_wdt_control ;
 int cr_wdt_csr ;
 int cr_wdt_timeout ;
 scalar_t__ early_disable ;
 int pr_info (char*,unsigned char) ;
 int pr_warn (char*) ;
 int superio_enter () ;
 int superio_exit () ;
 int superio_inb (int) ;
 int superio_outb (int,unsigned char) ;
 int superio_select (int ) ;
__attribute__((used)) static int w83627hf_init(struct watchdog_device *wdog, enum chips chip)
{
 int ret;
 unsigned char t;

 ret = superio_enter();
 if (ret)
  return ret;

 superio_select(W83627HF_LD_WDT);


 t = superio_inb(0x30);
 if (!(t & 0x01))
  superio_outb(0x30, t | 0x01);

 switch (chip) {
 case 137:
 case 136:
  t = superio_inb(0x2B) & ~0x10;
  superio_outb(0x2B, t);
  break;
 case 129:

  t = superio_inb(0x29) & ~0x60;
  t |= 0x20;
  superio_outb(0x29, t);
  break;
 case 128:

  t = superio_inb(0x2b) & ~0x04;
  superio_outb(0x2b, t);
  break;
 case 135:
  t = (superio_inb(0x2B) & ~0x08) | 0x04;
  superio_outb(0x2B, t);
  break;
 case 140:
 case 139:
  t = superio_inb(0x2D) & ~0x01;
  superio_outb(0x2D, t);
  t = superio_inb(cr_wdt_control);
  t |= 0x02;

  superio_outb(cr_wdt_control, t);
  break;
 case 133:
  break;
 case 130:
  t = superio_inb(0x2C) & ~0x80;
  superio_outb(0x2C, t);
  break;
 case 138:
 case 134:
 case 132:
 case 131:
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 149:






  t = superio_inb(cr_wdt_control);
  t |= 0x02;

  superio_outb(cr_wdt_control, t);
  break;
 default:
  break;
 }

 t = superio_inb(cr_wdt_timeout);
 if (t != 0) {
  if (early_disable) {
   pr_warn("Stopping previously enabled watchdog until userland kicks in\n");
   superio_outb(cr_wdt_timeout, 0);
  } else {
   pr_info("Watchdog already running. Resetting timeout to %d sec\n",
    wdog->timeout);
   superio_outb(cr_wdt_timeout, wdog->timeout);
  }
 }


 t = superio_inb(cr_wdt_control) & ~0x0C;
 superio_outb(cr_wdt_control, t);


 t = superio_inb(cr_wdt_csr) & ~0xD0;
 superio_outb(cr_wdt_csr, t);

 superio_exit();

 return 0;
}
