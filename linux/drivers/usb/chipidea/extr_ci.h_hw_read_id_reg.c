
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int abs; } ;
struct ci_hdrc {TYPE_1__ hw_bank; } ;


 int ioread32 (int) ;

__attribute__((used)) static inline u32 hw_read_id_reg(struct ci_hdrc *ci, u32 offset, u32 mask)
{
 return ioread32(ci->hw_bank.abs + offset) & mask;
}
