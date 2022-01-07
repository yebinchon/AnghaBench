
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cq_exch_wq_desc {int exch_status; } ;
struct cq_desc {int dummy; } ;


 int CQ_EXCH_WQ_STATUS_MASK ;
 int cq_desc_dec (struct cq_desc*,int*,int*,int *,int *) ;

__attribute__((used)) static inline void cq_exch_wq_desc_dec(struct cq_exch_wq_desc *desc_ptr,
           u8 *type,
           u8 *color,
           u16 *q_number,
           u16 *completed_index,
           u8 *exch_status)
{
 cq_desc_dec((struct cq_desc *)desc_ptr, type,
      color, q_number, completed_index);
 *exch_status = desc_ptr->exch_status & CQ_EXCH_WQ_STATUS_MASK;
}
