
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_tape {TYPE_3__* stats; TYPE_2__* buffer; } ;
struct request {int dummy; } ;
typedef int ktime_t ;
struct TYPE_8__ {scalar_t__* cmd; scalar_t__ result; } ;
struct TYPE_7__ {int in_flight; int other_cnt; int tot_io_time; int other_time; int read_byte_cnt; int last_read_size; int resid_cnt; int read_cnt; int tot_read_time; int read_time; int write_byte_cnt; int last_write_size; int write_cnt; int tot_write_time; int write_time; } ;
struct TYPE_5__ {scalar_t__ residual; } ;
struct TYPE_6__ {TYPE_1__ cmdstat; } ;


 scalar_t__ READ_6 ;
 scalar_t__ WRITE_6 ;
 int atomic64_add (scalar_t__,int *) ;
 int atomic64_dec (int *) ;
 int atomic64_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 TYPE_4__* scsi_req (struct request*) ;

__attribute__((used)) static void st_do_stats(struct scsi_tape *STp, struct request *req)
{
 ktime_t now;

 now = ktime_get();
 if (scsi_req(req)->cmd[0] == WRITE_6) {
  now = ktime_sub(now, STp->stats->write_time);
  atomic64_add(ktime_to_ns(now), &STp->stats->tot_write_time);
  atomic64_add(ktime_to_ns(now), &STp->stats->tot_io_time);
  atomic64_inc(&STp->stats->write_cnt);
  if (scsi_req(req)->result) {
   atomic64_add(atomic_read(&STp->stats->last_write_size)
    - STp->buffer->cmdstat.residual,
    &STp->stats->write_byte_cnt);
   if (STp->buffer->cmdstat.residual > 0)
    atomic64_inc(&STp->stats->resid_cnt);
  } else
   atomic64_add(atomic_read(&STp->stats->last_write_size),
    &STp->stats->write_byte_cnt);
 } else if (scsi_req(req)->cmd[0] == READ_6) {
  now = ktime_sub(now, STp->stats->read_time);
  atomic64_add(ktime_to_ns(now), &STp->stats->tot_read_time);
  atomic64_add(ktime_to_ns(now), &STp->stats->tot_io_time);
  atomic64_inc(&STp->stats->read_cnt);
  if (scsi_req(req)->result) {
   atomic64_add(atomic_read(&STp->stats->last_read_size)
    - STp->buffer->cmdstat.residual,
    &STp->stats->read_byte_cnt);
   if (STp->buffer->cmdstat.residual > 0)
    atomic64_inc(&STp->stats->resid_cnt);
  } else
   atomic64_add(atomic_read(&STp->stats->last_read_size),
    &STp->stats->read_byte_cnt);
 } else {
  now = ktime_sub(now, STp->stats->other_time);
  atomic64_add(ktime_to_ns(now), &STp->stats->tot_io_time);
  atomic64_inc(&STp->stats->other_cnt);
 }
 atomic64_dec(&STp->stats->in_flight);
}
