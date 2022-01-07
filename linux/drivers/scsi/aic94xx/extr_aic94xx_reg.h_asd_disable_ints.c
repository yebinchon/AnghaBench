
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int dummy; } ;


 int CHIMINTEN ;
 int RST_CHIMINTEN ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int ) ;

__attribute__((used)) static inline void asd_disable_ints(struct asd_ha_struct *asd_ha)
{
 asd_write_reg_dword(asd_ha, CHIMINTEN, RST_CHIMINTEN);
}
