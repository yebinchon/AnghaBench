
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ command_mode; int io_lock; scalar_t__ io_addr; } ;


 scalar_t__ DEBUG ;
 int ISA_COMMAND_TIMEOUT ;
 scalar_t__ debug ;
 int outb_p (int,scalar_t__) ;
 TYPE_1__ pcwd_private ;
 int pr_debug (char*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int ) ;

__attribute__((used)) static void unset_command_mode(void)
{

 spin_lock(&pcwd_private.io_lock);
 outb_p(0x00, pcwd_private.io_addr + 2);
 udelay(ISA_COMMAND_TIMEOUT);
 spin_unlock(&pcwd_private.io_lock);

 pcwd_private.command_mode = 0;

 if (debug >= DEBUG)
  pr_debug("command_mode=%d\n", pcwd_private.command_mode);
}
