; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.iss_video_fh = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.iss_video = type { i32, i32, i32, i32, i32*, %struct.TYPE_15__*, %struct.TYPE_13__, i32, i32, i32, i32, %struct.iss_pipeline }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*, i32)* }
%struct.TYPE_13__ = type { %struct.media_entity }
%struct.media_entity = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iss_pipeline = type { i32, i32, %struct.iss_video*, i32, i32, i32, %struct.iss_video*, i32, i64, i64, i32* }
%struct.media_graph = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@ISS_PIPELINE_STREAM_OUTPUT = common dso_local global i32 0, align 4
@ISS_PIPELINE_IDLE_OUTPUT = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ISS_PIPELINE_STREAM_INPUT = common dso_local global i32 0, align 4
@ISS_PIPELINE_IDLE_INPUT = common dso_local global i32 0, align 4
@ISS_PIPELINE_STREAM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@ISS_PIPELINE_STREAM_CONTINUOUS = common dso_local global i32 0, align 4
@ISS_VIDEO_DMAQUEUE_UNDERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @iss_video_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_video_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iss_video_fh*, align 8
  %9 = alloca %struct.iss_video*, align 8
  %10 = alloca %struct.media_graph, align 4
  %11 = alloca %struct.media_entity*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iss_pipeline*, align 8
  %14 = alloca %struct.iss_video*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.iss_video_fh* @to_iss_video_fh(i8* %18)
  store %struct.iss_video_fh* %19, %struct.iss_video_fh** %8, align 8
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = call %struct.iss_video* @video_drvdata(%struct.file* %20)
  store %struct.iss_video* %21, %struct.iss_video** %9, align 8
  %22 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %23 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store %struct.media_entity* %24, %struct.media_entity** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %27 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %299

33:                                               ; preds = %3
  %34 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %35 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %34, i32 0, i32 3
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.media_entity*, %struct.media_entity** %11, align 8
  %38 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.media_entity*, %struct.media_entity** %11, align 8
  %43 = call %struct.iss_pipeline* @to_iss_pipeline(%struct.media_entity* %42)
  br label %47

44:                                               ; preds = %33
  %45 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %46 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %45, i32 0, i32 11
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi %struct.iss_pipeline* [ %43, %41 ], [ %46, %44 ]
  store %struct.iss_pipeline* %48, %struct.iss_pipeline** %13, align 8
  %49 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %50 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %49, i32 0, i32 10
  store i32* null, i32** %50, align 8
  %51 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %52 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %51, i32 0, i32 9
  store i64 0, i64* %52, align 8
  %53 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %54 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %56 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %55, i32 0, i32 1
  %57 = load %struct.media_entity*, %struct.media_entity** %11, align 8
  %58 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @media_entity_enum_init(i32* %56, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %291

65:                                               ; preds = %47
  %66 = load %struct.media_entity*, %struct.media_entity** %11, align 8
  %67 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @media_graph_walk_init(%struct.media_graph* %10, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %291

74:                                               ; preds = %65
  %75 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %76 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %75, i32 0, i32 5
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.TYPE_15__*, i32)* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %85 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %84, i32 0, i32 5
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %89, align 8
  %91 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %92 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %91, i32 0, i32 5
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = call i32 %90(%struct.TYPE_15__* %93, i32 1)
  br label %95

95:                                               ; preds = %83, %74
  %96 = load %struct.media_entity*, %struct.media_entity** %11, align 8
  %97 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %98 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %97, i32 0, i32 7
  %99 = call i32 @media_pipeline_start(%struct.media_entity* %96, i32* %98)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %266

103:                                              ; preds = %95
  %104 = load %struct.media_entity*, %struct.media_entity** %11, align 8
  %105 = call i32 @media_graph_walk_start(%struct.media_graph* %10, %struct.media_entity* %104)
  br label %106

106:                                              ; preds = %109, %103
  %107 = call %struct.media_entity* @media_graph_walk_next(%struct.media_graph* %10)
  store %struct.media_entity* %107, %struct.media_entity** %11, align 8
  %108 = icmp ne %struct.media_entity* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %111 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %110, i32 0, i32 1
  %112 = load %struct.media_entity*, %struct.media_entity** %11, align 8
  %113 = call i32 @media_entity_enum_set(i32* %111, %struct.media_entity* %112)
  br label %106

114:                                              ; preds = %106
  %115 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %116 = load %struct.iss_video_fh*, %struct.iss_video_fh** %8, align 8
  %117 = call i32 @iss_video_check_format(%struct.iss_video* %115, %struct.iss_video_fh* %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %261

121:                                              ; preds = %114
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %124 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.iss_video_fh*, %struct.iss_video_fh** %8, align 8
  %126 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %132 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %131, i32 0, i32 10
  store i32 %130, i32* %132, align 4
  %133 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %134 = call %struct.iss_video* @iss_video_far_end(%struct.iss_video* %133)
  store %struct.iss_video* %134, %struct.iss_video** %14, align 8
  %135 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %136 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %121
  %142 = load i32, i32* @ISS_PIPELINE_STREAM_OUTPUT, align 4
  %143 = load i32, i32* @ISS_PIPELINE_IDLE_OUTPUT, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %12, align 4
  %145 = load %struct.iss_video*, %struct.iss_video** %14, align 8
  %146 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %147 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %146, i32 0, i32 2
  store %struct.iss_video* %145, %struct.iss_video** %147, align 8
  %148 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %149 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %150 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %149, i32 0, i32 6
  store %struct.iss_video* %148, %struct.iss_video** %150, align 8
  br label %167

151:                                              ; preds = %121
  %152 = load %struct.iss_video*, %struct.iss_video** %14, align 8
  %153 = icmp ne %struct.iss_video* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @EPIPE, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %16, align 4
  br label %261

157:                                              ; preds = %151
  %158 = load i32, i32* @ISS_PIPELINE_STREAM_INPUT, align 4
  %159 = load i32, i32* @ISS_PIPELINE_IDLE_INPUT, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %12, align 4
  %161 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %162 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %163 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %162, i32 0, i32 2
  store %struct.iss_video* %161, %struct.iss_video** %163, align 8
  %164 = load %struct.iss_video*, %struct.iss_video** %14, align 8
  %165 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %166 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %165, i32 0, i32 6
  store %struct.iss_video* %164, %struct.iss_video** %166, align 8
  br label %167

167:                                              ; preds = %157, %141
  %168 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %169 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %168, i32 0, i32 5
  %170 = load i64, i64* %15, align 8
  %171 = call i32 @spin_lock_irqsave(i32* %169, i64 %170)
  %172 = load i32, i32* @ISS_PIPELINE_STREAM, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %175 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %180 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %184 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %183, i32 0, i32 5
  %185 = load i64, i64* %15, align 8
  %186 = call i32 @spin_unlock_irqrestore(i32* %184, i64 %185)
  %187 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %188 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %167
  %194 = load %struct.iss_video_fh*, %struct.iss_video_fh** %8, align 8
  %195 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %198 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %193, %167
  %200 = load %struct.iss_video_fh*, %struct.iss_video_fh** %8, align 8
  %201 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %200, i32 0, i32 0
  %202 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %203 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %202, i32 0, i32 4
  store i32* %201, i32** %203, align 8
  %204 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %205 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %204, i32 0, i32 9
  %206 = call i32 @INIT_LIST_HEAD(i32* %205)
  %207 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %208 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %207, i32 0, i32 2
  store i32 0, i32* %208, align 8
  %209 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %210 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %209, i32 0, i32 3
  %211 = call i32 @atomic_set(i32* %210, i32 -1)
  %212 = load %struct.iss_video_fh*, %struct.iss_video_fh** %8, align 8
  %213 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %212, i32 0, i32 0
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @vb2_streamon(i32* %213, i32 %214)
  store i32 %215, i32* %16, align 4
  %216 = load i32, i32* %16, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %199
  br label %261

219:                                              ; preds = %199
  %220 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %221 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %220, i32 0, i32 2
  %222 = load %struct.iss_video*, %struct.iss_video** %221, align 8
  %223 = icmp ne %struct.iss_video* %222, null
  br i1 %223, label %251, label %224

224:                                              ; preds = %219
  %225 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %226 = load i32, i32* @ISS_PIPELINE_STREAM_CONTINUOUS, align 4
  %227 = call i32 @omap4iss_pipeline_set_stream(%struct.iss_pipeline* %225, i32 %226)
  store i32 %227, i32* %16, align 4
  %228 = load i32, i32* %16, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %256

231:                                              ; preds = %224
  %232 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %233 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %232, i32 0, i32 7
  %234 = load i64, i64* %17, align 8
  %235 = call i32 @spin_lock_irqsave(i32* %233, i64 %234)
  %236 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %237 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %236, i32 0, i32 9
  %238 = call i64 @list_empty(i32* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %231
  %241 = load i32, i32* @ISS_VIDEO_DMAQUEUE_UNDERRUN, align 4
  %242 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %243 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %240, %231
  %247 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %248 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %247, i32 0, i32 7
  %249 = load i64, i64* %17, align 8
  %250 = call i32 @spin_unlock_irqrestore(i32* %248, i64 %249)
  br label %251

251:                                              ; preds = %246, %219
  %252 = call i32 @media_graph_walk_cleanup(%struct.media_graph* %10)
  %253 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %254 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %253, i32 0, i32 3
  %255 = call i32 @mutex_unlock(i32* %254)
  store i32 0, i32* %4, align 4
  br label %299

256:                                              ; preds = %230
  %257 = load %struct.iss_video_fh*, %struct.iss_video_fh** %8, align 8
  %258 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %257, i32 0, i32 0
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @vb2_streamoff(i32* %258, i32 %259)
  br label %261

261:                                              ; preds = %256, %218, %154, %120
  %262 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %263 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = call i32 @media_pipeline_stop(%struct.media_entity* %264)
  br label %266

266:                                              ; preds = %261, %102
  %267 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %268 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %267, i32 0, i32 5
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %272, align 8
  %274 = icmp ne i32 (%struct.TYPE_15__*, i32)* %273, null
  br i1 %274, label %275, label %287

275:                                              ; preds = %266
  %276 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %277 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %276, i32 0, i32 5
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %281, align 8
  %283 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %284 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %283, i32 0, i32 5
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %284, align 8
  %286 = call i32 %282(%struct.TYPE_15__* %285, i32 0)
  br label %287

287:                                              ; preds = %275, %266
  %288 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %289 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %288, i32 0, i32 4
  store i32* null, i32** %289, align 8
  %290 = call i32 @media_graph_walk_cleanup(%struct.media_graph* %10)
  br label %291

291:                                              ; preds = %287, %73, %64
  %292 = load %struct.iss_pipeline*, %struct.iss_pipeline** %13, align 8
  %293 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %292, i32 0, i32 1
  %294 = call i32 @media_entity_enum_cleanup(i32* %293)
  %295 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %296 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %295, i32 0, i32 3
  %297 = call i32 @mutex_unlock(i32* %296)
  %298 = load i32, i32* %16, align 4
  store i32 %298, i32* %4, align 4
  br label %299

299:                                              ; preds = %291, %251, %30
  %300 = load i32, i32* %4, align 4
  ret i32 %300
}

declare dso_local %struct.iss_video_fh* @to_iss_video_fh(i8*) #1

declare dso_local %struct.iss_video* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iss_pipeline* @to_iss_pipeline(%struct.media_entity*) #1

declare dso_local i32 @media_entity_enum_init(i32*, i32) #1

declare dso_local i32 @media_graph_walk_init(%struct.media_graph*, i32) #1

declare dso_local i32 @media_pipeline_start(%struct.media_entity*, i32*) #1

declare dso_local i32 @media_graph_walk_start(%struct.media_graph*, %struct.media_entity*) #1

declare dso_local %struct.media_entity* @media_graph_walk_next(%struct.media_graph*) #1

declare dso_local i32 @media_entity_enum_set(i32*, %struct.media_entity*) #1

declare dso_local i32 @iss_video_check_format(%struct.iss_video*, %struct.iss_video_fh*) #1

declare dso_local %struct.iss_video* @iss_video_far_end(%struct.iss_video*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @vb2_streamon(i32*, i32) #1

declare dso_local i32 @omap4iss_pipeline_set_stream(%struct.iss_pipeline*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @media_graph_walk_cleanup(%struct.media_graph*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vb2_streamoff(i32*, i32) #1

declare dso_local i32 @media_pipeline_stop(%struct.media_entity*) #1

declare dso_local i32 @media_entity_enum_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
