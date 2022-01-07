
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_irq {int state; } ;
typedef enum qdio_irq_states { ____Placeholder_qdio_irq_states } qdio_irq_states ;


 int DBF_DEV_EVENT (int ,struct qdio_irq*,char*,int) ;
 int DBF_INFO ;
 int mb () ;

__attribute__((used)) static inline void qdio_set_state(struct qdio_irq *irq_ptr,
      enum qdio_irq_states state)
{
 DBF_DEV_EVENT(DBF_INFO, irq_ptr, "newstate: %1d", state);

 irq_ptr->state = state;
 mb();
}
