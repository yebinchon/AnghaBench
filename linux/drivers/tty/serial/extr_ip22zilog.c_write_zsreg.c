
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zilog_channel {int control; } ;


 int ZSDELAY () ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static void write_zsreg(struct zilog_channel *channel,
   unsigned char reg, unsigned char value)
{
 writeb(reg, &channel->control);
 ZSDELAY();
 writeb(value, &channel->control);
 ZSDELAY();
}
