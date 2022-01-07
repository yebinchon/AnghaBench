
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wq_entry {int c; } ;
struct optee_wait_queue {int dummy; } ;


 int complete (int *) ;
 struct wq_entry* wq_entry_get (struct optee_wait_queue*,int ) ;

__attribute__((used)) static void wq_wakeup(struct optee_wait_queue *wq, u32 key)
{
 struct wq_entry *w = wq_entry_get(wq, key);

 if (w)
  complete(&w->c);
}
