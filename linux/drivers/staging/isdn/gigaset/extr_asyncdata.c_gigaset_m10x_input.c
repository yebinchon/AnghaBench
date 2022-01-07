
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inbuf_t {scalar_t__ head; scalar_t__ tail; int inputstate; struct cardstate* cs; } ;
struct cardstate {scalar_t__ mstate; TYPE_1__* bcs; } ;
struct TYPE_2__ {scalar_t__ proto2; } ;


 int DEBUG_INTR ;
 int INS_command ;
 scalar_t__ L2_HDLC ;
 scalar_t__ MS_LOCKED ;
 unsigned int RBUFSIZE ;
 unsigned int cmd_loop (unsigned int,struct inbuf_t*) ;
 int gig_dbg (int ,char*,unsigned int,...) ;
 int handle_dle (struct inbuf_t*) ;
 unsigned int hdlc_loop (unsigned int,struct inbuf_t*) ;
 unsigned int iraw_loop (unsigned int,struct inbuf_t*) ;
 unsigned int lock_loop (unsigned int,struct inbuf_t*) ;

void gigaset_m10x_input(struct inbuf_t *inbuf)
{
 struct cardstate *cs = inbuf->cs;
 unsigned numbytes, procbytes;

 gig_dbg(DEBUG_INTR, "buffer state: %u -> %u", inbuf->head, inbuf->tail);

 while (inbuf->head != inbuf->tail) {

  handle_dle(inbuf);


  numbytes = (inbuf->head > inbuf->tail ?
       RBUFSIZE : inbuf->tail) - inbuf->head;
  gig_dbg(DEBUG_INTR, "processing %u bytes", numbytes);





  if (cs->mstate == MS_LOCKED)
   procbytes = lock_loop(numbytes, inbuf);
  else if (inbuf->inputstate & INS_command)
   procbytes = cmd_loop(numbytes, inbuf);
  else if (cs->bcs->proto2 == L2_HDLC)
   procbytes = hdlc_loop(numbytes, inbuf);
  else
   procbytes = iraw_loop(numbytes, inbuf);
  inbuf->head += procbytes;


  if (inbuf->head >= RBUFSIZE)
   inbuf->head = 0;

  gig_dbg(DEBUG_INTR, "head set to %u", inbuf->head);
 }
}
