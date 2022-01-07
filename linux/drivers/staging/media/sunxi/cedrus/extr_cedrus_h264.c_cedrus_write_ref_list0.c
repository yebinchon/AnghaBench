
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_h264_slice_params {scalar_t__ num_ref_idx_l0_active_minus1; int ref_pic_list0; } ;
struct TYPE_2__ {struct v4l2_ctrl_h264_slice_params* slice_params; } ;
struct cedrus_run {TYPE_1__ h264; } ;
struct cedrus_ctx {int dummy; } ;


 int CEDRUS_SRAM_H264_REF_LIST_0 ;
 int _cedrus_write_ref_list (struct cedrus_ctx*,struct cedrus_run*,int ,scalar_t__,int ) ;

__attribute__((used)) static void cedrus_write_ref_list0(struct cedrus_ctx *ctx,
       struct cedrus_run *run)
{
 const struct v4l2_ctrl_h264_slice_params *slice = run->h264.slice_params;

 _cedrus_write_ref_list(ctx, run,
          slice->ref_pic_list0,
          slice->num_ref_idx_l0_active_minus1 + 1,
          CEDRUS_SRAM_H264_REF_LIST_0);
}
