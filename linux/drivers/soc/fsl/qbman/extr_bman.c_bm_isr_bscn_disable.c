
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_portal {int dummy; } ;


 int BM_REG_SCN (int) ;
 int bm_out (struct bm_portal*,int ,int ) ;

__attribute__((used)) static void bm_isr_bscn_disable(struct bm_portal *portal)
{
 bm_out(portal, BM_REG_SCN(0), 0);
 bm_out(portal, BM_REG_SCN(1), 0);
}
