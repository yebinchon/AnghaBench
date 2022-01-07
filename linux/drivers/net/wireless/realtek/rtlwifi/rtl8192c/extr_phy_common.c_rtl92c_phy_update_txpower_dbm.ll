; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c_rtl92c_phy_update_txpower_dbm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_phy_common.c_rtl92c_phy_update_txpower_dbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_efuse = type { i64, i64**, i64**, i64** }

@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_24G = common dso_local global i32 0, align 4
@COMP_TXAGC = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%lx dBm, ccktxpwridx = %d, ofdmtxpwridx = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92c_phy_update_txpower_dbm(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_efuse*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %5, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  store %struct.rtl_phy* %15, %struct.rtl_phy** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %17)
  store %struct.rtl_efuse* %18, %struct.rtl_efuse** %7, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = load i32, i32* @WIRELESS_MODE_B, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @_rtl92c_phy_dbm_to_txpwr_idx(%struct.ieee80211_hw* %19, i32 %20, i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %24 = load i32, i32* @WIRELESS_MODE_N_24G, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @_rtl92c_phy_dbm_to_txpwr_idx(%struct.ieee80211_hw* %23, i32 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %29 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %35 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %11, align 8
  br label %40

39:                                               ; preds = %2
  store i64 0, i64* %11, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %42 = load i32, i32* @COMP_TXAGC, align 4
  %43 = load i32, i32* @DBG_TRACE, align 4
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %45, i64 %46)
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %87, %40
  %49 = load i64, i64* %8, align 8
  %50 = icmp slt i64 %49, 14
  br i1 %50, label %51, label %90

51:                                               ; preds = %48
  store i64 0, i64* %9, align 8
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i64, i64* %9, align 8
  %54 = icmp slt i64 %53, 2
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %58 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %57, i32 0, i32 3
  %59 = load i64**, i64*** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i64*, i64** %59, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %56, i64* %64, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %67 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %66, i32 0, i32 2
  %68 = load i64**, i64*** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i64*, i64** %68, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %65, i64* %73, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %76 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %75, i32 0, i32 1
  %77 = load i64**, i64*** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i64*, i64** %77, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %74, i64* %82, align 8
  br label %83

83:                                               ; preds = %55
  %84 = load i64, i64* %9, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %9, align 8
  br label %52

86:                                               ; preds = %52
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %8, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %8, align 8
  br label %48

90:                                               ; preds = %48
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %92 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %93 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @rtl92c_phy_set_txpower_level(%struct.ieee80211_hw* %91, i32 %94)
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i64 @_rtl92c_phy_dbm_to_txpwr_idx(%struct.ieee80211_hw*, i32, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @rtl92c_phy_set_txpower_level(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
