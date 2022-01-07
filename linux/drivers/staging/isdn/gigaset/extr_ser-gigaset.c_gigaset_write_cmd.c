
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdbuf_t {int len; struct cmdbuf_t* next; struct cmdbuf_t* prev; int buf; } ;
struct cardstate {scalar_t__ mstate; int curlen; int lock; int write_tasklet; scalar_t__ connected; int cmdlock; struct cmdbuf_t* lastcmdbuf; int cmdbytes; struct cmdbuf_t* cmdbuf; } ;


 int DEBUG_LOCKCMD ;
 int DEBUG_TRANSCMD ;
 scalar_t__ MS_LOCKED ;
 int gigaset_dbg_buffer (int ,char*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int gigaset_write_cmd(struct cardstate *cs, struct cmdbuf_t *cb)
{
 unsigned long flags;

 gigaset_dbg_buffer(cs->mstate != MS_LOCKED ?
      DEBUG_TRANSCMD : DEBUG_LOCKCMD,
      "CMD Transmit", cb->len, cb->buf);

 spin_lock_irqsave(&cs->cmdlock, flags);
 cb->prev = cs->lastcmdbuf;
 if (cs->lastcmdbuf)
  cs->lastcmdbuf->next = cb;
 else {
  cs->cmdbuf = cb;
  cs->curlen = cb->len;
 }
 cs->cmdbytes += cb->len;
 cs->lastcmdbuf = cb;
 spin_unlock_irqrestore(&cs->cmdlock, flags);

 spin_lock_irqsave(&cs->lock, flags);
 if (cs->connected)
  tasklet_schedule(&cs->write_tasklet);
 spin_unlock_irqrestore(&cs->lock, flags);
 return cb->len;
}
