; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_sw_chnl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_sw_chnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32, i64, i64 }
%struct.rtl_hal = type { i64 }

@COMP_CHAN = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"sw_chnl_inprogress false driver sleep or unload\0A\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@COMP_SCAN = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"switch to channel%d, band type is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8821ae_phy_sw_chnl(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %4, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %6, align 8
  store i64 1000, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %18 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %21 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %123

25:                                               ; preds = %1
  %26 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %123

31:                                               ; preds = %25
  %32 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %33 = call i64 @is_hal_stop(%struct.rtl_hal* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = call i64 @RT_CANNOT_IO(%struct.ieee80211_hw* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %31
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %41 = load i32, i32* @COMP_CHAN, align 4
  %42 = load i32, i32* @DBG_LOUD, align 4
  %43 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %123

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %56, %44
  %46 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %47 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp slt i64 %51, %52
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i1 [ false, %45 ], [ %53, %50 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = call i32 @mdelay(i32 50)
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, 50
  store i64 %59, i64* %8, align 8
  br label %45

60:                                               ; preds = %54
  %61 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %62 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 14
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %67 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BAND_ON_5G, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %73 = load i64, i64* @BAND_ON_5G, align 8
  %74 = call i32 @rtl8821ae_phy_switch_wirelessband(%struct.ieee80211_hw* %72, i64 %73)
  br label %91

75:                                               ; preds = %65, %60
  %76 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %77 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sle i32 %78, 14
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %82 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BAND_ON_2_4G, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %88 = load i64, i64* @BAND_ON_2_4G, align 8
  %89 = call i32 @rtl8821ae_phy_switch_wirelessband(%struct.ieee80211_hw* %87, i64 %88)
  br label %90

90:                                               ; preds = %86, %80, %75
  br label %91

91:                                               ; preds = %90, %71
  %92 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %93 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 1, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %91
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %99 = load i32, i32* @COMP_SCAN, align 4
  %100 = load i32, i32* @DBG_TRACE, align 4
  %101 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %102 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %105 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %103, i64 %106)
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %109 = call i32 @rtl8821ae_phy_sw_chnl_callback(%struct.ieee80211_hw* %108)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %111 = call i32 @rtl8821ae_dm_clear_txpower_tracking_state(%struct.ieee80211_hw* %110)
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %113 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %114 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @rtl8821ae_phy_set_txpower_level(%struct.ieee80211_hw* %112, i32 %115)
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %118 = load i32, i32* @COMP_SCAN, align 4
  %119 = load i32, i32* @DBG_TRACE, align 4
  %120 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %122 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  store i32 1, i32* %2, align 4
  br label %123

123:                                              ; preds = %97, %39, %30, %24
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i64 @RT_CANNOT_IO(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl8821ae_phy_switch_wirelessband(%struct.ieee80211_hw*, i64) #1

declare dso_local i32 @rtl8821ae_phy_sw_chnl_callback(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_clear_txpower_tracking_state(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_phy_set_txpower_level(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
