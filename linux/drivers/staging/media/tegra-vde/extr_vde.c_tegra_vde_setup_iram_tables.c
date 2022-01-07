
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct video_frame {int frame_num; int aux_addr; int flags; } ;
struct tegra_vde {int dummy; } ;


 int FLAG_B_FRAME ;
 int tegra_vde_setup_iram_entry (struct tegra_vde*,int,unsigned int,int,int) ;
 int trace_vde_ref_l0 (int) ;
 int trace_vde_ref_l1 (int,unsigned int) ;

__attribute__((used)) static void tegra_vde_setup_iram_tables(struct tegra_vde *vde,
     struct video_frame *dpb_frames,
     unsigned int ref_frames_nb,
     unsigned int with_earlier_poc_nb)
{
 struct video_frame *frame;
 u32 value, aux_addr;
 int with_later_poc_nb;
 unsigned int i, k;

 trace_vde_ref_l0(dpb_frames[0].frame_num);

 for (i = 0; i < 16; i++) {
  if (i < ref_frames_nb) {
   frame = &dpb_frames[i + 1];

   aux_addr = frame->aux_addr;

   value = (i + 1) << 26;
   value |= !(frame->flags & FLAG_B_FRAME) << 25;
   value |= 1 << 24;
   value |= frame->frame_num;
  } else {
   aux_addr = 0x6ADEAD00;
   value = 0;
  }

  tegra_vde_setup_iram_entry(vde, 0, i, value, aux_addr);
  tegra_vde_setup_iram_entry(vde, 1, i, value, aux_addr);
  tegra_vde_setup_iram_entry(vde, 2, i, value, aux_addr);
  tegra_vde_setup_iram_entry(vde, 3, i, value, aux_addr);
 }

 if (!(dpb_frames[0].flags & FLAG_B_FRAME))
  return;

 if (with_earlier_poc_nb >= ref_frames_nb)
  return;

 with_later_poc_nb = ref_frames_nb - with_earlier_poc_nb;

 trace_vde_ref_l1(with_later_poc_nb, with_earlier_poc_nb);

 for (i = 0, k = with_earlier_poc_nb; i < with_later_poc_nb; i++, k++) {
  frame = &dpb_frames[k + 1];

  aux_addr = frame->aux_addr;

  value = (k + 1) << 26;
  value |= !(frame->flags & FLAG_B_FRAME) << 25;
  value |= 1 << 24;
  value |= frame->frame_num;

  tegra_vde_setup_iram_entry(vde, 2, i, value, aux_addr);
 }

 for (k = 0; i < ref_frames_nb; i++, k++) {
  frame = &dpb_frames[k + 1];

  aux_addr = frame->aux_addr;

  value = (k + 1) << 26;
  value |= !(frame->flags & FLAG_B_FRAME) << 25;
  value |= 1 << 24;
  value |= frame->frame_num;

  tegra_vde_setup_iram_entry(vde, 2, i, value, aux_addr);
 }
}
