; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_hw_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_hw_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i32 }

@CSI_CSICR1 = common dso_local global i32 0, align 4
@BIT_SOF_INTEN = common dso_local global i32 0, align 4
@BIT_RFF_OR_INT = common dso_local global i32 0, align 4
@BIT_FB1_DMA_DONE_INTEN = common dso_local global i32 0, align 4
@BIT_FB2_DMA_DONE_INTEN = common dso_local global i32 0, align 4
@BIT_EOF_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx7_csi*)* @imx7_csi_hw_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx7_csi_hw_enable_irq(%struct.imx7_csi* %0) #0 {
  %2 = alloca %struct.imx7_csi*, align 8
  %3 = alloca i32, align 4
  store %struct.imx7_csi* %0, %struct.imx7_csi** %2, align 8
  %4 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %5 = load i32, i32* @CSI_CSICR1, align 4
  %6 = call i32 @imx7_csi_reg_read(%struct.imx7_csi* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @BIT_SOF_INTEN, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @BIT_RFF_OR_INT, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @BIT_FB1_DMA_DONE_INTEN, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @BIT_FB2_DMA_DONE_INTEN, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @BIT_EOF_INT_EN, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @CSI_CSICR1, align 4
  %25 = call i32 @imx7_csi_reg_write(%struct.imx7_csi* %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @imx7_csi_reg_read(%struct.imx7_csi*, i32) #1

declare dso_local i32 @imx7_csi_reg_write(%struct.imx7_csi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
