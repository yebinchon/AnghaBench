; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_imx_media_capture_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_imx_media_capture_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_video_dev = type { i32 }
%struct.capture_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.video_device* }
%struct.video_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_media_capture_device_unregister(%struct.imx_media_video_dev* %0) #0 {
  %2 = alloca %struct.imx_media_video_dev*, align 8
  %3 = alloca %struct.capture_priv*, align 8
  %4 = alloca %struct.video_device*, align 8
  store %struct.imx_media_video_dev* %0, %struct.imx_media_video_dev** %2, align 8
  %5 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %2, align 8
  %6 = call %struct.capture_priv* @to_capture_priv(%struct.imx_media_video_dev* %5)
  store %struct.capture_priv* %6, %struct.capture_priv** %3, align 8
  %7 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %8 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.video_device*, %struct.video_device** %9, align 8
  store %struct.video_device* %10, %struct.video_device** %4, align 8
  %11 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %12 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.video_device*, %struct.video_device** %4, align 8
  %15 = call i64 @video_is_registered(%struct.video_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.video_device*, %struct.video_device** %4, align 8
  %19 = call i32 @video_unregister_device(%struct.video_device* %18)
  %20 = load %struct.video_device*, %struct.video_device** %4, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 0
  %22 = call i32 @media_entity_cleanup(i32* %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %25 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local %struct.capture_priv* @to_capture_priv(%struct.imx_media_video_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @video_is_registered(%struct.video_device*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
