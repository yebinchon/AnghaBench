
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct TYPE_4__ {scalar_t__ g450dac; } ;
struct matrox_fb_info {TYPE_3__ altout; TYPE_2__* outputs; TYPE_1__ devflags; } ;
struct TYPE_5__ {void* mode; int * data; int * output; void* src; } ;


 void* MATROXFB_OUTPUT_MODE_MONITOR ;
 void* MATROXFB_SRC_NONE ;
 int down_write (int *) ;
 int up_write (int *) ;

void matroxfb_g450_shutdown(struct matrox_fb_info *minfo)
{
 if (minfo->devflags.g450dac) {
  down_write(&minfo->altout.lock);
  minfo->outputs[1].src = MATROXFB_SRC_NONE;
  minfo->outputs[1].output = ((void*)0);
  minfo->outputs[1].data = ((void*)0);
  minfo->outputs[1].mode = MATROXFB_OUTPUT_MODE_MONITOR;
  minfo->outputs[2].src = MATROXFB_SRC_NONE;
  minfo->outputs[2].output = ((void*)0);
  minfo->outputs[2].data = ((void*)0);
  minfo->outputs[2].mode = MATROXFB_OUTPUT_MODE_MONITOR;
  up_write(&minfo->altout.lock);
 }
}
