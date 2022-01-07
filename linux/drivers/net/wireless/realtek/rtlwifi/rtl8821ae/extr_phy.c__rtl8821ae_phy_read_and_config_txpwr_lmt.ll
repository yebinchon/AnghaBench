; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_read_and_config_txpwr_lmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_read_and_config_txpwr_lmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@RTL8812AE_TXPWR_LMT_ARRAY_LEN = common dso_local global i32 0, align 4
@RTL8812AE_TXPWR_LMT = common dso_local global i32** null, align 8
@RTL8821AE_TXPWR_LMT_ARRAY_LEN = common dso_local global i32 0, align 4
@RTL8821AE_TXPWR_LMT = common dso_local global i32** null, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_phy_read_and_config_txpwr_lmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_phy_read_and_config_txpwr_lmt(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %3, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %4, align 8
  store i32 0, i32* %5, align 4
  %19 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %20 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @RTL8812AE_TXPWR_LMT_ARRAY_LEN, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32**, i32*** @RTL8812AE_TXPWR_LMT, align 8
  store i32** %26, i32*** %7, align 8
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @RTL8821AE_TXPWR_LMT_ARRAY_LEN, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32**, i32*** @RTL8821AE_TXPWR_LMT, align 8
  store i32** %29, i32*** %7, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i32, i32* @COMP_INIT, align 4
  %33 = load i32, i32* @DBG_TRACE, align 4
  %34 = call i32 @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %90, %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %35
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %8, align 8
  %45 = load i32**, i32*** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %9, align 8
  %51 = load i32**, i32*** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %10, align 8
  %57 = load i32**, i32*** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %11, align 8
  %63 = load i32**, i32*** %7, align 8
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %63, i64 %66
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %12, align 8
  %69 = load i32**, i32*** %7, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 5
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %13, align 8
  %75 = load i32**, i32*** %7, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 6
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %75, i64 %78
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %14, align 8
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @_rtl8812ae_phy_config_bb_txpwr_lmt(%struct.ieee80211_hw* %81, i32* %82, i32* %83, i32* %84, i32* %85, i32* %86, i32* %87, i32* %88)
  br label %90

90:                                               ; preds = %39
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 7
  store i32 %92, i32* %5, align 4
  br label %35

93:                                               ; preds = %35
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @_rtl8812ae_phy_config_bb_txpwr_lmt(%struct.ieee80211_hw*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
