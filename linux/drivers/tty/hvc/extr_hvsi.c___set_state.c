
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_struct {int state; int stateq; } ;


 int print_state (struct hvsi_struct*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static inline void __set_state(struct hvsi_struct *hp, int state)
{
 hp->state = state;
 print_state(hp);
 wake_up_all(&hp->stateq);
}
