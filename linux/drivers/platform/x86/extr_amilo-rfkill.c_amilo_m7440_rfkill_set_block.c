
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int EIO ;
 int M7440_PORT1 ;
 int M7440_PORT2 ;
 scalar_t__ M7440_RADIO_OFF1 ;
 scalar_t__ M7440_RADIO_OFF2 ;
 scalar_t__ M7440_RADIO_ON1 ;
 scalar_t__ M7440_RADIO_ON2 ;
 scalar_t__ inb (int ) ;
 int outb (scalar_t__,int ) ;

__attribute__((used)) static int amilo_m7440_rfkill_set_block(void *data, bool blocked)
{
 u8 val1 = blocked ? M7440_RADIO_OFF1 : M7440_RADIO_ON1;
 u8 val2 = blocked ? M7440_RADIO_OFF2 : M7440_RADIO_ON2;

 outb(val1, M7440_PORT1);
 outb(val2, M7440_PORT2);


 if (inb(M7440_PORT1) != val1 || inb(M7440_PORT2) != val2)
  return -EIO;

 return 0;
}
