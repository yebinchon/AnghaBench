; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_BCN_CTRL = common dso_local global i32 0, align 4
@BIT_EN_BCN_FUNCTION = common dso_local global i32 0, align 4
@REG_BT_TDMA_TIME = common dso_local global i32 0, align 4
@REG_BT_STAT_CTRL = common dso_local global i32 0, align 4
@REG_GPIO_MUXCFG = common dso_local global i32 0, align 4
@BIT_BT_PTA_EN = common dso_local global i32 0, align 4
@BIT_BT_AOD_GPIO3 = common dso_local global i32 0, align 4
@REG_QUEUE_CTRL = common dso_local global i32 0, align 4
@BIT_PTA_WL_TX_EN = common dso_local global i32 0, align 4
@BIT_PTA_EDCCA_EN = common dso_local global i32 0, align 4
@REG_BT_COEX_V2 = common dso_local global i32 0, align 4
@BIT_GNT_BT_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822b_coex_cfg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_coex_cfg_init(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %3 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %4 = load i32, i32* @REG_BCN_CTRL, align 4
  %5 = load i32, i32* @BIT_EN_BCN_FUNCTION, align 4
  %6 = call i32 @rtw_write8_set(%struct.rtw_dev* %3, i32 %4, i32 %5)
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = load i32, i32* @REG_BT_TDMA_TIME, align 4
  %9 = call i32 @rtw_write8_set(%struct.rtw_dev* %7, i32 %8, i32 5)
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = load i32, i32* @REG_BT_STAT_CTRL, align 4
  %12 = call i32 @rtw_write8(%struct.rtw_dev* %10, i32 %11, i32 1)
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %14 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %15 = load i32, i32* @BIT_BT_PTA_EN, align 4
  %16 = call i32 @rtw_write32_set(%struct.rtw_dev* %13, i32 %14, i32 %15)
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %18 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %19 = load i32, i32* @BIT_BT_AOD_GPIO3, align 4
  %20 = call i32 @rtw_write32_set(%struct.rtw_dev* %17, i32 %18, i32 %19)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %22 = load i32, i32* @REG_QUEUE_CTRL, align 4
  %23 = load i32, i32* @BIT_PTA_WL_TX_EN, align 4
  %24 = call i32 @rtw_write8_set(%struct.rtw_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %26 = load i32, i32* @REG_QUEUE_CTRL, align 4
  %27 = load i32, i32* @BIT_PTA_EDCCA_EN, align 4
  %28 = call i32 @rtw_write8_clr(%struct.rtw_dev* %25, i32 %26, i32 %27)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %30 = load i32, i32* @REG_BT_COEX_V2, align 4
  %31 = load i32, i32* @BIT_GNT_BT_POLARITY, align 4
  %32 = call i32 @rtw_write8_set(%struct.rtw_dev* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @rtw_write8_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8_clr(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
