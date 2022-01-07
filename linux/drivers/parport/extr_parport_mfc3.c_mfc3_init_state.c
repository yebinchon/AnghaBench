
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int datadir; int statusdir; scalar_t__ status; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ amiga; } ;
struct parport_state {TYPE_2__ u; } ;
struct pardevice {int dummy; } ;



__attribute__((used)) static void mfc3_init_state(struct pardevice *dev, struct parport_state *s)
{
 s->u.amiga.data = 0;
 s->u.amiga.datadir = 255;
 s->u.amiga.status = 0;
 s->u.amiga.statusdir = 0xe0;
}
