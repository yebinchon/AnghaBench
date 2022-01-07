; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev.c_imx_media_subdev_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev.c_imx_media_subdev_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32, i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.imx_media_dev = type { i32 }

@IMX_MEDIA_GRP_ID_IPU_CSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"subdev %s bound\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @imx_media_subdev_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_media_subdev_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.imx_media_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %10 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %11 = call %struct.imx_media_dev* @notifier2dev(%struct.v4l2_async_notifier* %10)
  store %struct.imx_media_dev* %11, %struct.imx_media_dev** %8, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IMX_MEDIA_GRP_ID_IPU_CSI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.imx_media_dev*, %struct.imx_media_dev** %8, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = call i32 @imx_media_register_ipu_internal_subdevs(%struct.imx_media_dev* %19, %struct.v4l2_subdev* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.imx_media_dev*, %struct.imx_media_dev** %8, align 8
  %29 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %28, i32 0, i32 0
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @v4l2_info(i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.imx_media_dev* @notifier2dev(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @imx_media_register_ipu_internal_subdevs(%struct.imx_media_dev*, %struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
