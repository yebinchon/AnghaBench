
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcidas64_board {scalar_t__ layout; } ;
struct comedi_device {TYPE_2__* read_subdev; struct pcidas64_board* board_ptr; } ;
struct TYPE_4__ {TYPE_1__* async; int busy; } ;
struct TYPE_3__ {int cmd; } ;


 scalar_t__ LAYOUT_4020 ;
 scalar_t__ use_internal_queue_6xxx (int *) ;

__attribute__((used)) static inline int external_ai_queue_in_use(struct comedi_device *dev)
{
 const struct pcidas64_board *board = dev->board_ptr;

 if (!dev->read_subdev->busy)
  return 0;
 if (board->layout == LAYOUT_4020)
  return 0;
 else if (use_internal_queue_6xxx(&dev->read_subdev->async->cmd))
  return 0;
 return 1;
}
