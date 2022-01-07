
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int statusdir; int status; int datadir; int data; } ;
struct TYPE_5__ {TYPE_1__ amiga; } ;
struct parport_state {TYPE_2__ u; } ;
struct parport {int dummy; } ;
struct TYPE_6__ {int cra; int pddrb; int ppra; int crb; int pprb; } ;


 int PIA_DDR ;
 TYPE_3__* pia (struct parport*) ;

__attribute__((used)) static void mfc3_restore_state(struct parport *p, struct parport_state *s)
{
 pia(p)->pprb = s->u.amiga.data;
 pia(p)->crb &= ~PIA_DDR;
 pia(p)->pddrb = s->u.amiga.datadir;
 pia(p)->crb |= PIA_DDR;
 pia(p)->ppra = s->u.amiga.status;
 pia(p)->cra &= ~PIA_DDR;
 pia(p)->pddrb = s->u.amiga.statusdir;
 pia(p)->cra |= PIA_DDR;
}
