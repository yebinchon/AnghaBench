
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {char* sense; } ;
struct TYPE_10__ {char* sense; } ;
struct TYPE_12__ {TYPE_3__ ddpc; TYPE_2__ iostat; } ;
struct tsb {int length; int flags; TYPE_4__ tsa; } ;
struct tcw {int dummy; } ;
struct TYPE_13__ {scalar_t__ cons; } ;
struct TYPE_14__ {TYPE_5__ erw; } ;
struct TYPE_15__ {TYPE_6__ esw0; } ;
struct TYPE_9__ {int fcxs; scalar_t__ tcw; } ;
struct TYPE_16__ {TYPE_1__ tm; } ;
struct irb {char* ecw; TYPE_7__ esw; TYPE_8__ scsw; } ;


 scalar_t__ scsw_is_tm (TYPE_8__*) ;
 struct tsb* tcw_get_tsb (struct tcw*) ;

char *dasd_get_sense(struct irb *irb)
{
 struct tsb *tsb = ((void*)0);
 char *sense = ((void*)0);

 if (scsw_is_tm(&irb->scsw) && (irb->scsw.tm.fcxs == 0x01)) {
  if (irb->scsw.tm.tcw)
   tsb = tcw_get_tsb((struct tcw *)(unsigned long)
       irb->scsw.tm.tcw);
  if (tsb && tsb->length == 64 && tsb->flags)
   switch (tsb->flags & 0x07) {
   case 1:
    sense = tsb->tsa.iostat.sense;
    break;
   case 2:
    sense = tsb->tsa.ddpc.sense;
    break;
   default:

    break;
   }
 } else if (irb->esw.esw0.erw.cons) {
  sense = irb->ecw;
 }
 return sense;
}
