
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct beiscsi_hba {scalar_t__ db_va; } ;


 int DB_EQ_CLR_SHIFT ;
 int DB_EQ_EVNT_SHIFT ;
 unsigned int DB_EQ_HIGH_FEILD_SHIFT ;
 unsigned int DB_EQ_HIGH_SET_SHIFT ;
 unsigned int DB_EQ_NUM_POPPED_SHIFT ;
 scalar_t__ DB_EQ_OFFSET ;
 int DB_EQ_REARM_SHIFT ;
 unsigned int DB_EQ_RING_ID_HIGH_MASK ;
 unsigned int DB_EQ_RING_ID_LOW_MASK ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void hwi_ring_eq_db(struct beiscsi_hba *phba,
      unsigned int id, unsigned int clr_interrupt,
      unsigned int num_processed,
      unsigned char rearm, unsigned char event)
{
 u32 val = 0;

 if (rearm)
  val |= 1 << DB_EQ_REARM_SHIFT;
 if (clr_interrupt)
  val |= 1 << DB_EQ_CLR_SHIFT;
 if (event)
  val |= 1 << DB_EQ_EVNT_SHIFT;

 val |= num_processed << DB_EQ_NUM_POPPED_SHIFT;

 val |= (id & DB_EQ_RING_ID_LOW_MASK);


 val |= (((id >> DB_EQ_HIGH_FEILD_SHIFT) &
    DB_EQ_RING_ID_HIGH_MASK)
    << DB_EQ_HIGH_SET_SHIFT);

 iowrite32(val, phba->db_va + DB_EQ_OFFSET);
}
