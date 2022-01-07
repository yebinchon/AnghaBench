; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_write_frame_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_write_frame_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { %struct.cedrus_dev*, %struct.TYPE_11__ }
%struct.cedrus_dev = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.vb2_queue }
%struct.vb2_queue = type { i32** }
%struct.cedrus_run = type { %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_decode_params* }
%struct.v4l2_ctrl_h264_sps = type { i32 }
%struct.v4l2_ctrl_h264_slice_params = type { i32 }
%struct.v4l2_ctrl_h264_decode_params = type { i32, i32, %struct.v4l2_h264_dpb_entry* }
%struct.v4l2_h264_dpb_entry = type { i32, i32, i32, i32 }
%struct.cedrus_buffer = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.cedrus_h264_sram_ref_pic = type { i32 }

@CEDRUS_H264_FRAME_NUM = common dso_local global i32 0, align 4
@V4L2_H264_DPB_ENTRY_FLAG_VALID = common dso_local global i32 0, align 4
@V4L2_H264_DPB_ENTRY_FLAG_ACTIVE = common dso_local global i32 0, align 4
@V4L2_H264_SLICE_FLAG_FIELD_PIC = common dso_local global i32 0, align 4
@CEDRUS_H264_PIC_TYPE_FIELD = common dso_local global i32 0, align 4
@V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD = common dso_local global i32 0, align 4
@CEDRUS_H264_PIC_TYPE_MBAFF = common dso_local global i32 0, align 4
@CEDRUS_H264_PIC_TYPE_FRAME = common dso_local global i32 0, align 4
@CEDRUS_SRAM_H264_FRAMEBUFFER_LIST = common dso_local global i32 0, align 4
@VE_H264_OUTPUT_FRAME_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cedrus_ctx*, %struct.cedrus_run*)* @cedrus_write_frame_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cedrus_write_frame_list(%struct.cedrus_ctx* %0, %struct.cedrus_run* %1) #0 {
  %3 = alloca %struct.cedrus_ctx*, align 8
  %4 = alloca %struct.cedrus_run*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.v4l2_ctrl_h264_decode_params*, align 8
  %8 = alloca %struct.v4l2_ctrl_h264_slice_params*, align 8
  %9 = alloca %struct.v4l2_ctrl_h264_sps*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca %struct.cedrus_buffer*, align 8
  %12 = alloca %struct.cedrus_dev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.v4l2_h264_dpb_entry*, align 8
  %18 = alloca %struct.cedrus_buffer*, align 8
  %19 = alloca i32, align 4
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %3, align 8
  store %struct.cedrus_run* %1, %struct.cedrus_run** %4, align 8
  %20 = load i32, i32* @CEDRUS_H264_FRAME_NUM, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca %struct.cedrus_h264_sram_ref_pic, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %25 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %26, align 8
  store %struct.v4l2_ctrl_h264_decode_params* %27, %struct.v4l2_ctrl_h264_decode_params** %7, align 8
  %28 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %29 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %30, align 8
  store %struct.v4l2_ctrl_h264_slice_params* %31, %struct.v4l2_ctrl_h264_slice_params** %8, align 8
  %32 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %33 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %34, align 8
  store %struct.v4l2_ctrl_h264_sps* %35, %struct.v4l2_ctrl_h264_sps** %9, align 8
  %36 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store %struct.vb2_queue* %41, %struct.vb2_queue** %10, align 8
  %42 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %42, i32 0, i32 0
  %44 = load %struct.cedrus_dev*, %struct.cedrus_dev** %43, align 8
  store %struct.cedrus_dev* %44, %struct.cedrus_dev** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %45 = mul nuw i64 4, %21
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(%struct.cedrus_h264_sram_ref_pic* %23, i32 0, i32 %46)
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %119, %2
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %50, i32 0, i32 2
  %52 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %51, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.v4l2_h264_dpb_entry* %52)
  %54 = icmp ult i32 %49, %53
  br i1 %54, label %55, label %122

55:                                               ; preds = %48
  %56 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %56, i32 0, i32 2
  %58 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %58, i64 %60
  store %struct.v4l2_h264_dpb_entry* %61, %struct.v4l2_h264_dpb_entry** %17, align 8
  %62 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %17, align 8
  %63 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_VALID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %55
  br label %119

69:                                               ; preds = %55
  %70 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %71 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %17, align 8
  %72 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @vb2_find_timestamp(%struct.vb2_queue* %70, i32 %73, i32 0)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %119

78:                                               ; preds = %69
  %79 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %80 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = call %struct.cedrus_buffer* @vb2_to_cedrus_buffer(i32* %85)
  store %struct.cedrus_buffer* %86, %struct.cedrus_buffer** %18, align 8
  %87 = load %struct.cedrus_buffer*, %struct.cedrus_buffer** %18, align 8
  %88 = getelementptr inbounds %struct.cedrus_buffer, %struct.cedrus_buffer* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i64 @BIT(i32 %92)
  %94 = load i64, i64* %13, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %13, align 8
  %96 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %17, align 8
  %97 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_ACTIVE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %78
  br label %119

103:                                              ; preds = %78
  %104 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %105 = load %struct.cedrus_buffer*, %struct.cedrus_buffer** %18, align 8
  %106 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %17, align 8
  %107 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %17, align 8
  %110 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %14, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.cedrus_h264_sram_ref_pic, %struct.cedrus_h264_sram_ref_pic* %23, i64 %113
  %115 = call i32 @cedrus_fill_ref_pic(%struct.cedrus_ctx* %104, %struct.cedrus_buffer* %105, i32 %108, i32 %111, %struct.cedrus_h264_sram_ref_pic* %114)
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @max(i32 %116, i32 %117)
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %103, %102, %77, %68
  %120 = load i32, i32* %16, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %16, align 4
  br label %48

122:                                              ; preds = %48
  %123 = load i32, i32* @CEDRUS_H264_FRAME_NUM, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @find_next_zero_bit(i64* %13, i32 %123, i32 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @CEDRUS_H264_FRAME_NUM, align 4
  %128 = icmp uge i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* @CEDRUS_H264_FRAME_NUM, align 4
  %131 = call i32 @find_first_zero_bit(i64* %13, i32 %130)
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %129, %122
  %133 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %134 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = call %struct.cedrus_buffer* @vb2_to_cedrus_buffer(i32* %136)
  store %struct.cedrus_buffer* %137, %struct.cedrus_buffer** %11, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.cedrus_buffer*, %struct.cedrus_buffer** %11, align 8
  %140 = getelementptr inbounds %struct.cedrus_buffer, %struct.cedrus_buffer* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 4
  %143 = load %struct.v4l2_ctrl_h264_slice_params*, %struct.v4l2_ctrl_h264_slice_params** %8, align 8
  %144 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, %struct.v4l2_ctrl_h264_slice_params* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @V4L2_H264_SLICE_FLAG_FIELD_PIC, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %132
  %150 = load i32, i32* @CEDRUS_H264_PIC_TYPE_FIELD, align 4
  %151 = load %struct.cedrus_buffer*, %struct.cedrus_buffer** %11, align 8
  %152 = getelementptr inbounds %struct.cedrus_buffer, %struct.cedrus_buffer* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  br label %175

155:                                              ; preds = %132
  %156 = load %struct.v4l2_ctrl_h264_sps*, %struct.v4l2_ctrl_h264_sps** %9, align 8
  %157 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, %struct.v4l2_ctrl_h264_sps* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i32, i32* @CEDRUS_H264_PIC_TYPE_MBAFF, align 4
  %164 = load %struct.cedrus_buffer*, %struct.cedrus_buffer** %11, align 8
  %165 = getelementptr inbounds %struct.cedrus_buffer, %struct.cedrus_buffer* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  store i32 %163, i32* %167, align 4
  br label %174

168:                                              ; preds = %155
  %169 = load i32, i32* @CEDRUS_H264_PIC_TYPE_FRAME, align 4
  %170 = load %struct.cedrus_buffer*, %struct.cedrus_buffer** %11, align 8
  %171 = getelementptr inbounds %struct.cedrus_buffer, %struct.cedrus_buffer* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  store i32 %169, i32* %173, align 4
  br label %174

174:                                              ; preds = %168, %162
  br label %175

175:                                              ; preds = %174, %149
  %176 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %177 = load %struct.cedrus_buffer*, %struct.cedrus_buffer** %11, align 8
  %178 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %7, align 8
  %179 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.v4l2_ctrl_h264_decode_params*, %struct.v4l2_ctrl_h264_decode_params** %7, align 8
  %182 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, %struct.v4l2_ctrl_h264_decode_params* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.cedrus_h264_sram_ref_pic, %struct.cedrus_h264_sram_ref_pic* %23, i64 %185
  %187 = call i32 @cedrus_fill_ref_pic(%struct.cedrus_ctx* %176, %struct.cedrus_buffer* %177, i32 %180, i32 %183, %struct.cedrus_h264_sram_ref_pic* %186)
  %188 = load %struct.cedrus_dev*, %struct.cedrus_dev** %12, align 8
  %189 = load i32, i32* @CEDRUS_SRAM_H264_FRAMEBUFFER_LIST, align 4
  %190 = mul nuw i64 4, %21
  %191 = trunc i64 %190 to i32
  %192 = call i32 @cedrus_h264_write_sram(%struct.cedrus_dev* %188, i32 %189, %struct.cedrus_h264_sram_ref_pic* %23, i32 %191)
  %193 = load %struct.cedrus_dev*, %struct.cedrus_dev** %12, align 8
  %194 = load i32, i32* @VE_H264_OUTPUT_FRAME_IDX, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @cedrus_write(%struct.cedrus_dev* %193, i32 %194, i32 %195)
  %197 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %197)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.cedrus_h264_sram_ref_pic*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.v4l2_h264_dpb_entry*) #2

declare dso_local i32 @vb2_find_timestamp(%struct.vb2_queue*, i32, i32) #2

declare dso_local %struct.cedrus_buffer* @vb2_to_cedrus_buffer(i32*) #2

declare dso_local i64 @BIT(i32) #2

declare dso_local i32 @cedrus_fill_ref_pic(%struct.cedrus_ctx*, %struct.cedrus_buffer*, i32, i32, %struct.cedrus_h264_sram_ref_pic*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @find_next_zero_bit(i64*, i32, i32) #2

declare dso_local i32 @find_first_zero_bit(i64*, i32) #2

declare dso_local i32 @cedrus_h264_write_sram(%struct.cedrus_dev*, i32, %struct.cedrus_h264_sram_ref_pic*, i32) #2

declare dso_local i32 @cedrus_write(%struct.cedrus_dev*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
