
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cq_enet_wq_desc {int dummy; } ;
struct cq_desc {int dummy; } ;


 int cq_desc_dec (struct cq_desc*,int *,int *,int *,int *) ;

__attribute__((used)) static inline void cq_enet_wq_desc_dec(struct cq_enet_wq_desc *desc,
 u8 *type, u8 *color, u16 *q_number, u16 *completed_index)
{
 cq_desc_dec((struct cq_desc *)desc, type,
  color, q_number, completed_index);
}
