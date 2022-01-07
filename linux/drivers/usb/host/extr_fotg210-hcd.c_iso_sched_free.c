
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_iso_stream {int free_list; } ;
struct fotg210_iso_sched {int td_list; } ;


 int kfree (struct fotg210_iso_sched*) ;
 int list_splice (int *,int *) ;

__attribute__((used)) static void iso_sched_free(struct fotg210_iso_stream *stream,
  struct fotg210_iso_sched *iso_sched)
{
 if (!iso_sched)
  return;

 list_splice(&iso_sched->td_list, &stream->free_list);
 kfree(iso_sched);
}
