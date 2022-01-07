; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_bt_coexist.c_rtl8723e_dm_bt_agc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_bt_coexist.c_rtl8723e_dm_bt_agc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BT_AGCTABLE_OFF = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"[BT]AGCTable Off!\0A\00", align 1
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_RX_AGC_HP = common dso_local global i32 0, align 4
@RF_RX_G1 = common dso_local global i32 0, align 4
@BT_AGCTABLE_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"[BT]AGCTable On!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_dm_bt_agc_table(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @BT_AGCTABLE_OFF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = load i32, i32* @COMP_BT_COEXIST, align 4
  %14 = load i32, i32* @DBG_TRACE, align 4
  %15 = call i32 @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %17 = call i32 @rtl_write_dword(%struct.rtl_priv* %16, i32 3192, i32 1679556609)
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %19 = call i32 @rtl_write_dword(%struct.rtl_priv* %18, i32 3192, i32 1662844929)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %21 = call i32 @rtl_write_dword(%struct.rtl_priv* %20, i32 3192, i32 1646133249)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = call i32 @rtl_write_dword(%struct.rtl_priv* %22, i32 3192, i32 1629421569)
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %25 = call i32 @rtl_write_dword(%struct.rtl_priv* %24, i32 3192, i32 1612709889)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %27 = load i32, i32* @RF90_PATH_A, align 4
  %28 = load i32, i32* @RF_RX_AGC_HP, align 4
  %29 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %26, i32 %27, i32 %28, i32 1048575, i32 204800)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = load i32, i32* @RF90_PATH_A, align 4
  %32 = load i32, i32* @RF_RX_AGC_HP, align 4
  %33 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %30, i32 %31, i32 %32, i32 1048575, i32 462848)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %35 = load i32, i32* @RF90_PATH_A, align 4
  %36 = load i32, i32* @RF_RX_AGC_HP, align 4
  %37 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %34, i32 %35, i32 %36, i32 1048575, i32 720896)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = load i32, i32* @RF90_PATH_A, align 4
  %40 = load i32, i32* @RF_RX_AGC_HP, align 4
  %41 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %38, i32 %39, i32 %40, i32 1048575, i32 1032192)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = load i32, i32* @RF90_PATH_A, align 4
  %44 = load i32, i32* @RF_RX_G1, align 4
  %45 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %42, i32 %43, i32 %44, i32 1048575, i32 197461)
  br label %89

46:                                               ; preds = %2
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @BT_AGCTABLE_ON, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %52 = load i32, i32* @COMP_BT_COEXIST, align 4
  %53 = load i32, i32* @DBG_TRACE, align 4
  %54 = call i32 @RT_TRACE(%struct.rtl_priv* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %56 = call i32 @rtl_write_dword(%struct.rtl_priv* %55, i32 3192, i32 1310457857)
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %58 = call i32 @rtl_write_dword(%struct.rtl_priv* %57, i32 3192, i32 1293746177)
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = call i32 @rtl_write_dword(%struct.rtl_priv* %59, i32 3192, i32 1277034497)
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = call i32 @rtl_write_dword(%struct.rtl_priv* %61, i32 3192, i32 1260322817)
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %64 = call i32 @rtl_write_dword(%struct.rtl_priv* %63, i32 3192, i32 1243611137)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %66 = load i32, i32* @RF90_PATH_A, align 4
  %67 = load i32, i32* @RF_RX_AGC_HP, align 4
  %68 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %65, i32 %66, i32 %67, i32 1048575, i32 901120)
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %70 = load i32, i32* @RF90_PATH_A, align 4
  %71 = load i32, i32* @RF_RX_AGC_HP, align 4
  %72 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %69, i32 %70, i32 %71, i32 1048575, i32 589824)
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %74 = load i32, i32* @RF90_PATH_A, align 4
  %75 = load i32, i32* @RF_RX_AGC_HP, align 4
  %76 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %73, i32 %74, i32 %75, i32 1048575, i32 331776)
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %78 = load i32, i32* @RF90_PATH_A, align 4
  %79 = load i32, i32* @RF_RX_AGC_HP, align 4
  %80 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %77, i32 %78, i32 %79, i32 1048575, i32 73728)
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %82 = load i32, i32* @RF90_PATH_A, align 4
  %83 = load i32, i32* @RF_RX_G1, align 4
  %84 = call i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw* %81, i32 %82, i32 %83, i32 1048575, i32 853)
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %86 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %50, %46
  br label %89

89:                                               ; preds = %88, %11
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl8723e_phy_set_rf_reg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
