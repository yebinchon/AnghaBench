
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tape_request {scalar_t__ op; int rescnt; } ;
struct tape_device {int dummy; } ;
struct TYPE_3__ {int dstat; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct irb {TYPE_2__ scsw; } ;


 int DBF_EVENT (int,char*) ;
 int DEV_STAT_ATTENTION ;
 int DEV_STAT_CHN_END ;
 int DEV_STAT_DEV_END ;
 int DEV_STAT_UNIT_CHECK ;
 int DEV_STAT_UNIT_EXCEP ;
 int ENOSPC ;
 int TAPE_IO_PENDING ;
 int TAPE_IO_STOP ;
 scalar_t__ TO_BSB ;
 scalar_t__ TO_FSB ;
 scalar_t__ TO_WRI ;
 int tape_3590_done (struct tape_device*,struct tape_request*) ;
 int tape_3590_erp_failed (struct tape_device*,struct tape_request*,struct irb*,int ) ;
 int tape_3590_unit_check (struct tape_device*,struct tape_request*,struct irb*) ;
 int tape_3590_unsolicited_irq (struct tape_device*,struct irb*) ;
 int tape_dump_sense_dbf (struct tape_device*,struct tape_request*,struct irb*) ;

__attribute__((used)) static int
tape_3590_irq(struct tape_device *device, struct tape_request *request,
       struct irb *irb)
{
 if (request == ((void*)0))
  return tape_3590_unsolicited_irq(device, irb);

 if ((irb->scsw.cmd.dstat & DEV_STAT_UNIT_EXCEP) &&
     (irb->scsw.cmd.dstat & DEV_STAT_DEV_END) &&
     (request->op == TO_WRI)) {

  DBF_EVENT(2, "End of volume\n");
  return tape_3590_erp_failed(device, request, irb, -ENOSPC);
 }

 if (irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK)
  return tape_3590_unit_check(device, request, irb);

 if (irb->scsw.cmd.dstat & DEV_STAT_DEV_END) {
  if (irb->scsw.cmd.dstat == DEV_STAT_UNIT_EXCEP) {
   if (request->op == TO_FSB || request->op == TO_BSB)
    request->rescnt++;
   else
    DBF_EVENT(5, "Unit Exception!\n");
  }

  return tape_3590_done(device, request);
 }

 if (irb->scsw.cmd.dstat & DEV_STAT_CHN_END) {
  DBF_EVENT(2, "channel end\n");
  return TAPE_IO_PENDING;
 }

 if (irb->scsw.cmd.dstat & DEV_STAT_ATTENTION) {
  DBF_EVENT(2, "Unit Attention when busy..\n");
  return TAPE_IO_PENDING;
 }

 DBF_EVENT(6, "xunknownirq\n");
 tape_dump_sense_dbf(device, request, irb);
 return TAPE_IO_STOP;
}
