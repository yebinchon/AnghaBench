
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_td {int td_list; } ;


 int kfree (struct c67x00_td*) ;
 int list_del_init (int *) ;

__attribute__((used)) static inline void c67x00_release_td(struct c67x00_td *td)
{
 list_del_init(&td->td_list);
 kfree(td);
}
