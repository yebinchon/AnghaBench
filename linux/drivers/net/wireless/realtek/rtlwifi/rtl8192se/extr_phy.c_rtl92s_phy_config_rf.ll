; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_config_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_config_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }

@RADIOA_1T_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192seradioa_1t_array = common dso_local global i32* null, align 8
@RF_2T2R_GREEN = common dso_local global i64 0, align 8
@rtl8192seradiob_gm_array = common dso_local global i32* null, align 8
@RADIOB_GM_ARRAYLENGTH = common dso_local global i32 0, align 4
@rtl8192seradiob_array = common dso_local global i32* null, align 8
@RADIOB_ARRAYLENGTH = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Radio No %x\0A\00", align 1
@MASK20BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92s_phy_config_rf(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %5, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  store %struct.rtl_phy* %16, %struct.rtl_phy** %6, align 8
  store i32 1, i32* %8, align 4
  %17 = load i32, i32* @RADIOA_1T_ARRAYLENGTH, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** @rtl8192seradioa_1t_array, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RF_2T2R_GREEN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32*, i32** @rtl8192seradiob_gm_array, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i32, i32* @RADIOB_GM_ARRAYLENGTH, align 4
  store i32 %26, i32* %12, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32*, i32** @rtl8192seradiob_array, align 8
  store i32* %28, i32** %10, align 8
  %29 = load i32, i32* @RADIOB_ARRAYLENGTH, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %32 = load i32, i32* @COMP_INIT, align 4
  %33 = load i32, i32* @DBG_LOUD, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 1, i32* %8, align 4
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %92 [
    i32 131, label %37
    i32 130, label %65
    i32 129, label %90
    i32 128, label %91
  ]

37:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MASK20BITS, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rtl_rfreg_delay(%struct.ieee80211_hw* %43, i32 %44, i32 %49, i32 %50, i32 %56)
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %7, align 4
  br label %38

61:                                               ; preds = %38
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @_rtl92s_phy_config_rfpa_bias_current(%struct.ieee80211_hw* %62, i32 %63)
  br label %93

65:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %86, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MASK20BITS, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rtl_rfreg_delay(%struct.ieee80211_hw* %71, i32 %72, i32 %77, i32 %78, i32 %84)
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %7, align 4
  br label %66

89:                                               ; preds = %66
  br label %93

90:                                               ; preds = %30
  br label %93

91:                                               ; preds = %30
  br label %93

92:                                               ; preds = %30
  br label %93

93:                                               ; preds = %92, %91, %90, %89, %61
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl_rfreg_delay(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @_rtl92s_phy_config_rfpa_bias_current(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
