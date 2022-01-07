
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int waiting; TYPE_4__* cur_cmd; TYPE_2__* dev; int base; } ;
typedef TYPE_5__ ppa_struct ;
struct TYPE_9__ {int phase; } ;
struct TYPE_10__ {TYPE_3__ SCp; } ;
struct TYPE_8__ {TYPE_1__* port; } ;
struct TYPE_7__ {int base; } ;


 int wake_up (int ) ;

__attribute__((used)) static void got_it(ppa_struct *dev)
{
 dev->base = dev->dev->port->base;
 if (dev->cur_cmd)
  dev->cur_cmd->SCp.phase = 1;
 else
  wake_up(dev->waiting);
}
