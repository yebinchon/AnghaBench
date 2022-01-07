; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_gnt_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_gnt_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_PAD_CTRL1 = common dso_local global i64 0, align 8
@BIT_BTGP_SPI_EN = common dso_local global i32 0, align 4
@BIT_BTGP_JTAG_EN = common dso_local global i32 0, align 4
@REG_GPIO_MUXCFG = common dso_local global i64 0, align 8
@BIT_FSPI_EN = common dso_local global i32 0, align 4
@BIT_LED1DIS = common dso_local global i32 0, align 4
@REG_SYS_SDIO_CTRL = common dso_local global i64 0, align 8
@BIT_DBG_GNT_WL_BT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822b_coex_cfg_gnt_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_coex_cfg_gnt_debug(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %3 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %4 = load i64, i64* @REG_PAD_CTRL1, align 8
  %5 = add nsw i64 %4, 2
  %6 = load i32, i32* @BIT_BTGP_SPI_EN, align 4
  %7 = ashr i32 %6, 16
  %8 = call i32 @rtw_write8_mask(%struct.rtw_dev* %3, i64 %5, i32 %7, i32 0)
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = load i64, i64* @REG_PAD_CTRL1, align 8
  %11 = add nsw i64 %10, 3
  %12 = load i32, i32* @BIT_BTGP_JTAG_EN, align 4
  %13 = ashr i32 %12, 24
  %14 = call i32 @rtw_write8_mask(%struct.rtw_dev* %9, i64 %11, i32 %13, i32 0)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = load i64, i64* @REG_GPIO_MUXCFG, align 8
  %17 = add nsw i64 %16, 2
  %18 = load i32, i32* @BIT_FSPI_EN, align 4
  %19 = ashr i32 %18, 16
  %20 = call i32 @rtw_write8_mask(%struct.rtw_dev* %15, i64 %17, i32 %19, i32 0)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %22 = load i64, i64* @REG_PAD_CTRL1, align 8
  %23 = add nsw i64 %22, 1
  %24 = load i32, i32* @BIT_LED1DIS, align 4
  %25 = ashr i32 %24, 8
  %26 = call i32 @rtw_write8_mask(%struct.rtw_dev* %21, i64 %23, i32 %25, i32 0)
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %28 = load i64, i64* @REG_SYS_SDIO_CTRL, align 8
  %29 = add nsw i64 %28, 3
  %30 = load i32, i32* @BIT_DBG_GNT_WL_BT, align 4
  %31 = ashr i32 %30, 24
  %32 = call i32 @rtw_write8_mask(%struct.rtw_dev* %27, i64 %29, i32 %31, i32 0)
  ret void
}

declare dso_local i32 @rtw_write8_mask(%struct.rtw_dev*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
