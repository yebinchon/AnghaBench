; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_streaming_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_streaming_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx7_csi*)* @imx7_csi_streaming_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_streaming_start(%struct.imx7_csi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx7_csi*, align 8
  %4 = alloca i32, align 4
  store %struct.imx7_csi* %0, %struct.imx7_csi** %3, align 8
  %5 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %6 = call i32 @imx7_csi_dma_start(%struct.imx7_csi* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %13 = call i32 @imx7_csi_configure(%struct.imx7_csi* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %20

17:                                               ; preds = %11
  %18 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %19 = call i32 @imx7_csi_enable(%struct.imx7_csi* %18)
  store i32 0, i32* %2, align 4
  br label %24

20:                                               ; preds = %16
  %21 = load %struct.imx7_csi*, %struct.imx7_csi** %3, align 8
  %22 = call i32 @imx7_csi_dma_stop(%struct.imx7_csi* %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %17, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @imx7_csi_dma_start(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_configure(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_enable(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_dma_stop(%struct.imx7_csi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
