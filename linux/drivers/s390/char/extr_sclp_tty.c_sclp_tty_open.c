
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int * driver_data; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ low_latency; } ;


 TYPE_1__ sclp_port ;
 int tty_port_tty_set (TYPE_1__*,struct tty_struct*) ;

__attribute__((used)) static int
sclp_tty_open(struct tty_struct *tty, struct file *filp)
{
 tty_port_tty_set(&sclp_port, tty);
 tty->driver_data = ((void*)0);
 sclp_port.low_latency = 0;
 return 0;
}
