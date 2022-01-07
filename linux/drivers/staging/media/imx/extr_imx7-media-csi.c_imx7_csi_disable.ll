; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx7_csi*)* @imx7_csi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx7_csi_disable(%struct.imx7_csi* %0) #0 {
  %2 = alloca %struct.imx7_csi*, align 8
  store %struct.imx7_csi* %0, %struct.imx7_csi** %2, align 8
  %3 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %4 = call i32 @imx7_csi_dmareq_rff_disable(%struct.imx7_csi* %3)
  %5 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %6 = call i32 @imx7_csi_hw_disable_irq(%struct.imx7_csi* %5)
  %7 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %8 = call i32 @imx7_csi_buf_stride_set(%struct.imx7_csi* %7, i32 0)
  %9 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %10 = call i32 @imx7_csi_hw_disable(%struct.imx7_csi* %9)
  ret void
}

declare dso_local i32 @imx7_csi_dmareq_rff_disable(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_hw_disable_irq(%struct.imx7_csi*) #1

declare dso_local i32 @imx7_csi_buf_stride_set(%struct.imx7_csi*, i32) #1

declare dso_local i32 @imx7_csi_hw_disable(%struct.imx7_csi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
