; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_pipeline_csi2_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_pipeline_csi2_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@IMX_MEDIA_GRP_ID_CSI2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_media_pipeline_csi2_channel(%struct.media_entity* %0) #0 {
  %2 = alloca %struct.media_entity*, align 8
  %3 = alloca %struct.media_pad*, align 8
  %4 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %2, align 8
  %5 = load i32, i32* @EPIPE, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  %8 = load i32, i32* @IMX_MEDIA_GRP_ID_CSI2, align 4
  %9 = call %struct.media_pad* @imx_media_pipeline_pad(%struct.media_entity* %7, i32 %8, i32 0, i32 1)
  store %struct.media_pad* %9, %struct.media_pad** %3, align 8
  %10 = load %struct.media_pad*, %struct.media_pad** %3, align 8
  %11 = icmp ne %struct.media_pad* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.media_pad*, %struct.media_pad** %3, align 8
  %14 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local %struct.media_pad* @imx_media_pipeline_pad(%struct.media_entity*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
