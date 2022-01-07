
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnttab_free_callback {scalar_t__ count; struct gnttab_free_callback* next; int arg; int (* fn ) (int ) ;} ;


 struct gnttab_free_callback* gnttab_free_callback_list ;
 scalar_t__ gnttab_free_count ;
 int stub1 (int ) ;

__attribute__((used)) static void do_free_callbacks(void)
{
 struct gnttab_free_callback *callback, *next;

 callback = gnttab_free_callback_list;
 gnttab_free_callback_list = ((void*)0);

 while (callback != ((void*)0)) {
  next = callback->next;
  if (gnttab_free_count >= callback->count) {
   callback->next = ((void*)0);
   callback->fn(callback->arg);
  } else {
   callback->next = gnttab_free_callback_list;
   gnttab_free_callback_list = callback;
  }
  callback = next;
 }
}
