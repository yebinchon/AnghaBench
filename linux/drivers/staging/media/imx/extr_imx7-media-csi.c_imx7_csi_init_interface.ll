; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_init_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_init_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i32 }

@BIT_SOF_POL = common dso_local global i32 0, align 4
@BIT_REDGE = common dso_local global i32 0, align 4
@BIT_GCLK_MODE = common dso_local global i32 0, align 4
@BIT_HSYNC_POL = common dso_local global i32 0, align 4
@BIT_FCC = common dso_local global i32 0, align 4
@SHIFT_MCLKDIV = common dso_local global i32 0, align 4
@BIT_MCLKEN = common dso_local global i32 0, align 4
@CSI_CSICR1 = common dso_local global i32 0, align 4
@CSI_CSIIMAG_PARA = common dso_local global i32 0, align 4
@BIT_DMA_REFLASH_RFF = common dso_local global i32 0, align 4
@CSI_CSICR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx7_csi*)* @imx7_csi_init_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx7_csi_init_interface(%struct.imx7_csi* %0) #0 {
  %2 = alloca %struct.imx7_csi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.imx7_csi* %0, %struct.imx7_csi** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @BIT_SOF_POL, align 4
  %6 = load i32, i32* @BIT_REDGE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @BIT_GCLK_MODE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @BIT_HSYNC_POL, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BIT_FCC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SHIFT_MCLKDIV, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @BIT_MCLKEN, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @CSI_CSICR1, align 4
  %22 = call i32 @imx7_csi_reg_write(%struct.imx7_csi* %19, i32 %20, i32 %21)
  store i32 52429400, i32* %4, align 4
  %23 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @CSI_CSIIMAG_PARA, align 4
  %26 = call i32 @imx7_csi_reg_write(%struct.imx7_csi* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @BIT_DMA_REFLASH_RFF, align 4
  store i32 %27, i32* %3, align 4
  %28 = load %struct.imx7_csi*, %struct.imx7_csi** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @CSI_CSICR3, align 4
  %31 = call i32 @imx7_csi_reg_write(%struct.imx7_csi* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @imx7_csi_reg_write(%struct.imx7_csi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
