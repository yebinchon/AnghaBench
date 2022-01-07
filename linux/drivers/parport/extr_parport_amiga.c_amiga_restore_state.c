
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; int statusdir; int datadir; int data; } ;
struct TYPE_6__ {TYPE_1__ amiga; } ;
struct parport_state {TYPE_2__ u; } ;
struct parport {int dummy; } ;
struct TYPE_8__ {int ddrb; int prb; } ;
struct TYPE_7__ {int pra; int ddra; } ;


 TYPE_4__ ciaa ;
 TYPE_3__ ciab ;
 int mb () ;

__attribute__((used)) static void amiga_restore_state(struct parport *p, struct parport_state *s)
{
 mb();
 ciaa.prb = s->u.amiga.data;
 ciaa.ddrb = s->u.amiga.datadir;
 ciab.pra |= (ciab.pra & 0xf8) | s->u.amiga.status;
 ciab.ddra |= (ciab.ddra & 0xf8) | s->u.amiga.statusdir;
 mb();
}
