; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i8* }
%struct.hantro_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.video_device = type { i32 }
%struct.hantro_func = type { i64 }
%struct.hantro_ctx = type { %struct.TYPE_7__, i32, i32, %struct.hantro_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_ENCODER = common dso_local global i64 0, align 8
@HANTRO_ENCODERS = common dso_local global i32 0, align 4
@hantro_enc_buf_finish = common dso_local global i32 0, align 4
@queue_init = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_DECODER = common dso_local global i64 0, align 8
@HANTRO_DECODERS = common dso_local global i32 0, align 4
@hantro_dec_buf_finish = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to set up controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @hantro_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hantro_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.hantro_dev*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.hantro_func*, align 8
  %7 = alloca %struct.hantro_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.hantro_dev* @video_drvdata(%struct.file* %10)
  store %struct.hantro_dev* %11, %struct.hantro_dev** %4, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %5, align 8
  %14 = load %struct.video_device*, %struct.video_device** %5, align 8
  %15 = call %struct.hantro_func* @hantro_vdev_to_func(%struct.video_device* %14)
  store %struct.hantro_func* %15, %struct.hantro_func** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.hantro_ctx* @kzalloc(i32 32, i32 %16)
  store %struct.hantro_ctx* %17, %struct.hantro_ctx** %7, align 8
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %19 = icmp ne %struct.hantro_ctx* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %140

23:                                               ; preds = %1
  %24 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %25 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %25, i32 0, i32 3
  store %struct.hantro_dev* %24, %struct.hantro_dev** %26, align 8
  %27 = load %struct.hantro_func*, %struct.hantro_func** %6, align 8
  %28 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MEDIA_ENT_F_PROC_VIDEO_ENCODER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %23
  %33 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %34 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HANTRO_ENCODERS, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @hantro_enc_buf_finish, align 4
  %41 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %44 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %47 = load i32, i32* @queue_init, align 4
  %48 = call i8* @v4l2_m2m_ctx_init(i32 %45, %struct.hantro_ctx* %46, i32 %47)
  %49 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %50 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  br label %86

52:                                               ; preds = %23
  %53 = load %struct.hantro_func*, %struct.hantro_func** %6, align 8
  %54 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MEDIA_ENT_F_PROC_VIDEO_DECODER, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  %59 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %60 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HANTRO_DECODERS, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @hantro_dec_buf_finish, align 4
  %67 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %70 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %73 = load i32, i32* @queue_init, align 4
  %74 = call i8* @v4l2_m2m_ctx_init(i32 %71, %struct.hantro_ctx* %72, i32 %73)
  %75 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %76 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  br label %85

78:                                               ; preds = %52
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i8* @ERR_PTR(i32 %80)
  %82 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %83 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  br label %85

85:                                               ; preds = %78, %58
  br label %86

86:                                               ; preds = %85, %32
  %87 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %88 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %95 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @PTR_ERR(i8* %97)
  store i32 %98, i32* %9, align 4
  %99 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %100 = call i32 @kfree(%struct.hantro_ctx* %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %2, align 4
  br label %140

102:                                              ; preds = %86
  %103 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %104 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %103, i32 0, i32 0
  %105 = load %struct.video_device*, %struct.video_device** %5, align 8
  %106 = call i32 @v4l2_fh_init(%struct.TYPE_7__* %104, %struct.video_device* %105)
  %107 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %108 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %107, i32 0, i32 0
  %109 = load %struct.file*, %struct.file** %3, align 8
  %110 = getelementptr inbounds %struct.file, %struct.file* %109, i32 0, i32 0
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %110, align 8
  %111 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %112 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %111, i32 0, i32 0
  %113 = call i32 @v4l2_fh_add(%struct.TYPE_7__* %112)
  %114 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %115 = call i32 @hantro_reset_fmts(%struct.hantro_ctx* %114)
  %116 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %117 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @hantro_ctrls_setup(%struct.hantro_dev* %116, %struct.hantro_ctx* %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %102
  %123 = call i32 @vpu_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %130

124:                                              ; preds = %102
  %125 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %126 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %125, i32 0, i32 1
  %127 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %128 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32* %126, i32** %129, align 8
  store i32 0, i32* %2, align 4
  br label %140

130:                                              ; preds = %122
  %131 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %132 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %131, i32 0, i32 0
  %133 = call i32 @v4l2_fh_del(%struct.TYPE_7__* %132)
  %134 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %135 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %134, i32 0, i32 0
  %136 = call i32 @v4l2_fh_exit(%struct.TYPE_7__* %135)
  %137 = load %struct.hantro_ctx*, %struct.hantro_ctx** %7, align 8
  %138 = call i32 @kfree(%struct.hantro_ctx* %137)
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %130, %124, %93, %20
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.hantro_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.hantro_func* @hantro_vdev_to_func(%struct.video_device*) #1

declare dso_local %struct.hantro_ctx* @kzalloc(i32, i32) #1

declare dso_local i8* @v4l2_m2m_ctx_init(i32, %struct.hantro_ctx*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @kfree(%struct.hantro_ctx*) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_7__*, %struct.video_device*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_7__*) #1

declare dso_local i32 @hantro_reset_fmts(%struct.hantro_ctx*) #1

declare dso_local i32 @hantro_ctrls_setup(%struct.hantro_dev*, %struct.hantro_ctx*, i32) #1

declare dso_local i32 @vpu_err(i8*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
