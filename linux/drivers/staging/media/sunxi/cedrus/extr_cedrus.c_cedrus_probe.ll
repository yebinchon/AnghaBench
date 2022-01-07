; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.c_cedrus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.c_cedrus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i8*, i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32, i32* }
%struct.platform_device = type { i32 }
%struct.cedrus_dev = type { %struct.TYPE_7__, i32, %struct.video_device, %struct.TYPE_8__, i32, i32**, %struct.platform_device*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cedrus_video_device = common dso_local global %struct.video_device zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to probe hardware\0A\00", align 1
@cedrus_dec_ops_mpeg2 = common dso_local global i32 0, align 4
@CEDRUS_CODEC_MPEG2 = common dso_local global i64 0, align 8
@cedrus_dec_ops_h264 = common dso_local global i32 0, align 4
@CEDRUS_CODEC_H264 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to register V4L2 device\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cedrus_m2m_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to initialize V4L2 M2M device\0A\00", align 1
@CEDRUS_NAME = common dso_local global i32 0, align 4
@cedrus_m2m_media_ops = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Device registered as /dev/video%d\0A\00", align 1
@MEDIA_ENT_F_PROC_VIDEO_DECODER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Failed to initialize V4L2 M2M media controller\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to register media device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cedrus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cedrus_dev*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cedrus_dev* @devm_kzalloc(i32* %8, i32 104, i32 %9)
  store %struct.cedrus_dev* %10, %struct.cedrus_dev** %4, align 8
  %11 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %12 = icmp ne %struct.cedrus_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %181

16:                                               ; preds = %1
  %17 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %18 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %17, i32 0, i32 2
  %19 = bitcast %struct.video_device* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.video_device* @cedrus_video_device to i8*), i64 32, i1 false)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %23 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %22, i32 0, i32 7
  store i32* %21, i32** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %26 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %25, i32 0, i32 6
  store %struct.platform_device* %24, %struct.platform_device** %26, align 8
  %27 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %28 = call i32 @cedrus_hw_probe(%struct.cedrus_dev* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %181

36:                                               ; preds = %16
  %37 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %38 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %37, i32 0, i32 5
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* @CEDRUS_CODEC_MPEG2, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  store i32* @cedrus_dec_ops_mpeg2, i32** %41, align 8
  %42 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %43 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %42, i32 0, i32 5
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* @CEDRUS_CODEC_H264, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  store i32* @cedrus_dec_ops_h264, i32** %46, align 8
  %47 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %48 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %47, i32 0, i32 4
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %53 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %52, i32 0, i32 0
  %54 = call i32 @v4l2_device_register(i32* %51, %struct.TYPE_7__* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %36
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %181

62:                                               ; preds = %36
  %63 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %64 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %63, i32 0, i32 2
  store %struct.video_device* %64, %struct.video_device** %5, align 8
  %65 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %66 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %65, i32 0, i32 4
  %67 = load %struct.video_device*, %struct.video_device** %5, align 8
  %68 = getelementptr inbounds %struct.video_device, %struct.video_device* %67, i32 0, i32 3
  store i32* %66, i32** %68, align 8
  %69 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %70 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %69, i32 0, i32 0
  %71 = load %struct.video_device*, %struct.video_device** %5, align 8
  %72 = getelementptr inbounds %struct.video_device, %struct.video_device* %71, i32 0, i32 2
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %72, align 8
  %73 = load %struct.video_device*, %struct.video_device** %5, align 8
  %74 = getelementptr inbounds %struct.video_device, %struct.video_device* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** getelementptr inbounds (%struct.video_device, %struct.video_device* @cedrus_video_device, i32 0, i32 0), align 8
  %77 = call i32 @snprintf(i8* %75, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = load %struct.video_device*, %struct.video_device** %5, align 8
  %79 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %80 = call i32 @video_set_drvdata(%struct.video_device* %78, %struct.cedrus_dev* %79)
  %81 = call i32 @v4l2_m2m_init(i32* @cedrus_m2m_ops)
  %82 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %83 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %85 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %62
  %90 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %91 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %90, i32 0, i32 0
  %92 = call i32 @v4l2_err(%struct.TYPE_7__* %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %94 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %6, align 4
  br label %176

97:                                               ; preds = %62
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %101 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store i32* %99, i32** %102, align 8
  %103 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %104 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CEDRUS_NAME, align 4
  %108 = call i32 @strscpy(i32 %106, i32 %107, i32 4)
  %109 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %110 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %109, i32 0, i32 3
  %111 = call i32 @media_device_init(%struct.TYPE_8__* %110)
  %112 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %113 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32* @cedrus_m2m_media_ops, i32** %114, align 8
  %115 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %116 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %115, i32 0, i32 3
  %117 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %118 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store %struct.TYPE_8__* %116, %struct.TYPE_8__** %119, align 8
  %120 = load %struct.video_device*, %struct.video_device** %5, align 8
  %121 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %122 = call i32 @video_register_device(%struct.video_device* %120, i32 %121, i32 0)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %97
  %126 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %127 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %126, i32 0, i32 0
  %128 = call i32 @v4l2_err(%struct.TYPE_7__* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %171

129:                                              ; preds = %97
  %130 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %131 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %130, i32 0, i32 0
  %132 = load %struct.video_device*, %struct.video_device** %5, align 8
  %133 = getelementptr inbounds %struct.video_device, %struct.video_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @v4l2_info(%struct.TYPE_7__* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %137 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.video_device*, %struct.video_device** %5, align 8
  %140 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_DECODER, align 4
  %141 = call i32 @v4l2_m2m_register_media_controller(i32 %138, %struct.video_device* %139, i32 %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %129
  %145 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %146 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %145, i32 0, i32 0
  %147 = call i32 @v4l2_err(%struct.TYPE_7__* %146, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %167

148:                                              ; preds = %129
  %149 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %150 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %149, i32 0, i32 3
  %151 = call i32 @media_device_register(%struct.TYPE_8__* %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %156 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %155, i32 0, i32 0
  %157 = call i32 @v4l2_err(%struct.TYPE_7__* %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %162

158:                                              ; preds = %148
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %161 = call i32 @platform_set_drvdata(%struct.platform_device* %159, %struct.cedrus_dev* %160)
  store i32 0, i32* %2, align 4
  br label %181

162:                                              ; preds = %154
  %163 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %164 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @v4l2_m2m_unregister_media_controller(i32 %165)
  br label %167

167:                                              ; preds = %162, %144
  %168 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %169 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %168, i32 0, i32 2
  %170 = call i32 @video_unregister_device(%struct.video_device* %169)
  br label %171

171:                                              ; preds = %167, %125
  %172 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %173 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @v4l2_m2m_release(i32 %174)
  br label %176

176:                                              ; preds = %171, %89
  %177 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %178 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %177, i32 0, i32 0
  %179 = call i32 @v4l2_device_unregister(%struct.TYPE_7__* %178)
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %176, %158, %57, %31, %13
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.cedrus_dev* @devm_kzalloc(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cedrus_hw_probe(%struct.cedrus_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.cedrus_dev*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @media_device_init(%struct.TYPE_8__*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_info(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @v4l2_m2m_register_media_controller(i32, %struct.video_device*, i32) #1

declare dso_local i32 @media_device_register(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cedrus_dev*) #1

declare dso_local i32 @v4l2_m2m_unregister_media_controller(i32) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
