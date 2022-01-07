; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_store_tx_power_by_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_store_tx_power_by_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32**** }

@BAND_ON_2_4G = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i32 0, align 4
@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid Band %d\0A\00", align 1
@MAX_RF_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid RfPath %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid TxNum %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32, i32, i32, i32)* @_rtl92ee_store_tx_power_by_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_store_tx_power_by_rate(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.rtl_phy*, align 8
  %17 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  store %struct.rtl_priv* %19, %struct.rtl_priv** %15, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  store %struct.rtl_phy* %21, %struct.rtl_phy** %16, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i64 @_rtl92ee_get_rate_section_index(i32 %22)
  store i64 %23, i64* %17, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @BAND_ON_2_4G, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %7
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @BAND_ON_5G, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %33 = load i32, i32* @FPHY, align 4
  %34 = load i32, i32* @PHY_TXPWR, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %78

37:                                               ; preds = %27, %7
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @MAX_RF_PATH, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp ugt i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %44 = load i32, i32* @FPHY, align 4
  %45 = load i32, i32* @PHY_TXPWR, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %78

48:                                               ; preds = %37
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @MAX_RF_PATH, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %55 = load i32, i32* @FPHY, align 4
  %56 = load i32, i32* @PHY_TXPWR, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @RT_TRACE(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %78

59:                                               ; preds = %48
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.rtl_phy*, %struct.rtl_phy** %16, align 8
  %62 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %61, i32 0, i32 0
  %63 = load i32****, i32***** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32***, i32**** %63, i64 %65
  %67 = load i32***, i32**** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32**, i32*** %67, i64 %69
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %17, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %60, i32* %77, align 4
  br label %78

78:                                               ; preds = %59, %53, %42, %31
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @_rtl92ee_get_rate_section_index(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
