
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* driver; scalar_t__ index; } ;
struct cardstate {int dummy; } ;
struct TYPE_2__ {scalar_t__ minor_start; } ;


 struct cardstate* gigaset_get_cs_by_minor (scalar_t__) ;

struct cardstate *gigaset_get_cs_by_tty(struct tty_struct *tty)
{
 return gigaset_get_cs_by_minor(tty->index + tty->driver->minor_start);
}
