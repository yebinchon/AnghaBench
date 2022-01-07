; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_config_mac_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_config_mac_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Read MAC_REG_Array\0A\00", align 1
@HARDWARE_TYPE_RTL8821AE = common dso_local global i64 0, align 8
@RTL8821AE_MAC_1T_ARRAYLEN = common dso_local global i32 0, align 4
@RTL8821AE_MAC_REG_ARRAY = common dso_local global i32* null, align 8
@RTL8812AE_MAC_1T_ARRAYLEN = common dso_local global i32 0, align 4
@RTL8812AE_MAC_REG_ARRAY = common dso_local global i32* null, align 8
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Img: MAC_REG_ARRAY LEN %d\0A\00", align 1
@rtl_write_byte_with_val32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8821ae_phy_config_mac_with_headerfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_phy_config_mac_with_headerfile(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %4, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = load i32, i32* @COMP_INIT, align 4
  %13 = load i32, i32* @DBG_TRACE, align 4
  %14 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @RTL8821AE_MAC_1T_ARRAYLEN, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** @RTL8821AE_MAC_REG_ARRAY, align 8
  store i32* %22, i32** %6, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @RTL8812AE_MAC_1T_ARRAYLEN, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32*, i32** @RTL8812AE_MAC_REG_ARRAY, align 8
  store i32* %25, i32** %6, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = load i32, i32* @COMP_INIT, align 4
  %29 = load i32, i32* @DBG_LOUD, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @rtl_write_byte_with_val32, align 4
  %36 = call i32 @__rtl8821ae_phy_config_with_headerfile(%struct.ieee80211_hw* %32, i32* %33, i32 %34, i32 %35)
  ret i32 %36
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @__rtl8821ae_phy_config_with_headerfile(%struct.ieee80211_hw*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
