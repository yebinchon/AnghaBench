
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cq_desc {int type_color; int completed_index; int q_number; } ;


 int const CQ_DESC_COLOR_MASK ;
 int const CQ_DESC_COLOR_SHIFT ;
 int CQ_DESC_COMP_NDX_MASK ;
 int CQ_DESC_Q_NUM_MASK ;
 int const CQ_DESC_TYPE_MASK ;
 int le16_to_cpu (int ) ;
 int rmb () ;

__attribute__((used)) static inline void cq_desc_dec(const struct cq_desc *desc_arg,
 u8 *type, u8 *color, u16 *q_number, u16 *completed_index)
{
 const struct cq_desc *desc = desc_arg;
 const u8 type_color = desc->type_color;

 *color = (type_color >> CQ_DESC_COLOR_SHIFT) & CQ_DESC_COLOR_MASK;
 rmb();

 *type = type_color & CQ_DESC_TYPE_MASK;
 *q_number = le16_to_cpu(desc->q_number) & CQ_DESC_Q_NUM_MASK;
 *completed_index = le16_to_cpu(desc->completed_index) &
  CQ_DESC_COMP_NDX_MASK;
}
