
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int statusflags; } ;


 int LOWWAIT ;
 int MoxaPortWriteData (struct tty_struct*,unsigned char const*,int) ;
 int moxa_lock ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int moxa_write(struct tty_struct *tty,
        const unsigned char *buf, int count)
{
 struct moxa_port *ch = tty->driver_data;
 unsigned long flags;
 int len;

 if (ch == ((void*)0))
  return 0;

 spin_lock_irqsave(&moxa_lock, flags);
 len = MoxaPortWriteData(tty, buf, count);
 spin_unlock_irqrestore(&moxa_lock, flags);

 set_bit(LOWWAIT, &ch->statusflags);
 return len;
}
