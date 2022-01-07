; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32, i32, %struct.video_device }
%struct.video_device = type { i32, i32, i32*, i32*, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"allegro\00", align 1
@allegro_fops = common dso_local global i32 0, align 4
@allegro_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@VFL_DIR_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*)* @allegro_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_register_device(%struct.allegro_dev* %0) #0 {
  %2 = alloca %struct.allegro_dev*, align 8
  %3 = alloca %struct.video_device*, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %2, align 8
  %4 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %5 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %4, i32 0, i32 2
  store %struct.video_device* %5, %struct.video_device** %3, align 8
  %6 = load %struct.video_device*, %struct.video_device** %3, align 8
  %7 = getelementptr inbounds %struct.video_device, %struct.video_device* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @strscpy(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %10 = load %struct.video_device*, %struct.video_device** %3, align 8
  %11 = getelementptr inbounds %struct.video_device, %struct.video_device* %10, i32 0, i32 6
  store i32* @allegro_fops, i32** %11, align 8
  %12 = load %struct.video_device*, %struct.video_device** %3, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 5
  store i32* @allegro_ioctl_ops, i32** %13, align 8
  %14 = load i32, i32* @video_device_release_empty, align 4
  %15 = load %struct.video_device*, %struct.video_device** %3, align 8
  %16 = getelementptr inbounds %struct.video_device, %struct.video_device* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %18 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %17, i32 0, i32 1
  %19 = load %struct.video_device*, %struct.video_device** %3, align 8
  %20 = getelementptr inbounds %struct.video_device, %struct.video_device* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %22 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %21, i32 0, i32 0
  %23 = load %struct.video_device*, %struct.video_device** %3, align 8
  %24 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* @VFL_DIR_M2M, align 4
  %26 = load %struct.video_device*, %struct.video_device** %3, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @V4L2_CAP_VIDEO_M2M, align 4
  %29 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.video_device*, %struct.video_device** %3, align 8
  %32 = getelementptr inbounds %struct.video_device, %struct.video_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.video_device*, %struct.video_device** %3, align 8
  %34 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %35 = call i32 @video_set_drvdata(%struct.video_device* %33, %struct.allegro_dev* %34)
  %36 = load %struct.video_device*, %struct.video_device** %3, align 8
  %37 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %38 = call i32 @video_register_device(%struct.video_device* %36, i32 %37, i32 0)
  ret i32 %38
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.allegro_dev*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
