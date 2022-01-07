
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int SEM ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int ) ;

void ql_sem_unlock(struct ql_adapter *qdev, u32 sem_mask)
{
 ql_write32(qdev, SEM, sem_mask);
 ql_read32(qdev, SEM);
}
