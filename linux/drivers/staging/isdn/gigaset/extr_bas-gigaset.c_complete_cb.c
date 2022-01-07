
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdbuf_t {scalar_t__ wake_tasklet; scalar_t__ len; int * prev; struct cmdbuf_t* next; } ;
struct cardstate {scalar_t__ curlen; int * lastcmdbuf; struct cmdbuf_t* cmdbuf; int cmdbytes; } ;


 int DEBUG_OUTPUT ;
 int gig_dbg (int ,char*,scalar_t__,int ) ;
 int kfree (struct cmdbuf_t*) ;
 int tasklet_schedule (scalar_t__) ;

__attribute__((used)) static void complete_cb(struct cardstate *cs)
{
 struct cmdbuf_t *cb = cs->cmdbuf;


 cs->cmdbytes -= cs->curlen;
 gig_dbg(DEBUG_OUTPUT, "write_command: sent %u bytes, %u left",
  cs->curlen, cs->cmdbytes);
 if (cb->next != ((void*)0)) {
  cs->cmdbuf = cb->next;
  cs->cmdbuf->prev = ((void*)0);
  cs->curlen = cs->cmdbuf->len;
 } else {
  cs->cmdbuf = ((void*)0);
  cs->lastcmdbuf = ((void*)0);
  cs->curlen = 0;
 }

 if (cb->wake_tasklet)
  tasklet_schedule(cb->wake_tasklet);

 kfree(cb);
}
