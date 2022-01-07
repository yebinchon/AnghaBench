
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ind; int count; } ;


 size_t TIQDIO_SHARED_IND ;
 int atomic_read (int *) ;
 TYPE_1__* q_indicators ;
 int xchg (int *,int ) ;

__attribute__((used)) static inline u32 clear_shared_ind(void)
{
 if (!atomic_read(&q_indicators[TIQDIO_SHARED_IND].count))
  return 0;
 return xchg(&q_indicators[TIQDIO_SHARED_IND].ind, 0);
}
