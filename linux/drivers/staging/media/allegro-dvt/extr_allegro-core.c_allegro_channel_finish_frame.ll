; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_channel_finish_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_channel_finish_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_channel = type { i64, %struct.TYPE_4__, i32, %struct.allegro_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.allegro_dev = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mcu_msg_encode_frame_response = type { i32, i64, i64, i64, i32 }
%struct.vb2_v4l2_buffer = type { i64, i32, i32 }
%struct.anon = type { i64, i64 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"channel %d: error while encoding frame: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"channel %d: only handling first partition table entry (%d entries)\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"channel %d: partition table outside of dst_buf\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"channel %d: encoded frame is outside of dst_buf (offset 0x%x, size 0x%x)\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"channel %d: encoded frame of size %d is at offset 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"not enough space for sequence parameter set: %zd left\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"channel %d: wrote %zd byte SPS nal unit\0A\00", align 1
@AL_ENC_SLICE_TYPE_I = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"not enough space for picture parameter set: %zd left\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"channel %d: wrote %zd byte PPS nal unit\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to write %zd filler data\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"channel %d: wrote %zd bytes filler nal unit\0A\00", align 1
@.str.11 = private unnamed_addr constant [72 x i8] c"non-VCL NAL units do not fill space until VCL NAL unit: %zd bytes left\0A\00", align 1
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_PFRAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"channel %d: encoded frame #%03d (%s%s, %d bytes)\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"IDR, \00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"I slice\00", align 1
@AL_ENC_SLICE_TYPE_P = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"P slice\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.allegro_channel*, %struct.mcu_msg_encode_frame_response*)* @allegro_channel_finish_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_channel_finish_frame(%struct.allegro_channel* %0, %struct.mcu_msg_encode_frame_response* %1) #0 {
  %3 = alloca %struct.allegro_channel*, align 8
  %4 = alloca %struct.mcu_msg_encode_frame_response*, align 8
  %5 = alloca %struct.allegro_dev*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.anon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.allegro_channel* %0, %struct.allegro_channel** %3, align 8
  store %struct.mcu_msg_encode_frame_response* %1, %struct.mcu_msg_encode_frame_response** %4, align 8
  %13 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %14 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %13, i32 0, i32 3
  %15 = load %struct.allegro_dev*, %struct.allegro_dev** %14, align 8
  store %struct.allegro_dev* %15, %struct.allegro_dev** %5, align 8
  %16 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %18 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %20)
  store %struct.vb2_v4l2_buffer* %21, %struct.vb2_v4l2_buffer** %6, align 8
  %22 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %23 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %25)
  store %struct.vb2_v4l2_buffer* %26, %struct.vb2_v4l2_buffer** %7, align 8
  %27 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %28 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = sext i32 %29 to i64
  %32 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %35 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %2
  %39 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %40 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %39, i32 0, i32 1
  %41 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %42 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %45 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32*, i8*, i64, ...) @v4l2_err(i32* %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %46)
  br label %305

48:                                               ; preds = %2
  %49 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %50 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %55 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %54, i32 0, i32 1
  %56 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %57 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %60 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @v4l2_warn(i32* %55, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %58, i32 %61)
  br label %63

63:                                               ; preds = %53, %48
  %64 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %65 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %68 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 16
  %72 = add i64 %66, %71
  %73 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %74 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %73, i32 0, i32 2
  %75 = call i64 @vb2_plane_size(i32* %74, i32 0)
  %76 = icmp ugt i64 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %63
  %78 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %79 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %78, i32 0, i32 1
  %80 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %81 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32*, i8*, i64, ...) @v4l2_err(i32* %79, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  br label %305

84:                                               ; preds = %63
  %85 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %86 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %85, i32 0, i32 2
  %87 = call i8* @vb2_plane_vaddr(i32* %86, i32 0)
  %88 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %89 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr i8, i8* %87, i64 %90
  %92 = bitcast i8* %91 to %struct.anon*
  store %struct.anon* %92, %struct.anon** %8, align 8
  %93 = load %struct.anon*, %struct.anon** %8, align 8
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.anon*, %struct.anon** %8, align 8
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %101 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %100, i32 0, i32 2
  %102 = call i64 @vb2_plane_size(i32* %101, i32 0)
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %84
  %105 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %106 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %105, i32 0, i32 1
  %107 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %108 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.anon*, %struct.anon** %8, align 8
  %111 = getelementptr inbounds %struct.anon, %struct.anon* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.anon*, %struct.anon** %8, align 8
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i32*, i8*, i64, ...) @v4l2_err(i32* %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i64 %109, i64 %112, i64 %115)
  br label %305

117:                                              ; preds = %84
  %118 = load i32, i32* @debug, align 4
  %119 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %120 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %119, i32 0, i32 1
  %121 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %122 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.anon*, %struct.anon** %8, align 8
  %125 = getelementptr inbounds %struct.anon, %struct.anon* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.anon*, %struct.anon** %8, align 8
  %128 = getelementptr inbounds %struct.anon, %struct.anon* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i32, i32, i32*, i8*, i64, i64, ...) @v4l2_dbg(i32 2, i32 %118, i32* %120, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i64 %123, i64 %126, i64 %129)
  %131 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %132 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %131, i32 0, i32 2
  %133 = load %struct.anon*, %struct.anon** %8, align 8
  %134 = getelementptr inbounds %struct.anon, %struct.anon* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.anon*, %struct.anon** %8, align 8
  %137 = getelementptr inbounds %struct.anon, %struct.anon* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = call i32 @vb2_set_plane_payload(i32* %132, i32 0, i64 %139)
  %141 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %142 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %141, i32 0, i32 2
  %143 = call i8* @vb2_plane_vaddr(i32* %142, i32 0)
  store i8* %143, i8** %10, align 8
  %144 = load %struct.anon*, %struct.anon** %8, align 8
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %12, align 8
  %147 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %148 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %178

151:                                              ; preds = %117
  %152 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = load i64, i64* %12, align 8
  %155 = call i64 @allegro_h264_write_sps(%struct.allegro_channel* %152, i8* %153, i64 %154)
  store i64 %155, i64* %11, align 8
  %156 = load i64, i64* %11, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %151
  %159 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %160 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %159, i32 0, i32 1
  %161 = load i64, i64* %12, align 8
  %162 = call i32 (i32*, i8*, i64, ...) @v4l2_err(i32* %160, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i64 %161)
  br label %305

163:                                              ; preds = %151
  %164 = load i64, i64* %11, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 %164
  store i8* %166, i8** %10, align 8
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* %12, align 8
  %169 = sub nsw i64 %168, %167
  store i64 %169, i64* %12, align 8
  %170 = load i32, i32* @debug, align 4
  %171 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %172 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %171, i32 0, i32 1
  %173 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %174 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i32 (i32, i32, i32*, i8*, i64, i64, ...) @v4l2_dbg(i32 1, i32 %170, i32* %172, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %175, i64 %176)
  br label %178

178:                                              ; preds = %163, %117
  %179 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %180 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @AL_ENC_SLICE_TYPE_I, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %211

184:                                              ; preds = %178
  %185 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = load i64, i64* %12, align 8
  %188 = call i64 @allegro_h264_write_pps(%struct.allegro_channel* %185, i8* %186, i64 %187)
  store i64 %188, i64* %11, align 8
  %189 = load i64, i64* %11, align 8
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %184
  %192 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %193 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %192, i32 0, i32 1
  %194 = load i64, i64* %12, align 8
  %195 = call i32 (i32*, i8*, i64, ...) @v4l2_err(i32* %193, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %194)
  br label %305

196:                                              ; preds = %184
  %197 = load i64, i64* %11, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 %197
  store i8* %199, i8** %10, align 8
  %200 = load i64, i64* %11, align 8
  %201 = load i64, i64* %12, align 8
  %202 = sub nsw i64 %201, %200
  store i64 %202, i64* %12, align 8
  %203 = load i32, i32* @debug, align 4
  %204 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %205 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %204, i32 0, i32 1
  %206 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %207 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %11, align 8
  %210 = call i32 (i32, i32, i32*, i8*, i64, i64, ...) @v4l2_dbg(i32 1, i32 %203, i32* %205, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i64 %208, i64 %209)
  br label %211

211:                                              ; preds = %196, %178
  %212 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %213 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %212, i32 0, i32 2
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i8*, i8** %10, align 8
  %217 = load i64, i64* %12, align 8
  %218 = call i64 @nal_h264_write_filler(i32* %215, i8* %216, i64 %217)
  store i64 %218, i64* %11, align 8
  %219 = load i64, i64* %11, align 8
  %220 = icmp slt i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %211
  %222 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %223 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %222, i32 0, i32 1
  %224 = load i64, i64* %12, align 8
  %225 = call i32 (i32*, i8*, i64, ...) @v4l2_err(i32* %223, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %224)
  br label %305

226:                                              ; preds = %211
  %227 = load i64, i64* %11, align 8
  %228 = load i8*, i8** %10, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 %227
  store i8* %229, i8** %10, align 8
  %230 = load i64, i64* %11, align 8
  %231 = load i64, i64* %12, align 8
  %232 = sub nsw i64 %231, %230
  store i64 %232, i64* %12, align 8
  %233 = load i32, i32* @debug, align 4
  %234 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %235 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %234, i32 0, i32 1
  %236 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %237 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %11, align 8
  %240 = call i32 (i32, i32, i32*, i8*, i64, i64, ...) @v4l2_dbg(i32 2, i32 %233, i32* %235, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i64 %238, i64 %239)
  %241 = load i64, i64* %12, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %226
  %244 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %245 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %244, i32 0, i32 1
  %246 = load i64, i64* %12, align 8
  %247 = call i32 (i32*, i8*, i64, ...) @v4l2_err(i32* %245, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i64 0, i64 0), i64 %246)
  br label %305

248:                                              ; preds = %226
  %249 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %249, i32* %9, align 4
  %250 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %251 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %252 = call i32 @v4l2_m2m_buf_copy_metadata(%struct.vb2_v4l2_buffer* %250, %struct.vb2_v4l2_buffer* %251, i32 0)
  %253 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %254 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %248
  %258 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %259 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %260 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %269

263:                                              ; preds = %248
  %264 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  %265 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %266 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %263, %257
  %270 = load i32, i32* @debug, align 4
  %271 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %272 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %271, i32 0, i32 1
  %273 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %274 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %277 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %280 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %285 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %286 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @AL_ENC_SLICE_TYPE_I, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %269
  br label %299

291:                                              ; preds = %269
  %292 = load %struct.mcu_msg_encode_frame_response*, %struct.mcu_msg_encode_frame_response** %4, align 8
  %293 = getelementptr inbounds %struct.mcu_msg_encode_frame_response, %struct.mcu_msg_encode_frame_response* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @AL_ENC_SLICE_TYPE_P, align 8
  %296 = icmp eq i64 %294, %295
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)
  br label %299

299:                                              ; preds = %291, %290
  %300 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %290 ], [ %298, %291 ]
  %301 = load %struct.anon*, %struct.anon** %8, align 8
  %302 = getelementptr inbounds %struct.anon, %struct.anon* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = call i32 (i32, i32, i32*, i8*, i64, i64, ...) @v4l2_dbg(i32 1, i32 %270, i32* %272, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i64 %275, i64 %278, i8* %284, i8* %300, i64 %303)
  br label %305

305:                                              ; preds = %299, %243, %221, %191, %158, %104, %77, %38
  %306 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %307 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %308 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %306, i32 %307)
  %309 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %310 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %311 = load i32, i32* %9, align 4
  %312 = call i32 @allegro_channel_buf_done(%struct.allegro_channel* %309, %struct.vb2_v4l2_buffer* %310, i32 %311)
  %313 = load %struct.allegro_dev*, %struct.allegro_dev** %5, align 8
  %314 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %317 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @v4l2_m2m_job_finish(i32 %315, i32 %319)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @v4l2_warn(i32*, i8*, i64, i32) #1

declare dso_local i64 @vb2_plane_size(i32*, i32) #1

declare dso_local i8* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i64, i64, ...) #1

declare dso_local i32 @vb2_set_plane_payload(i32*, i32, i64) #1

declare dso_local i64 @allegro_h264_write_sps(%struct.allegro_channel*, i8*, i64) #1

declare dso_local i64 @allegro_h264_write_pps(%struct.allegro_channel*, i8*, i64) #1

declare dso_local i64 @nal_h264_write_filler(i32*, i8*, i64) #1

declare dso_local i32 @v4l2_m2m_buf_copy_metadata(%struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @allegro_channel_buf_done(%struct.allegro_channel*, %struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
