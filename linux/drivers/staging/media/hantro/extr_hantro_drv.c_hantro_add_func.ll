; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_add_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_add_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32, %struct.hantro_func*, %struct.hantro_func*, i32, %struct.TYPE_2__* }
%struct.hantro_func = type { i32, %struct.video_device }
%struct.video_device = type { i32, i32, i32, i32*, i32, i32*, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.of_device_id = type { i8* }

@of_hantro_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate video device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hantro_fops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@VFL_DIR_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M_MPLANE = common dso_local global i32 0, align 4
@hantro_ioctl_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@MEDIA_ENT_F_PROC_VIDEO_ENCODER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Failed to attach functionality to the media device\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"registered %s as /dev/video%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hantro_dev*, i32)* @hantro_add_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hantro_add_func(%struct.hantro_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hantro_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.hantro_func*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca i32, align 4
  store %struct.hantro_dev* %0, %struct.hantro_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @of_hantro_match, align 4
  %11 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.of_device_id* @of_match_node(i32 %10, i32 %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %6, align 8
  %17 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.hantro_func* @devm_kzalloc(%struct.TYPE_2__* %19, i32 72, i32 %20)
  store %struct.hantro_func* %21, %struct.hantro_func** %7, align 8
  %22 = load %struct.hantro_func*, %struct.hantro_func** %7, align 8
  %23 = icmp ne %struct.hantro_func* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %26 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %25, i32 0, i32 0
  %27 = call i32 @v4l2_err(i32* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %120

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.hantro_func*, %struct.hantro_func** %7, align 8
  %33 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hantro_func*, %struct.hantro_func** %7, align 8
  %35 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %34, i32 0, i32 1
  store %struct.video_device* %35, %struct.video_device** %8, align 8
  %36 = load %struct.video_device*, %struct.video_device** %8, align 8
  %37 = getelementptr inbounds %struct.video_device, %struct.video_device* %36, i32 0, i32 8
  store i32* @hantro_fops, i32** %37, align 8
  %38 = load i32, i32* @video_device_release_empty, align 4
  %39 = load %struct.video_device*, %struct.video_device** %8, align 8
  %40 = getelementptr inbounds %struct.video_device, %struct.video_device* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %42 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %41, i32 0, i32 3
  %43 = load %struct.video_device*, %struct.video_device** %8, align 8
  %44 = getelementptr inbounds %struct.video_device, %struct.video_device* %43, i32 0, i32 6
  store i32* %42, i32** %44, align 8
  %45 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %46 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %45, i32 0, i32 0
  %47 = load %struct.video_device*, %struct.video_device** %8, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 5
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* @VFL_DIR_M2M, align 4
  %50 = load %struct.video_device*, %struct.video_device** %8, align 8
  %51 = getelementptr inbounds %struct.video_device, %struct.video_device* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %53 = load i32, i32* @V4L2_CAP_VIDEO_M2M_MPLANE, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.video_device*, %struct.video_device** %8, align 8
  %56 = getelementptr inbounds %struct.video_device, %struct.video_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.video_device*, %struct.video_device** %8, align 8
  %58 = getelementptr inbounds %struct.video_device, %struct.video_device* %57, i32 0, i32 3
  store i32* @hantro_ioctl_ops, i32** %58, align 8
  %59 = load %struct.video_device*, %struct.video_device** %8, align 8
  %60 = getelementptr inbounds %struct.video_device, %struct.video_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %63 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_ENCODER, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %70 = call i32 @snprintf(i32 %61, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_ENCODER, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %30
  %75 = load %struct.hantro_func*, %struct.hantro_func** %7, align 8
  %76 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %77 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %76, i32 0, i32 2
  store %struct.hantro_func* %75, %struct.hantro_func** %77, align 8
  br label %82

78:                                               ; preds = %30
  %79 = load %struct.hantro_func*, %struct.hantro_func** %7, align 8
  %80 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %81 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %80, i32 0, i32 1
  store %struct.hantro_func* %79, %struct.hantro_func** %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.video_device*, %struct.video_device** %8, align 8
  %84 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %85 = call i32 @video_set_drvdata(%struct.video_device* %83, %struct.hantro_dev* %84)
  %86 = load %struct.video_device*, %struct.video_device** %8, align 8
  %87 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %88 = call i32 @video_register_device(%struct.video_device* %86, i32 %87, i32 -1)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %93 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %92, i32 0, i32 0
  %94 = call i32 @v4l2_err(i32* %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %120

96:                                               ; preds = %82
  %97 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %98 = load %struct.hantro_func*, %struct.hantro_func** %7, align 8
  %99 = call i32 @hantro_attach_func(%struct.hantro_dev* %97, %struct.hantro_func* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %104 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %103, i32 0, i32 0
  %105 = call i32 @v4l2_err(i32* %104, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %116

106:                                              ; preds = %96
  %107 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %108 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %107, i32 0, i32 0
  %109 = load %struct.video_device*, %struct.video_device** %8, align 8
  %110 = getelementptr inbounds %struct.video_device, %struct.video_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.video_device*, %struct.video_device** %8, align 8
  %113 = getelementptr inbounds %struct.video_device, %struct.video_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @v4l2_info(i32* %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32 %114)
  store i32 0, i32* %3, align 4
  br label %120

116:                                              ; preds = %102
  %117 = load %struct.video_device*, %struct.video_device** %8, align 8
  %118 = call i32 @video_unregister_device(%struct.video_device* %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %106, %91, %24
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.hantro_func* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.hantro_dev*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @hantro_attach_func(%struct.hantro_dev*, %struct.hantro_func*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
