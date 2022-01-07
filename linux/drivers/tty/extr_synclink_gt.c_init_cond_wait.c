
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_wait {unsigned int data; int wait; int q; } ;


 int current ;
 int init_waitqueue_entry (int *,int ) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static void init_cond_wait(struct cond_wait *w, unsigned int data)
{
 init_waitqueue_head(&w->q);
 init_waitqueue_entry(&w->wait, current);
 w->data = data;
}
