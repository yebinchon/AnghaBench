
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_pcie_rc_reset {void* apb; void* port; void* phy; } ;
struct meson_pcie {struct meson_pcie_rc_reset mrst; } ;


 scalar_t__ IS_ERR (void*) ;
 int PCIE_NORMAL_RESET ;
 int PCIE_SHARED_RESET ;
 int PTR_ERR (void*) ;
 void* meson_pcie_get_reset (struct meson_pcie*,char*,int ) ;
 int reset_control_deassert (void*) ;

__attribute__((used)) static int meson_pcie_get_resets(struct meson_pcie *mp)
{
 struct meson_pcie_rc_reset *mrst = &mp->mrst;

 mrst->phy = meson_pcie_get_reset(mp, "phy", PCIE_SHARED_RESET);
 if (IS_ERR(mrst->phy))
  return PTR_ERR(mrst->phy);
 reset_control_deassert(mrst->phy);

 mrst->port = meson_pcie_get_reset(mp, "port", PCIE_NORMAL_RESET);
 if (IS_ERR(mrst->port))
  return PTR_ERR(mrst->port);
 reset_control_deassert(mrst->port);

 mrst->apb = meson_pcie_get_reset(mp, "apb", PCIE_SHARED_RESET);
 if (IS_ERR(mrst->apb))
  return PTR_ERR(mrst->apb);
 reset_control_deassert(mrst->apb);

 return 0;
}
