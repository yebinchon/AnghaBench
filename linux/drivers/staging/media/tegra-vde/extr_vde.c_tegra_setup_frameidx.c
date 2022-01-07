
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct video_frame {int dummy; } ;
struct tegra_vde {int dummy; } ;


 int tegra_vde_setup_frameid (struct tegra_vde*,struct video_frame*,unsigned int,int ,int ) ;

__attribute__((used)) static void tegra_setup_frameidx(struct tegra_vde *vde,
     struct video_frame *frames,
     unsigned int frames_nb,
     u32 mbs_width, u32 mbs_height)
{
 unsigned int idx;

 for (idx = 0; idx < frames_nb; idx++)
  tegra_vde_setup_frameid(vde, &frames[idx], idx,
     mbs_width, mbs_height);

 for (; idx < 17; idx++)
  tegra_vde_setup_frameid(vde, ((void*)0), idx, 0, 0);
}
