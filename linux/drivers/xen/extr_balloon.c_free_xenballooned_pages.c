
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int target_unpopulated; } ;


 int balloon_append (struct page*) ;
 int balloon_mutex ;
 TYPE_1__ balloon_stats ;
 int balloon_worker ;
 scalar_t__ current_credit () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int ) ;

void free_xenballooned_pages(int nr_pages, struct page **pages)
{
 int i;

 mutex_lock(&balloon_mutex);

 for (i = 0; i < nr_pages; i++) {
  if (pages[i])
   balloon_append(pages[i]);
 }

 balloon_stats.target_unpopulated -= nr_pages;


 if (current_credit())
  schedule_delayed_work(&balloon_worker, 0);

 mutex_unlock(&balloon_mutex);
}
