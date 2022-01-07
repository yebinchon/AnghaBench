; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_pipeline_video_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_pipeline_video_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }
%struct.media_entity = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.video_device* @imx_media_pipeline_video_device(%struct.media_entity* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.media_entity*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.media_entity* @find_pipeline_entity(%struct.media_entity* %9, i32 0, i32 %10, i32 %11)
  store %struct.media_entity* %12, %struct.media_entity** %8, align 8
  %13 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %14 = icmp ne %struct.media_entity* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.video_device* @ERR_PTR(i32 %17)
  store %struct.video_device* %18, %struct.video_device** %4, align 8
  br label %22

19:                                               ; preds = %3
  %20 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %21 = call %struct.video_device* @media_entity_to_video_device(%struct.media_entity* %20)
  store %struct.video_device* %21, %struct.video_device** %4, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = load %struct.video_device*, %struct.video_device** %4, align 8
  ret %struct.video_device* %23
}

declare dso_local %struct.media_entity* @find_pipeline_entity(%struct.media_entity*, i32, i32, i32) #1

declare dso_local %struct.video_device* @ERR_PTR(i32) #1

declare dso_local %struct.video_device* @media_entity_to_video_device(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
