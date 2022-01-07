
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVICE_REGISTER ;
 int IO_DATA_PORT ;
 int IO_INDEX_PORT ;
 int LOCK_DATA ;
 int UNLOCK_DATA ;
 unsigned int inb_p (int ) ;
 int outb_p (int,int ) ;
 int pr_info (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spinlock ;
 int testmode ;
 int timeoutW ;

__attribute__((used)) static int wdt_start(void)
{
 unsigned long flags;

 spin_lock_irqsave(&spinlock, flags);


 outb_p(UNLOCK_DATA, IO_INDEX_PORT);
 outb_p(UNLOCK_DATA, IO_INDEX_PORT);







 outb_p(DEVICE_REGISTER, IO_INDEX_PORT);
 outb_p(0x08, IO_DATA_PORT);
 outb_p(0xF2, IO_INDEX_PORT);
 outb_p(timeoutW, IO_DATA_PORT);
 outb_p(0xF3, IO_INDEX_PORT);
 outb_p(0x08, IO_DATA_PORT);
 outb_p(0xF4, IO_INDEX_PORT);
 outb_p(0x00, IO_DATA_PORT);


 outb_p(0x30, IO_INDEX_PORT);
 outb_p(0x01, IO_DATA_PORT);
 outb_p(DEVICE_REGISTER, IO_INDEX_PORT);
 outb_p(0x07, IO_DATA_PORT);
 if (!testmode) {
  unsigned pin_map;

  outb_p(0xE6, IO_INDEX_PORT);
  outb_p(0x0A, IO_DATA_PORT);
  outb_p(0x2C, IO_INDEX_PORT);
  pin_map = inb_p(IO_DATA_PORT);
  pin_map |= 0x10;
  pin_map &= ~(0x20);
  outb_p(0x2C, IO_INDEX_PORT);
  outb_p(pin_map, IO_DATA_PORT);
 }
 outb_p(0xE3, IO_INDEX_PORT);
 outb_p(0x08, IO_DATA_PORT);


 outb_p(0x30, IO_INDEX_PORT);
 outb_p(0x01, IO_DATA_PORT);


 outb_p(LOCK_DATA, IO_INDEX_PORT);

 spin_unlock_irqrestore(&spinlock, flags);

 pr_info("activated\n");

 return 0;
}
