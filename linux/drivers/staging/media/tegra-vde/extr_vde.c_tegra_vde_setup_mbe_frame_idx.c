
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct tegra_vde {int mbe; } ;


 int tegra_vde_wait_mbe (struct tegra_vde*) ;
 int tegra_vde_writel (struct tegra_vde*,unsigned int,int ,int) ;

__attribute__((used)) static int tegra_vde_setup_mbe_frame_idx(struct tegra_vde *vde,
      unsigned int refs_nb,
      bool setup_refs)
{
 u32 frame_idx_enb_mask = 0;
 u32 value;
 unsigned int frame_idx;
 unsigned int idx;
 int err;

 tegra_vde_writel(vde, 0xD0000000 | (0 << 23), vde->mbe, 0x80);
 tegra_vde_writel(vde, 0xD0200000 | (0 << 23), vde->mbe, 0x80);

 err = tegra_vde_wait_mbe(vde);
 if (err)
  return err;

 if (!setup_refs)
  return 0;

 for (idx = 0, frame_idx = 1; idx < refs_nb; idx++, frame_idx++) {
  tegra_vde_writel(vde, 0xD0000000 | (frame_idx << 23),
     vde->mbe, 0x80);
  tegra_vde_writel(vde, 0xD0200000 | (frame_idx << 23),
     vde->mbe, 0x80);

  frame_idx_enb_mask |= frame_idx << (6 * (idx % 4));

  if (idx % 4 == 3 || idx == refs_nb - 1) {
   value = 0xC0000000;
   value |= (idx >> 2) << 24;
   value |= frame_idx_enb_mask;

   tegra_vde_writel(vde, value, vde->mbe, 0x80);

   err = tegra_vde_wait_mbe(vde);
   if (err)
    return err;

   frame_idx_enb_mask = 0;
  }
 }

 return 0;
}
