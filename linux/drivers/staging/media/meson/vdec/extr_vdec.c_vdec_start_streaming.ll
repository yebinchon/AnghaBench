; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_vdec_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.amvdec_session = type { i32, i32, i64, i32, i32, i32, i32, %struct.amvdec_core*, i32, i64, i32, i32, %struct.TYPE_4__, i64, i64, i64, i64, %struct.TYPE_3__* }
%struct.amvdec_core = type { i32, %struct.amvdec_session* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.amvdec_codec_ops* }
%struct.amvdec_codec_ops = type { i32 (%struct.amvdec_session*)* }
%struct.vb2_v4l2_buffer = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@STATUS_NEEDS_RESUME = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@STATUS_RUNNING = common dso_local global i8* null, align 8
@SIZE_VIFIFO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to request VIFIFO buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@vdec_recycle_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"vdec_recycle\00", align 1
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @vdec_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amvdec_session*, align 8
  %7 = alloca %struct.amvdec_codec_ops*, align 8
  %8 = alloca %struct.amvdec_core*, align 8
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = call %struct.amvdec_session* @vb2_get_drv_priv(%struct.vb2_queue* %11)
  store %struct.amvdec_session* %12, %struct.amvdec_session** %6, align 8
  %13 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %14 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %13, i32 0, i32 17
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %16, align 8
  store %struct.amvdec_codec_ops* %17, %struct.amvdec_codec_ops** %7, align 8
  %18 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %19 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %18, i32 0, i32 7
  %20 = load %struct.amvdec_core*, %struct.amvdec_core** %19, align 8
  store %struct.amvdec_core* %20, %struct.amvdec_core** %8, align 8
  %21 = load %struct.amvdec_core*, %struct.amvdec_core** %8, align 8
  %22 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %21, i32 0, i32 1
  %23 = load %struct.amvdec_session*, %struct.amvdec_session** %22, align 8
  %24 = icmp ne %struct.amvdec_session* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.amvdec_core*, %struct.amvdec_core** %8, align 8
  %27 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %26, i32 0, i32 1
  %28 = load %struct.amvdec_session*, %struct.amvdec_session** %27, align 8
  %29 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %30 = icmp ne %struct.amvdec_session* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %173

34:                                               ; preds = %25, %2
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %36 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %42 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %46

43:                                               ; preds = %34
  %44 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %45 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %48 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %53 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %46
  store i32 0, i32* %3, align 4
  br label %209

57:                                               ; preds = %51
  %58 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %59 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @STATUS_NEEDS_RESUME, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.amvdec_codec_ops*, %struct.amvdec_codec_ops** %7, align 8
  %71 = getelementptr inbounds %struct.amvdec_codec_ops, %struct.amvdec_codec_ops* %70, i32 0, i32 0
  %72 = load i32 (%struct.amvdec_session*)*, i32 (%struct.amvdec_session*)** %71, align 8
  %73 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %74 = call i32 %72(%struct.amvdec_session* %73)
  %75 = load i8*, i8** @STATUS_RUNNING, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %78 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %3, align 4
  br label %209

79:                                               ; preds = %63, %57
  %80 = load i32, i32* @SIZE_VIFIFO, align 4
  %81 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %82 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %84 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %83, i32 0, i32 7
  %85 = load %struct.amvdec_core*, %struct.amvdec_core** %84, align 8
  %86 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %89 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %92 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %91, i32 0, i32 4
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i32 @dma_alloc_coherent(i32 %87, i32 %90, i32* %92, i32 %93)
  %95 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %96 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %98 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %79
  %102 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %103 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %102, i32 0, i32 7
  %104 = load %struct.amvdec_core*, %struct.amvdec_core** %103, align 8
  %105 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %10, align 4
  br label %173

110:                                              ; preds = %79
  %111 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %112 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %111, i32 0, i32 16
  store i64 0, i64* %112, align 8
  %113 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %114 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %113, i32 0, i32 15
  store i64 0, i64* %114, align 8
  %115 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %116 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %115, i32 0, i32 14
  store i64 0, i64* %116, align 8
  %117 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %118 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %117, i32 0, i32 13
  store i64 0, i64* %118, align 8
  %119 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %120 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %119, i32 0, i32 12
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %123 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %122, i32 0, i32 12
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %126 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %125, i32 0, i32 11
  %127 = call i32 @atomic_set(i32* %126, i32 0)
  %128 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %129 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @v4l2_ctrl_s_ctrl(i32 %130, i32 1)
  %132 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %133 = call i32 @vdec_poweron(%struct.amvdec_session* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %110
  br label %157

137:                                              ; preds = %110
  %138 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %139 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %138, i32 0, i32 9
  store i64 0, i64* %139, align 8
  %140 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %141 = call i64 @vdec_codec_needs_recycle(%struct.amvdec_session* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32, i32* @vdec_recycle_thread, align 4
  %145 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %146 = call i32 @kthread_run(i32 %144, %struct.amvdec_session* %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %147 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %148 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %147, i32 0, i32 8
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %143, %137
  %150 = load i8*, i8** @STATUS_RUNNING, align 8
  %151 = ptrtoint i8* %150 to i64
  %152 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %153 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  %154 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %155 = load %struct.amvdec_core*, %struct.amvdec_core** %8, align 8
  %156 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %155, i32 0, i32 1
  store %struct.amvdec_session* %154, %struct.amvdec_session** %156, align 8
  store i32 0, i32* %3, align 4
  br label %209

157:                                              ; preds = %136
  %158 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %159 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %158, i32 0, i32 7
  %160 = load %struct.amvdec_core*, %struct.amvdec_core** %159, align 8
  %161 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %164 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %167 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %170 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dma_free_coherent(i32 %162, i32 %165, i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %157, %101, %31
  br label %174

174:                                              ; preds = %180, %173
  %175 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %176 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %177)
  store %struct.vb2_v4l2_buffer* %178, %struct.vb2_v4l2_buffer** %9, align 8
  %179 = icmp ne %struct.vb2_v4l2_buffer* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %182 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %183 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %181, i32 %182)
  br label %174

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %191, %184
  %186 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %187 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %188)
  store %struct.vb2_v4l2_buffer* %189, %struct.vb2_v4l2_buffer** %9, align 8
  %190 = icmp ne %struct.vb2_v4l2_buffer* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %193 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %194 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %192, i32 %193)
  br label %185

195:                                              ; preds = %185
  %196 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %197 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %203 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  br label %207

204:                                              ; preds = %195
  %205 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %206 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %205, i32 0, i32 1
  store i32 0, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %207, %149, %69, %56
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.amvdec_session* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #1

declare dso_local i32 @vdec_poweron(%struct.amvdec_session*) #1

declare dso_local i64 @vdec_codec_needs_recycle(%struct.amvdec_session*) #1

declare dso_local i32 @kthread_run(i32, %struct.amvdec_session*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
