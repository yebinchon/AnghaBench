
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf_t {unsigned int head; unsigned int tail; unsigned char* data; struct cardstate* cs; } ;
struct cardstate {scalar_t__ mstate; } ;


 int DEBUG_INTR ;
 int DEBUG_LOCKCMD ;
 scalar_t__ MS_LOCKED ;
 unsigned int RBUFSIZE ;
 int cmd_loop (unsigned char*,unsigned int,struct inbuf_t*) ;
 int gig_dbg (int ,char*,unsigned int,...) ;
 int gigaset_dbg_buffer (int ,char*,unsigned int,unsigned char*) ;
 int gigaset_if_receive (struct cardstate*,unsigned char*,unsigned int) ;

void gigaset_isoc_input(struct inbuf_t *inbuf)
{
 struct cardstate *cs = inbuf->cs;
 unsigned tail, head, numbytes;
 unsigned char *src;

 head = inbuf->head;
 while (head != (tail = inbuf->tail)) {
  gig_dbg(DEBUG_INTR, "buffer state: %u -> %u", head, tail);
  if (head > tail)
   tail = RBUFSIZE;
  src = inbuf->data + head;
  numbytes = tail - head;
  gig_dbg(DEBUG_INTR, "processing %u bytes", numbytes);

  if (cs->mstate == MS_LOCKED) {
   gigaset_dbg_buffer(DEBUG_LOCKCMD, "received response",
        numbytes, src);
   gigaset_if_receive(inbuf->cs, src, numbytes);
  } else {
   cmd_loop(src, numbytes, inbuf);
  }

  head += numbytes;
  if (head == RBUFSIZE)
   head = 0;
  gig_dbg(DEBUG_INTR, "setting head to %u", head);
  inbuf->head = head;
 }
}
