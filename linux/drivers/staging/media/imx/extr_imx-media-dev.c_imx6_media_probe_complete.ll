; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev.c_imx6_media_probe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-dev.c_imx6_media_probe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.imx_media_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*)* @imx6_media_probe_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_media_probe_complete(%struct.v4l2_async_notifier* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_async_notifier*, align 8
  %4 = alloca %struct.imx_media_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %3, align 8
  %6 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %7 = call %struct.imx_media_dev* @notifier2dev(%struct.v4l2_async_notifier* %6)
  store %struct.imx_media_dev* %7, %struct.imx_media_dev** %4, align 8
  %8 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %9 = call i32 @imx_media_probe_complete(%struct.v4l2_async_notifier* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %16 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %19 = call i32 @imx_media_csc_scaler_device_init(%struct.imx_media_dev* %18)
  %20 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %21 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %23 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %29 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %14
  %33 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %34 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @imx_media_csc_scaler_device_register(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %39 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.imx_media_dev* @notifier2dev(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @imx_media_probe_complete(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @imx_media_csc_scaler_device_init(%struct.imx_media_dev*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @imx_media_csc_scaler_device_register(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
