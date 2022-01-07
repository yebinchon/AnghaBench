
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asd_ha_struct {int dummy; } ;


 int CTXMEMSIZE ;
 int LmMnINT (int ,int ) ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;

__attribute__((used)) static inline u32 asd_get_cmdctx_size(struct asd_ha_struct *asd_ha)
{

 u32 ctxmemsize = asd_read_reg_dword(asd_ha, LmMnINT(0,0)) & CTXMEMSIZE;
 return ctxmemsize ? 65536 : 32768;
}
