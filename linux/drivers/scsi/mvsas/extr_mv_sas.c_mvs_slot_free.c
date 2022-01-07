
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {int dummy; } ;


 int RXQ_SLOT_MASK ;
 int mvs_tag_clear (struct mvs_info*,int) ;

__attribute__((used)) static void mvs_slot_free(struct mvs_info *mvi, u32 rx_desc)
{
 u32 slot_idx = rx_desc & RXQ_SLOT_MASK;
 mvs_tag_clear(mvi, slot_idx);
}
