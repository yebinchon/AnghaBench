; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_rx_fifo_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_rx_fifo_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i32 }

@CSI_CSICR1 = common dso_local global i32 0, align 4
@BIT_FCC = common dso_local global i32 0, align 4
@BIT_CLR_RXFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx7_csi*)* @imx7_csi_rx_fifo_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx7_csi_rx_fifo_clear(%struct.imx7_csi* %0) #0 {
  %2 = alloca %struct.imx7_csi*, align 8
  %3 = alloca i32, align 4
  store %struct.imx7_csi* %0, %struct.imx7_csi** %2, align 8
  %4 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %5 = load i32, i32* @CSI_CSICR1, align 4
  %6 = call i32 @imx7_csi_reg_read(%struct.imx7_csi* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BIT_FCC, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load i32, i32* @CSI_CSICR1, align 4
  %13 = call i32 @imx7_csi_reg_write(%struct.imx7_csi* %7, i32 %11, i32 %12)
  %14 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %15 = load i32, i32* @CSI_CSICR1, align 4
  %16 = call i32 @imx7_csi_reg_read(%struct.imx7_csi* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @BIT_CLR_RXFIFO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CSI_CSICR1, align 4
  %22 = call i32 @imx7_csi_reg_write(%struct.imx7_csi* %17, i32 %20, i32 %21)
  %23 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %24 = load i32, i32* @CSI_CSICR1, align 4
  %25 = call i32 @imx7_csi_reg_read(%struct.imx7_csi* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @BIT_FCC, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CSI_CSICR1, align 4
  %31 = call i32 @imx7_csi_reg_write(%struct.imx7_csi* %26, i32 %29, i32 %30)
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
