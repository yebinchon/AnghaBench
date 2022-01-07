; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { %struct.cedrus_dev* }
%struct.cedrus_dev = type { i32 }
%struct.cedrus_run = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }
%struct.TYPE_3__ = type { %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_decode_params* }
%struct.v4l2_ctrl_h264_sps = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_h264_pps = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_h264_slice_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_h264_decode_params = type { i64 }

@VE_H264_VLD_LEN = common dso_local global i32 0, align 4
@VE_H264_VLD_OFFSET = common dso_local global i32 0, align 4
@VE_H264_VLD_END = common dso_local global i32 0, align 4
@VE_H264_VLD_ADDR = common dso_local global i32 0, align 4
@VE_H264_VLD_ADDR_FIRST = common dso_local global i32 0, align 4
@VE_H264_VLD_ADDR_VALID = common dso_local global i32 0, align 4
@VE_H264_VLD_ADDR_LAST = common dso_local global i32 0, align 4
@VE_H264_TRIGGER_TYPE = common dso_local global i32 0, align 4
@VE_H264_TRIGGER_TYPE_INIT_SWDEC = common dso_local global i32 0, align 4
@V4L2_H264_PPS_FLAG_WEIGHTED_PRED = common dso_local global i32 0, align 4
@V4L2_H264_SLICE_TYPE_P = common dso_local global i32 0, align 4
@V4L2_H264_SLICE_TYPE_SP = common dso_local global i32 0, align 4
@V4L2_H264_SLICE_TYPE_B = common dso_local global i32 0, align 4
@V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE = common dso_local global i32 0, align 4
@VE_H264_PPS_ENTROPY_CODING_MODE = common dso_local global i32 0, align 4
@VE_H264_PPS_WEIGHTED_PRED = common dso_local global i32 0, align 4
@V4L2_H264_PPS_FLAG_CONSTRAINED_INTRA_PRED = common dso_local global i32 0, align 4
@VE_H264_PPS_CONSTRAINED_INTRA_PRED = common dso_local global i32 0, align 4
@V4L2_H264_PPS_FLAG_TRANSFORM_8X8_MODE = common dso_local global i32 0, align 4
@VE_H264_PPS_TRANSFORM_8X8_MODE = common dso_local global i32 0, align 4
@VE_H264_PPS = common dso_local global i32 0, align 4
@V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY = common dso_local global i32 0, align 4
@VE_H264_SPS_MBS_ONLY = common dso_local global i32 0, align 4
@V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD = common dso_local global i32 0, align 4
@VE_H264_SPS_MB_ADAPTIVE_FRAME_FIELD = common dso_local global i32 0, align 4
@V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE = common dso_local global i32 0, align 4
@VE_H264_SPS_DIRECT_8X8_INFERENCE = common dso_local global i32 0, align 4
@VE_H264_SPS = common dso_local global i32 0, align 4
@VE_H264_SHS_FIRST_SLICE_IN_PIC = common dso_local global i32 0, align 4
@V4L2_H264_SLICE_FLAG_FIELD_PIC = common dso_local global i32 0, align 4
@VE_H264_SHS_FIELD_PIC = common dso_local global i32 0, align 4
@V4L2_H264_SLICE_FLAG_BOTTOM_FIELD = common dso_local global i32 0, align 4
@VE_H264_SHS_BOTTOM_FIELD = common dso_local global i32 0, align 4
@V4L2_H264_SLICE_FLAG_DIRECT_SPATIAL_MV_PRED = common dso_local global i32 0, align 4
@VE_H264_SHS_DIRECT_SPATIAL_MV_PRED = common dso_local global i32 0, align 4
@VE_H264_SHS = common dso_local global i32 0, align 4
@VE_H264_SHS2_NUM_REF_IDX_ACTIVE_OVRD = common dso_local global i32 0, align 4
@VE_H264_SHS2 = common dso_local global i32 0, align 4
@VE_H264_SHS_QP = common dso_local global i32 0, align 4
@VE_H264_STATUS = common dso_local global i32 0, align 4
@VE_H264_CTRL = common dso_local global i32 0, align 4
@VE_H264_CTRL_SLICE_DECODE_INT = common dso_local global i32 0, align 4
@VE_H264_CTRL_DECODE_ERR_INT = common dso_local global i32 0, align 4
@VE_H264_CTRL_VLD_DATA_REQ_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cedrus_ctx*, %struct.cedrus_run*)* @cedrus_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cedrus_set_params(%struct.cedrus_ctx* %0, %struct.cedrus_run* %1) #0 {
  %3 = alloca %struct.cedrus_ctx*, align 8
  %4 = alloca %struct.cedrus_run*, align 8
  %5 = alloca %struct.v4l2_ctrl_h264_decode_params*, align 8
  %6 = alloca %struct.v4l2_ctrl_h264_slice_params*, align 8
  %7 = alloca %struct.v4l2_ctrl_h264_pps*, align 8
  %8 = alloca %struct.v4l2_ctrl_h264_sps*, align 8
  %9 = alloca %struct.vb2_buffer*, align 8
  %10 = alloca %struct.cedrus_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %3, align 8
  store %struct.cedrus_run* %1, %struct.cedrus_run** %4, align 8
  %15 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %16 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %17, align 8
  store %struct.v4l2_ctrl_h264_decode_params* %18, %struct.v4l2_ctrl_h264_decode_params** %5, align 8
  %19 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %20 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %21, align 8
  store %struct.v4l2_ctrl_h264_slice_params* %22, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %23 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %24 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %25, align 8
  store %struct.v4l2_ctrl_h264_pps* %26, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %27 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %28 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %29, align 8
  store %struct.v4l2_ctrl_h264_sps* %30, %struct.v4l2_ctrl_h264_sps** %8, align 8
  %31 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %32 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.vb2_buffer* %34, %struct.vb2_buffer** %9, align 8
  %35 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %35, i32 0, i32 0
  %37 = load %struct.cedrus_dev*, %struct.cedrus_dev** %36, align 8
  store %struct.cedrus_dev* %37, %struct.cedrus_dev** %10, align 8
  %38 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 8
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %48 = load i32, i32* @VE_H264_VLD_LEN, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @cedrus_write(%struct.cedrus_dev* %47, i32 %48, i32 %49)
  %51 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %52 = load i32, i32* @VE_H264_VLD_OFFSET, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @cedrus_write(%struct.cedrus_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.vb2_buffer*, %struct.vb2_buffer** %9, align 8
  %56 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %55, i32 0)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %58 = load i32, i32* @VE_H264_VLD_END, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.vb2_buffer*, %struct.vb2_buffer** %9, align 8
  %61 = call i32 @vb2_get_plane_payload(%struct.vb2_buffer* %60, i32 0)
  %62 = add nsw i32 %59, %61
  %63 = call i32 @cedrus_write(%struct.cedrus_dev* %57, i32 %58, i32 %62)
  %64 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %65 = load i32, i32* @VE_H264_VLD_ADDR, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @VE_H264_VLD_ADDR_VAL(i32 %66)
  %68 = load i32, i32* @VE_H264_VLD_ADDR_FIRST, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @VE_H264_VLD_ADDR_VALID, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @VE_H264_VLD_ADDR_LAST, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @cedrus_write(%struct.cedrus_dev* %64, i32 %65, i32 %73)
  %75 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %76 = load i32, i32* @VE_H264_TRIGGER_TYPE, align 4
  %77 = load i32, i32* @VE_H264_TRIGGER_TYPE_INIT_SWDEC, align 4
  %78 = call i32 @cedrus_write(%struct.cedrus_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @V4L2_H264_PPS_FLAG_WEIGHTED_PRED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %2
  %86 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %87 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @V4L2_H264_SLICE_TYPE_P, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %108, label %91

91:                                               ; preds = %85
  %92 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @V4L2_H264_SLICE_TYPE_SP, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %108, label %97

97:                                               ; preds = %91, %2
  %98 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %104 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @V4L2_H264_SLICE_TYPE_B, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102, %91, %85
  %109 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %110 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %111 = call i32 @cedrus_write_pred_weight_table(%struct.cedrus_ctx* %109, %struct.cedrus_run* %110)
  br label %112

112:                                              ; preds = %108, %102, %97
  %113 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %114 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @V4L2_H264_SLICE_TYPE_P, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %130, label %118

118:                                              ; preds = %112
  %119 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %120 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @V4L2_H264_SLICE_TYPE_SP, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %126 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @V4L2_H264_SLICE_TYPE_B, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124, %118, %112
  %131 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %132 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %133 = call i32 @cedrus_write_ref_list0(%struct.cedrus_ctx* %131, %struct.cedrus_run* %132)
  br label %134

134:                                              ; preds = %130, %124
  %135 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %136 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @V4L2_H264_SLICE_TYPE_B, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %142 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %143 = call i32 @cedrus_write_ref_list1(%struct.cedrus_ctx* %141, %struct.cedrus_run* %142)
  br label %144

144:                                              ; preds = %140, %134
  store i32 0, i32* %14, align 4
  %145 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %146 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 31
  %149 = shl i32 %148, 10
  %150 = load i32, i32* %14, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %14, align 4
  %152 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %153 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 31
  %156 = shl i32 %155, 5
  %157 = load i32, i32* %14, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %14, align 4
  %159 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %160 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 3
  %163 = shl i32 %162, 2
  %164 = load i32, i32* %14, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %14, align 4
  %166 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %167 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %144
  %173 = load i32, i32* @VE_H264_PPS_ENTROPY_CODING_MODE, align 4
  %174 = load i32, i32* %14, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %172, %144
  %177 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %178 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @V4L2_H264_PPS_FLAG_WEIGHTED_PRED, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %176
  %184 = load i32, i32* @VE_H264_PPS_WEIGHTED_PRED, align 4
  %185 = load i32, i32* %14, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %183, %176
  %188 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %189 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @V4L2_H264_PPS_FLAG_CONSTRAINED_INTRA_PRED, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load i32, i32* @VE_H264_PPS_CONSTRAINED_INTRA_PRED, align 4
  %196 = load i32, i32* %14, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %194, %187
  %199 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %200 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @V4L2_H264_PPS_FLAG_TRANSFORM_8X8_MODE, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = load i32, i32* @VE_H264_PPS_TRANSFORM_8X8_MODE, align 4
  %207 = load i32, i32* %14, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %205, %198
  %210 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %211 = load i32, i32* @VE_H264_PPS, align 4
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @cedrus_write(%struct.cedrus_dev* %210, i32 %211, i32 %212)
  store i32 0, i32* %14, align 4
  %214 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %8, align 8
  %215 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, 7
  %218 = shl i32 %217, 19
  %219 = load i32, i32* %14, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %14, align 4
  %221 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %8, align 8
  %222 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 255
  %225 = shl i32 %224, 8
  %226 = load i32, i32* %14, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %14, align 4
  %228 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %8, align 8
  %229 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, 255
  %232 = load i32, i32* %14, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %14, align 4
  %234 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %8, align 8
  %235 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %209
  %241 = load i32, i32* @VE_H264_SPS_MBS_ONLY, align 4
  %242 = load i32, i32* %14, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %14, align 4
  br label %244

244:                                              ; preds = %240, %209
  %245 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %8, align 8
  %246 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i32, i32* @VE_H264_SPS_MB_ADAPTIVE_FRAME_FIELD, align 4
  %253 = load i32, i32* %14, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %14, align 4
  br label %255

255:                                              ; preds = %251, %244
  %256 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %8, align 8
  %257 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @V4L2_H264_SPS_FLAG_DIRECT_8X8_INFERENCE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = load i32, i32* @VE_H264_SPS_DIRECT_8X8_INFERENCE, align 4
  %264 = load i32, i32* %14, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %14, align 4
  br label %266

266:                                              ; preds = %262, %255
  %267 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %268 = load i32, i32* @VE_H264_SPS, align 4
  %269 = load i32, i32* %14, align 4
  %270 = call i32 @cedrus_write(%struct.cedrus_dev* %267, i32 %268, i32 %269)
  store i32 0, i32* %14, align 4
  %271 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %5, align 8
  %272 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %266
  %276 = call i32 @BIT(i32 12)
  br label %278

277:                                              ; preds = %266
  br label %278

278:                                              ; preds = %277, %275
  %279 = phi i32 [ %276, %275 ], [ 0, %277 ]
  %280 = load i32, i32* %14, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %14, align 4
  %282 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %283 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, 15
  %286 = shl i32 %285, 8
  %287 = load i32, i32* %14, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %14, align 4
  %289 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %290 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, 3
  %293 = load i32, i32* %14, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %14, align 4
  %295 = load i32, i32* @VE_H264_SHS_FIRST_SLICE_IN_PIC, align 4
  %296 = load i32, i32* %14, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %14, align 4
  %298 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %299 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @V4L2_H264_SLICE_FLAG_FIELD_PIC, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %278
  %305 = load i32, i32* @VE_H264_SHS_FIELD_PIC, align 4
  %306 = load i32, i32* %14, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %14, align 4
  br label %308

308:                                              ; preds = %304, %278
  %309 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %310 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @V4L2_H264_SLICE_FLAG_BOTTOM_FIELD, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %308
  %316 = load i32, i32* @VE_H264_SHS_BOTTOM_FIELD, align 4
  %317 = load i32, i32* %14, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %14, align 4
  br label %319

319:                                              ; preds = %315, %308
  %320 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %321 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @V4L2_H264_SLICE_FLAG_DIRECT_SPATIAL_MV_PRED, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %319
  %327 = load i32, i32* @VE_H264_SHS_DIRECT_SPATIAL_MV_PRED, align 4
  %328 = load i32, i32* %14, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %14, align 4
  br label %330

330:                                              ; preds = %326, %319
  %331 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %332 = load i32, i32* @VE_H264_SHS, align 4
  %333 = load i32, i32* %14, align 4
  %334 = call i32 @cedrus_write(%struct.cedrus_dev* %331, i32 %332, i32 %333)
  store i32 0, i32* %14, align 4
  %335 = load i32, i32* @VE_H264_SHS2_NUM_REF_IDX_ACTIVE_OVRD, align 4
  %336 = load i32, i32* %14, align 4
  %337 = or i32 %336, %335
  store i32 %337, i32* %14, align 4
  %338 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %339 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = and i32 %340, 31
  %342 = shl i32 %341, 24
  %343 = load i32, i32* %14, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %14, align 4
  %345 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %346 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 31
  %349 = shl i32 %348, 16
  %350 = load i32, i32* %14, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %14, align 4
  %352 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %353 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %352, i32 0, i32 7
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %354, 3
  %356 = shl i32 %355, 8
  %357 = load i32, i32* %14, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %14, align 4
  %359 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %360 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %359, i32 0, i32 8
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 15
  %363 = shl i32 %362, 4
  %364 = load i32, i32* %14, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %14, align 4
  %366 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %367 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %366, i32 0, i32 9
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 15
  %370 = load i32, i32* %14, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %14, align 4
  %372 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %373 = load i32, i32* @VE_H264_SHS2, align 4
  %374 = load i32, i32* %14, align 4
  %375 = call i32 @cedrus_write(%struct.cedrus_dev* %372, i32 %373, i32 %374)
  store i32 0, i32* %14, align 4
  %376 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %377 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = and i32 %378, 63
  %380 = shl i32 %379, 16
  %381 = load i32, i32* %14, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %14, align 4
  %383 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %384 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = and i32 %385, 63
  %387 = shl i32 %386, 8
  %388 = load i32, i32* %14, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %14, align 4
  %390 = load %struct.v4l2_ctrl_h264_pps*, %struct.v4l2_ctrl_h264_pps** %7, align 8
  %391 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, %struct.v4l2_ctrl_h264_pps* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %392, 26
  %394 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %6, align 8
  %395 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %394, i32 0, i32 10
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %393, %396
  %398 = and i32 %397, 63
  %399 = load i32, i32* %14, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %14, align 4
  %401 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %402 = load i32, i32* @VE_H264_SHS_QP, align 4
  %403 = load i32, i32* %14, align 4
  %404 = call i32 @cedrus_write(%struct.cedrus_dev* %401, i32 %402, i32 %403)
  %405 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %406 = load i32, i32* @VE_H264_STATUS, align 4
  %407 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %408 = load i32, i32* @VE_H264_STATUS, align 4
  %409 = call i32 @cedrus_read(%struct.cedrus_dev* %407, i32 %408)
  %410 = call i32 @cedrus_write(%struct.cedrus_dev* %405, i32 %406, i32 %409)
  %411 = load %struct.cedrus_dev*, %struct.cedrus_dev** %10, align 8
  %412 = load i32, i32* @VE_H264_CTRL, align 4
  %413 = load i32, i32* @VE_H264_CTRL_SLICE_DECODE_INT, align 4
  %414 = load i32, i32* @VE_H264_CTRL_DECODE_ERR_INT, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* @VE_H264_CTRL_VLD_DATA_REQ_INT, align 4
  %417 = or i32 %415, %416
  %418 = call i32 @cedrus_write(%struct.cedrus_dev* %411, i32 %412, i32 %417)
  ret void
}

declare dso_local i32 @cedrus_write(%struct.cedrus_dev*, i32, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @VE_H264_VLD_ADDR_VAL(i32) #1

declare dso_local i32 @cedrus_write_pred_weight_table(%struct.cedrus_ctx*, %struct.cedrus_run*) #1

declare dso_local i32 @cedrus_write_ref_list0(%struct.cedrus_ctx*, %struct.cedrus_run*) #1

declare dso_local i32 @cedrus_write_ref_list1(%struct.cedrus_ctx*, %struct.cedrus_run*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cedrus_read(%struct.cedrus_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
