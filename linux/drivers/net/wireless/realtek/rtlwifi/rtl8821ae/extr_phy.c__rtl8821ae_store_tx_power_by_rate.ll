; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_store_tx_power_by_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_store_tx_power_by_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64**** }

@BAND_ON_2_4G = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid Band %d\0A\00", align 1
@MAX_RF_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid RfPath %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid TxNum %d\0A\00", align 1
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"TxPwrByRateOffset[Band %d][RfPath %d][TxNum %d][RateSection %d] = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i64, i64, i64, i64)* @_rtl8821ae_store_tx_power_by_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_store_tx_power_by_rate(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.rtl_phy*, align 8
  %17 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  store %struct.rtl_priv* %19, %struct.rtl_priv** %15, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  store %struct.rtl_phy* %21, %struct.rtl_phy** %16, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @_rtl8821ae_get_rate_section_index(i64 %22)
  store i64 %23, i64* %17, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @BAND_ON_2_4G, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %7
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @BAND_ON_5G, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %33 = load i32, i32* @COMP_INIT, align 4
  %34 = load i32, i32* @DBG_WARNING, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* @BAND_ON_2_4G, align 8
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %31, %27, %7
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @MAX_RF_PATH, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %44 = load i32, i32* @COMP_INIT, align 4
  %45 = load i32, i32* @DBG_WARNING, align 4
  %46 = load i64, i64* %10, align 8
  %47 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* @MAX_RF_PATH, align 8
  %49 = sub i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %42, %38
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @MAX_RF_PATH, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %56 = load i32, i32* @COMP_INIT, align 4
  %57 = load i32, i32* @DBG_WARNING, align 4
  %58 = load i64, i64* %11, align 8
  %59 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  %60 = load i64, i64* @MAX_RF_PATH, align 8
  %61 = sub i64 %60, 1
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %54, %50
  %63 = load i64, i64* %14, align 8
  %64 = load %struct.rtl_phy*, %struct.rtl_phy** %16, align 8
  %65 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %64, i32 0, i32 0
  %66 = load i64****, i64***** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i64***, i64**** %66, i64 %67
  %69 = load i64***, i64**** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i64**, i64*** %69, i64 %70
  %72 = load i64**, i64*** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i64*, i64** %72, i64 %73
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %17, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %63, i64* %77, align 8
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %79 = load i32, i32* @COMP_INIT, align 4
  %80 = load i32, i32* @DBG_LOUD, align 4
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %17, align 8
  %85 = load %struct.rtl_phy*, %struct.rtl_phy** %16, align 8
  %86 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %85, i32 0, i32 0
  %87 = load i64****, i64***** %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds i64***, i64**** %87, i64 %88
  %90 = load i64***, i64**** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds i64**, i64*** %90, i64 %91
  %93 = load i64**, i64*** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds i64*, i64** %93, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i64 %81, i64 %82, i64 %83, i64 %84, i64 %99)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @_rtl8821ae_get_rate_section_index(i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
