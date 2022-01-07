; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_txpowertracking_callback_thermalmeter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_txpowertracking_callback_thermalmeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.rtl_efuse = type { i32 }

@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_T_METER = common dso_local global i32 0, align 4
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermal meter 0x%x\0A\00", align 1
@FW_CMD_TXPWR_TRACK_THERMAL = common dso_local global i32 0, align 4
@FW_TXPWR_TRACK_THERMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Write to FW Thermal Val = 0x%x\0A\00", align 1
@WFM5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_dm_txpowertracking_callback_thermalmeter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_dm_txpowertracking_callback_thermalmeter(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %10)
  store %struct.rtl_efuse* %11, %struct.rtl_efuse** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = load i32, i32* @RF90_PATH_A, align 4
  %17 = load i32, i32* @RF_T_METER, align 4
  %18 = call i64 @rtl_get_rfreg(%struct.ieee80211_hw* %15, i32 %16, i32 %17, i32 31)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %22 = load i32, i32* @DBG_LOUD, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %29 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = call i32 @hal_get_firmwareversion(%struct.rtl_priv* %39)
  %41 = icmp sge i32 %40, 53
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %44 = load i32, i32* @FW_CMD_TXPWR_TRACK_THERMAL, align 4
  %45 = call i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw* %43, i32 %44)
  br label %70

46:                                               ; preds = %34
  %47 = load i32, i32* @FW_TXPWR_TRACK_THERMAL, align 4
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %47, %54
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %55, %57
  store i32 %58, i32* %6, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %61 = load i32, i32* @DBG_LOUD, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = load i32, i32* @WFM5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @rtl_write_dword(%struct.rtl_priv* %64, i32 %65, i32 %66)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = call i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw* %68)
  br label %70

70:                                               ; preds = %46, %42
  br label %71

71:                                               ; preds = %70, %1
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %73 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i64 @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @hal_get_firmwareversion(%struct.rtl_priv*) #1

declare dso_local i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92s_phy_chk_fwcmd_iodone(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
