
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int mb () ;
 int nvme_dbbuf_need_event (int volatile,int ,int ) ;
 int wmb () ;

__attribute__((used)) static bool nvme_dbbuf_update_and_check_event(u16 value, u32 *dbbuf_db,
           volatile u32 *dbbuf_ei)
{
 if (dbbuf_db) {
  u16 old_value;





  wmb();

  old_value = *dbbuf_db;
  *dbbuf_db = value;







  mb();

  if (!nvme_dbbuf_need_event(*dbbuf_ei, value, old_value))
   return 0;
 }

 return 1;
}
