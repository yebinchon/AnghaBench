; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_drv_info_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_drv_info_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_RX_DRVINFO_SZ = common dso_local global i64 0, align 8
@PHY_STATUS_SIZE = common dso_local global i32 0, align 4
@REG_TRXFF_BNDY = common dso_local global i64 0, align 8
@REG_RCR = common dso_local global i32 0, align 4
@BIT_APP_PHYSTS = common dso_local global i32 0, align 4
@REG_WMAC_OPTION_FUNCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_drv_info_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_drv_info_cfg(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %4 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %5 = load i64, i64* @REG_RX_DRVINFO_SZ, align 8
  %6 = load i32, i32* @PHY_STATUS_SIZE, align 4
  %7 = call i32 @rtw_write8(%struct.rtw_dev* %4, i64 %5, i32 %6)
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = load i64, i64* @REG_TRXFF_BNDY, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @rtw_read8(%struct.rtw_dev* %8, i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 240
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, 15
  store i32 %15, i32* %3, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %17 = load i64, i64* @REG_TRXFF_BNDY, align 8
  %18 = add nsw i64 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @rtw_write8(%struct.rtw_dev* %16, i64 %18, i32 %19)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %22 = load i32, i32* @REG_RCR, align 4
  %23 = load i32, i32* @BIT_APP_PHYSTS, align 4
  %24 = call i32 @rtw_write32_set(%struct.rtw_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %26 = load i64, i64* @REG_WMAC_OPTION_FUNCTION, align 8
  %27 = add nsw i64 %26, 4
  %28 = call i32 @BIT(i32 8)
  %29 = call i32 @BIT(i32 9)
  %30 = or i32 %28, %29
  %31 = call i32 @rtw_write32_clr(%struct.rtw_dev* %25, i64 %27, i32 %30)
  ret i32 0
}

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i64) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_clr(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
