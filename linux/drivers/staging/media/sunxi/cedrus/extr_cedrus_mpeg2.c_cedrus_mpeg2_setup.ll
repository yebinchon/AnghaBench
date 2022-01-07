; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_mpeg2.c_cedrus_mpeg2_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_mpeg2.c_cedrus_mpeg2_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.cedrus_dev* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.cedrus_dev = type { i32 }
%struct.cedrus_run = type { %struct.TYPE_7__*, %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_slice_params* }
%struct.v4l2_ctrl_mpeg2_quantization = type { i32*, i64, i32*, i64 }
%struct.v4l2_ctrl_mpeg2_slice_params = type { i32, i32, i32, i32, %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_sequence }
%struct.v4l2_mpeg2_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32 }
%struct.v4l2_mpeg2_sequence = type { i32, i32 }
%struct.vb2_queue = type { i32 }

@CEDRUS_CODEC_MPEG2 = common dso_local global i32 0, align 4
@intra_quantization_matrix_default = common dso_local global i32* null, align 8
@VE_DEC_MPEG_IQMINPUT_FLAG_INTRA = common dso_local global i32 0, align 4
@VE_DEC_MPEG_IQMINPUT = common dso_local global i32 0, align 4
@non_intra_quantization_matrix_default = common dso_local global i32* null, align 8
@VE_DEC_MPEG_IQMINPUT_FLAG_NON_INTRA = common dso_local global i32 0, align 4
@VE_DEC_MPEG_MP12HDR = common dso_local global i32 0, align 4
@VE_DEC_MPEG_PICCODEDSIZE = common dso_local global i32 0, align 4
@VE_DEC_MPEG_PICBOUNDSIZE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VE_DEC_MPEG_FWD_REF_LUMA_ADDR = common dso_local global i32 0, align 4
@VE_DEC_MPEG_FWD_REF_CHROMA_ADDR = common dso_local global i32 0, align 4
@VE_DEC_MPEG_BWD_REF_LUMA_ADDR = common dso_local global i32 0, align 4
@VE_DEC_MPEG_BWD_REF_CHROMA_ADDR = common dso_local global i32 0, align 4
@VE_DEC_MPEG_REC_LUMA = common dso_local global i32 0, align 4
@VE_DEC_MPEG_REC_CHROMA = common dso_local global i32 0, align 4
@VE_DEC_MPEG_VLD_OFFSET = common dso_local global i32 0, align 4
@VE_DEC_MPEG_VLD_LEN = common dso_local global i32 0, align 4
@VE_DEC_MPEG_VLD_ADDR_VALID_PIC_DATA = common dso_local global i32 0, align 4
@VE_DEC_MPEG_VLD_ADDR_LAST_PIC_DATA = common dso_local global i32 0, align 4
@VE_DEC_MPEG_VLD_ADDR_FIRST_PIC_DATA = common dso_local global i32 0, align 4
@VE_DEC_MPEG_VLD_ADDR = common dso_local global i32 0, align 4
@VE_DEC_MPEG_VLD_END_ADDR = common dso_local global i32 0, align 4
@VE_DEC_MPEG_MBADDR = common dso_local global i32 0, align 4
@VE_DEC_MPEG_ERROR = common dso_local global i32 0, align 4
@VE_DEC_MPEG_CRTMBADDR = common dso_local global i32 0, align 4
@VE_DEC_MPEG_CTRL_IRQ_MASK = common dso_local global i32 0, align 4
@VE_DEC_MPEG_CTRL_MC_NO_WRITEBACK = common dso_local global i32 0, align 4
@VE_DEC_MPEG_CTRL_MC_CACHE_EN = common dso_local global i32 0, align 4
@VE_DEC_MPEG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cedrus_ctx*, %struct.cedrus_run*)* @cedrus_mpeg2_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cedrus_mpeg2_setup(%struct.cedrus_ctx* %0, %struct.cedrus_run* %1) #0 {
  %3 = alloca %struct.cedrus_ctx*, align 8
  %4 = alloca %struct.cedrus_run*, align 8
  %5 = alloca %struct.v4l2_ctrl_mpeg2_slice_params*, align 8
  %6 = alloca %struct.v4l2_mpeg2_sequence*, align 8
  %7 = alloca %struct.v4l2_mpeg2_picture*, align 8
  %8 = alloca %struct.v4l2_ctrl_mpeg2_quantization*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cedrus_dev*, align 8
  %17 = alloca %struct.vb2_queue*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %3, align 8
  store %struct.cedrus_run* %1, %struct.cedrus_run** %4, align 8
  %23 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %23, i32 0, i32 2
  %25 = load %struct.cedrus_dev*, %struct.cedrus_dev** %24, align 8
  store %struct.cedrus_dev* %25, %struct.cedrus_dev** %16, align 8
  %26 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %27 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %28, align 8
  store %struct.v4l2_ctrl_mpeg2_slice_params* %29, %struct.v4l2_ctrl_mpeg2_slice_params** %5, align 8
  %30 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %30, i32 0, i32 5
  store %struct.v4l2_mpeg2_sequence* %31, %struct.v4l2_mpeg2_sequence** %6, align 8
  %32 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %32, i32 0, i32 4
  store %struct.v4l2_mpeg2_picture* %33, %struct.v4l2_mpeg2_picture** %7, align 8
  %34 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %35 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %36, align 8
  store %struct.v4l2_ctrl_mpeg2_quantization* %37, %struct.v4l2_ctrl_mpeg2_quantization** %8, align 8
  %38 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %39 = load i32, i32* @CEDRUS_CODEC_MPEG2, align 4
  %40 = call i32 @cedrus_engine_enable(%struct.cedrus_dev* %38, i32 %39)
  %41 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %8, align 8
  %42 = icmp ne %struct.v4l2_ctrl_mpeg2_quantization* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %2
  %44 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_quantization, %struct.v4l2_ctrl_mpeg2_quantization* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_quantization, %struct.v4l2_ctrl_mpeg2_quantization* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %18, align 8
  br label %54

52:                                               ; preds = %43, %2
  %53 = load i32*, i32** @intra_quantization_matrix_default, align 8
  store i32* %53, i32** %18, align 8
  br label %54

54:                                               ; preds = %52, %48
  store i32 0, i32* %21, align 4
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %21, align 4
  %57 = icmp ult i32 %56, 64
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32, i32* %21, align 4
  %60 = load i32*, i32** %18, align 8
  %61 = load i32, i32* %21, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @VE_DEC_MPEG_IQMINPUT_WEIGHT(i32 %59, i32 %64)
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* @VE_DEC_MPEG_IQMINPUT_FLAG_INTRA, align 4
  %67 = load i32, i32* %22, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %22, align 4
  %69 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %70 = load i32, i32* @VE_DEC_MPEG_IQMINPUT, align 4
  %71 = load i32, i32* %22, align 4
  %72 = call i32 @cedrus_write(%struct.cedrus_dev* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %21, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %21, align 4
  br label %55

76:                                               ; preds = %55
  %77 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %8, align 8
  %78 = icmp ne %struct.v4l2_ctrl_mpeg2_quantization* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %8, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_quantization, %struct.v4l2_ctrl_mpeg2_quantization* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.v4l2_ctrl_mpeg2_quantization*, %struct.v4l2_ctrl_mpeg2_quantization** %8, align 8
  %86 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_quantization, %struct.v4l2_ctrl_mpeg2_quantization* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %18, align 8
  br label %90

88:                                               ; preds = %79, %76
  %89 = load i32*, i32** @non_intra_quantization_matrix_default, align 8
  store i32* %89, i32** %18, align 8
  br label %90

90:                                               ; preds = %88, %84
  store i32 0, i32* %21, align 4
  br label %91

91:                                               ; preds = %109, %90
  %92 = load i32, i32* %21, align 4
  %93 = icmp ult i32 %92, 64
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load i32, i32* %21, align 4
  %96 = load i32*, i32** %18, align 8
  %97 = load i32, i32* %21, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @VE_DEC_MPEG_IQMINPUT_WEIGHT(i32 %95, i32 %100)
  store i32 %101, i32* %22, align 4
  %102 = load i32, i32* @VE_DEC_MPEG_IQMINPUT_FLAG_NON_INTRA, align 4
  %103 = load i32, i32* %22, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %22, align 4
  %105 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %106 = load i32, i32* @VE_DEC_MPEG_IQMINPUT, align 4
  %107 = load i32, i32* %22, align 4
  %108 = call i32 @cedrus_write(%struct.cedrus_dev* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %94
  %110 = load i32, i32* %21, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %21, align 4
  br label %91

112:                                              ; preds = %91
  %113 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @VE_DEC_MPEG_MP12HDR_SLICE_TYPE(i32 %115)
  store i32 %116, i32* %22, align 4
  %117 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %117, i32 0, i32 8
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @VE_DEC_MPEG_MP12HDR_F_CODE(i32 0, i32 0, i32 %123)
  %125 = load i32, i32* %22, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %22, align 4
  %127 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %128 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %127, i32 0, i32 8
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @VE_DEC_MPEG_MP12HDR_F_CODE(i32 0, i32 1, i32 %133)
  %135 = load i32, i32* %22, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %22, align 4
  %137 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %138 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %137, i32 0, i32 8
  %139 = load i32**, i32*** %138, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @VE_DEC_MPEG_MP12HDR_F_CODE(i32 1, i32 0, i32 %143)
  %145 = load i32, i32* %22, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %22, align 4
  %147 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %148 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %147, i32 0, i32 8
  %149 = load i32**, i32*** %148, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @VE_DEC_MPEG_MP12HDR_F_CODE(i32 1, i32 1, i32 %153)
  %155 = load i32, i32* %22, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %22, align 4
  %157 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %158 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @VE_DEC_MPEG_MP12HDR_INTRA_DC_PRECISION(i32 %159)
  %161 = load i32, i32* %22, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %22, align 4
  %163 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %164 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @VE_DEC_MPEG_MP12HDR_INTRA_PICTURE_STRUCTURE(i32 %165)
  %167 = load i32, i32* %22, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %22, align 4
  %169 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %170 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @VE_DEC_MPEG_MP12HDR_TOP_FIELD_FIRST(i32 %171)
  %173 = load i32, i32* %22, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %22, align 4
  %175 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %176 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @VE_DEC_MPEG_MP12HDR_FRAME_PRED_FRAME_DCT(i32 %177)
  %179 = load i32, i32* %22, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %22, align 4
  %181 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %182 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @VE_DEC_MPEG_MP12HDR_CONCEALMENT_MOTION_VECTORS(i32 %183)
  %185 = load i32, i32* %22, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %22, align 4
  %187 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %188 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @VE_DEC_MPEG_MP12HDR_Q_SCALE_TYPE(i32 %189)
  %191 = load i32, i32* %22, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %22, align 4
  %193 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %194 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @VE_DEC_MPEG_MP12HDR_INTRA_VLC_FORMAT(i32 %195)
  %197 = load i32, i32* %22, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %22, align 4
  %199 = load %struct.v4l2_mpeg2_picture*, %struct.v4l2_mpeg2_picture** %7, align 8
  %200 = getelementptr inbounds %struct.v4l2_mpeg2_picture, %struct.v4l2_mpeg2_picture* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @VE_DEC_MPEG_MP12HDR_ALTERNATE_SCAN(i32 %201)
  %203 = load i32, i32* %22, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %22, align 4
  %205 = call i32 @VE_DEC_MPEG_MP12HDR_FULL_PEL_FORWARD_VECTOR(i32 0)
  %206 = load i32, i32* %22, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %22, align 4
  %208 = call i32 @VE_DEC_MPEG_MP12HDR_FULL_PEL_BACKWARD_VECTOR(i32 0)
  %209 = load i32, i32* %22, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %22, align 4
  %211 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %212 = load i32, i32* @VE_DEC_MPEG_MP12HDR, align 4
  %213 = load i32, i32* %22, align 4
  %214 = call i32 @cedrus_write(%struct.cedrus_dev* %211, i32 %212, i32 %213)
  %215 = load %struct.v4l2_mpeg2_sequence*, %struct.v4l2_mpeg2_sequence** %6, align 8
  %216 = getelementptr inbounds %struct.v4l2_mpeg2_sequence, %struct.v4l2_mpeg2_sequence* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @VE_DEC_MPEG_PICCODEDSIZE_WIDTH(i32 %217)
  store i32 %218, i32* %22, align 4
  %219 = load %struct.v4l2_mpeg2_sequence*, %struct.v4l2_mpeg2_sequence** %6, align 8
  %220 = getelementptr inbounds %struct.v4l2_mpeg2_sequence, %struct.v4l2_mpeg2_sequence* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @VE_DEC_MPEG_PICCODEDSIZE_HEIGHT(i32 %221)
  %223 = load i32, i32* %22, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %22, align 4
  %225 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %226 = load i32, i32* @VE_DEC_MPEG_PICCODEDSIZE, align 4
  %227 = load i32, i32* %22, align 4
  %228 = call i32 @cedrus_write(%struct.cedrus_dev* %225, i32 %226, i32 %227)
  %229 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %230 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @VE_DEC_MPEG_PICBOUNDSIZE_WIDTH(i32 %232)
  store i32 %233, i32* %22, align 4
  %234 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %235 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @VE_DEC_MPEG_PICBOUNDSIZE_HEIGHT(i32 %237)
  %239 = load i32, i32* %22, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %22, align 4
  %241 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %242 = load i32, i32* @VE_DEC_MPEG_PICBOUNDSIZE, align 4
  %243 = load i32, i32* %22, align 4
  %244 = call i32 @cedrus_write(%struct.cedrus_dev* %241, i32 %242, i32 %243)
  %245 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %246 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %250 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %248, i32 %249)
  store %struct.vb2_queue* %250, %struct.vb2_queue** %17, align 8
  %251 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %252 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %5, align 8
  %253 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @vb2_find_timestamp(%struct.vb2_queue* %251, i32 %254, i32 0)
  store i32 %255, i32* %19, align 4
  %256 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %257 = load i32, i32* %19, align 4
  %258 = call i32 @cedrus_dst_buf_addr(%struct.cedrus_ctx* %256, i32 %257, i32 0)
  store i32 %258, i32* %12, align 4
  %259 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %260 = load i32, i32* %19, align 4
  %261 = call i32 @cedrus_dst_buf_addr(%struct.cedrus_ctx* %259, i32 %260, i32 1)
  store i32 %261, i32* %13, align 4
  %262 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %263 = load i32, i32* @VE_DEC_MPEG_FWD_REF_LUMA_ADDR, align 4
  %264 = load i32, i32* %12, align 4
  %265 = call i32 @cedrus_write(%struct.cedrus_dev* %262, i32 %263, i32 %264)
  %266 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %267 = load i32, i32* @VE_DEC_MPEG_FWD_REF_CHROMA_ADDR, align 4
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @cedrus_write(%struct.cedrus_dev* %266, i32 %267, i32 %268)
  %270 = load %struct.vb2_queue*, %struct.vb2_queue** %17, align 8
  %271 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %5, align 8
  %272 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @vb2_find_timestamp(%struct.vb2_queue* %270, i32 %273, i32 0)
  store i32 %274, i32* %20, align 4
  %275 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %276 = load i32, i32* %20, align 4
  %277 = call i32 @cedrus_dst_buf_addr(%struct.cedrus_ctx* %275, i32 %276, i32 0)
  store i32 %277, i32* %14, align 4
  %278 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %279 = load i32, i32* %20, align 4
  %280 = call i32 @cedrus_dst_buf_addr(%struct.cedrus_ctx* %278, i32 %279, i32 1)
  store i32 %280, i32* %15, align 4
  %281 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %282 = load i32, i32* @VE_DEC_MPEG_BWD_REF_LUMA_ADDR, align 4
  %283 = load i32, i32* %14, align 4
  %284 = call i32 @cedrus_write(%struct.cedrus_dev* %281, i32 %282, i32 %283)
  %285 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %286 = load i32, i32* @VE_DEC_MPEG_BWD_REF_CHROMA_ADDR, align 4
  %287 = load i32, i32* %15, align 4
  %288 = call i32 @cedrus_write(%struct.cedrus_dev* %285, i32 %286, i32 %287)
  %289 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %290 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %291 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %290, i32 0, i32 1
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @cedrus_dst_buf_addr(%struct.cedrus_ctx* %289, i32 %295, i32 0)
  store i32 %296, i32* %10, align 4
  %297 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %298 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %299 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %298, i32 0, i32 1
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @cedrus_dst_buf_addr(%struct.cedrus_ctx* %297, i32 %303, i32 1)
  store i32 %304, i32* %11, align 4
  %305 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %306 = load i32, i32* @VE_DEC_MPEG_REC_LUMA, align 4
  %307 = load i32, i32* %10, align 4
  %308 = call i32 @cedrus_write(%struct.cedrus_dev* %305, i32 %306, i32 %307)
  %309 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %310 = load i32, i32* @VE_DEC_MPEG_REC_CHROMA, align 4
  %311 = load i32, i32* %11, align 4
  %312 = call i32 @cedrus_write(%struct.cedrus_dev* %309, i32 %310, i32 %311)
  %313 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %314 = load i32, i32* @VE_DEC_MPEG_VLD_OFFSET, align 4
  %315 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %5, align 8
  %316 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @cedrus_write(%struct.cedrus_dev* %313, i32 %314, i32 %317)
  %319 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %5, align 8
  %320 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %5, align 8
  %323 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = sub nsw i32 %321, %324
  store i32 %325, i32* %22, align 4
  %326 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %327 = load i32, i32* @VE_DEC_MPEG_VLD_LEN, align 4
  %328 = load i32, i32* %22, align 4
  %329 = call i32 @cedrus_write(%struct.cedrus_dev* %326, i32 %327, i32 %328)
  %330 = load %struct.cedrus_run*, %struct.cedrus_run** %4, align 8
  %331 = getelementptr inbounds %struct.cedrus_run, %struct.cedrus_run* %330, i32 0, i32 0
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %333, i32 0)
  store i32 %334, i32* %9, align 4
  %335 = load i32, i32* %9, align 4
  %336 = call i32 @VE_DEC_MPEG_VLD_ADDR_BASE(i32 %335)
  store i32 %336, i32* %22, align 4
  %337 = load i32, i32* @VE_DEC_MPEG_VLD_ADDR_VALID_PIC_DATA, align 4
  %338 = load i32, i32* %22, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %22, align 4
  %340 = load i32, i32* @VE_DEC_MPEG_VLD_ADDR_LAST_PIC_DATA, align 4
  %341 = load i32, i32* %22, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %22, align 4
  %343 = load i32, i32* @VE_DEC_MPEG_VLD_ADDR_FIRST_PIC_DATA, align 4
  %344 = load i32, i32* %22, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %22, align 4
  %346 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %347 = load i32, i32* @VE_DEC_MPEG_VLD_ADDR, align 4
  %348 = load i32, i32* %22, align 4
  %349 = call i32 @cedrus_write(%struct.cedrus_dev* %346, i32 %347, i32 %348)
  %350 = load i32, i32* %9, align 4
  %351 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %5, align 8
  %352 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @DIV_ROUND_UP(i32 %353, i32 8)
  %355 = add nsw i32 %350, %354
  store i32 %355, i32* %22, align 4
  %356 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %357 = load i32, i32* @VE_DEC_MPEG_VLD_END_ADDR, align 4
  %358 = load i32, i32* %22, align 4
  %359 = call i32 @cedrus_write(%struct.cedrus_dev* %356, i32 %357, i32 %358)
  %360 = call i32 @VE_DEC_MPEG_MBADDR_Y(i32 0)
  %361 = call i32 @VE_DEC_MPEG_MBADDR_X(i32 0)
  %362 = or i32 %360, %361
  store i32 %362, i32* %22, align 4
  %363 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %364 = load i32, i32* @VE_DEC_MPEG_MBADDR, align 4
  %365 = load i32, i32* %22, align 4
  %366 = call i32 @cedrus_write(%struct.cedrus_dev* %363, i32 %364, i32 %365)
  %367 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %368 = load i32, i32* @VE_DEC_MPEG_ERROR, align 4
  %369 = call i32 @cedrus_write(%struct.cedrus_dev* %367, i32 %368, i32 0)
  %370 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %371 = load i32, i32* @VE_DEC_MPEG_CRTMBADDR, align 4
  %372 = call i32 @cedrus_write(%struct.cedrus_dev* %370, i32 %371, i32 0)
  %373 = load i32, i32* @VE_DEC_MPEG_CTRL_IRQ_MASK, align 4
  %374 = load i32, i32* @VE_DEC_MPEG_CTRL_MC_NO_WRITEBACK, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* @VE_DEC_MPEG_CTRL_MC_CACHE_EN, align 4
  %377 = or i32 %375, %376
  store i32 %377, i32* %22, align 4
  %378 = load %struct.cedrus_dev*, %struct.cedrus_dev** %16, align 8
  %379 = load i32, i32* @VE_DEC_MPEG_CTRL, align 4
  %380 = load i32, i32* %22, align 4
  %381 = call i32 @cedrus_write(%struct.cedrus_dev* %378, i32 %379, i32 %380)
  ret void
}

declare dso_local i32 @cedrus_engine_enable(%struct.cedrus_dev*, i32) #1

declare dso_local i32 @VE_DEC_MPEG_IQMINPUT_WEIGHT(i32, i32) #1

declare dso_local i32 @cedrus_write(%struct.cedrus_dev*, i32, i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_SLICE_TYPE(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_F_CODE(i32, i32, i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_INTRA_DC_PRECISION(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_INTRA_PICTURE_STRUCTURE(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_TOP_FIELD_FIRST(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_FRAME_PRED_FRAME_DCT(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_CONCEALMENT_MOTION_VECTORS(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_Q_SCALE_TYPE(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_INTRA_VLC_FORMAT(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_ALTERNATE_SCAN(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_FULL_PEL_FORWARD_VECTOR(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MP12HDR_FULL_PEL_BACKWARD_VECTOR(i32) #1

declare dso_local i32 @VE_DEC_MPEG_PICCODEDSIZE_WIDTH(i32) #1

declare dso_local i32 @VE_DEC_MPEG_PICCODEDSIZE_HEIGHT(i32) #1

declare dso_local i32 @VE_DEC_MPEG_PICBOUNDSIZE_WIDTH(i32) #1

declare dso_local i32 @VE_DEC_MPEG_PICBOUNDSIZE_HEIGHT(i32) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i32 @vb2_find_timestamp(%struct.vb2_queue*, i32, i32) #1

declare dso_local i32 @cedrus_dst_buf_addr(%struct.cedrus_ctx*, i32, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @VE_DEC_MPEG_VLD_ADDR_BASE(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @VE_DEC_MPEG_MBADDR_Y(i32) #1

declare dso_local i32 @VE_DEC_MPEG_MBADDR_X(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
