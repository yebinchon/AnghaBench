
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int ETIMEDOUT ;
 int ql_sem_trylock (struct ql_adapter*,int ) ;
 int udelay (int) ;

int ql_sem_spinlock(struct ql_adapter *qdev, u32 sem_mask)
{
 unsigned int wait_count = 30;
 do {
  if (!ql_sem_trylock(qdev, sem_mask))
   return 0;
  udelay(100);
 } while (--wait_count);
 return -ETIMEDOUT;
}
