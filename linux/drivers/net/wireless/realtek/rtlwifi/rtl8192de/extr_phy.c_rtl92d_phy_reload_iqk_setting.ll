; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_reload_iqk_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_reload_iqk_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_hal, %struct.rtl_phy }
%struct.rtl_hal = type { i32, i32 }
%struct.rtl_phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64**, i32 }

@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"indexforchannel %d done %d\0A\00", align 1
@COMP_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Just Read IQK Matrix reg for channel:%d....\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<====\0A\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_reload_iqk_setting(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 1
  store %struct.rtl_phy* %12, %struct.rtl_phy** %6, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  store %struct.rtl_hal* %14, %struct.rtl_hal** %7, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %16 = load i32, i32* @COMP_CMD, align 4
  %17 = load i32, i32* @DBG_LOUD, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @rtl92d_get_rightchnlplace_for_iqk(i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = load i32, i32* @COMP_CMD, align 4
  %24 = load i32, i32* @DBG_LOUD, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %27 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %25, i32 %32)
  %34 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %35 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %2
  %42 = load i64, i64* %8, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %127

44:                                               ; preds = %41, %38
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %46 = load i32, i32* @COMP_SCAN, align 4
  %47 = load i32, i32* @DBG_LOUD, align 4
  %48 = load i64, i64* %4, align 8
  %49 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %51 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64**, i64*** %55, align 8
  %57 = getelementptr inbounds i64*, i64** %56, i64 0
  %58 = load i64*, i64** %57, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %83

60:                                               ; preds = %44
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %62 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %63 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64**, i64*** %67, align 8
  %69 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %70 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64**, i64*** %74, align 8
  %76 = getelementptr inbounds i64*, i64** %75, i64 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @_rtl92d_phy_patha_fill_iqk_matrix(%struct.ieee80211_hw* %61, i32 1, i64** %68, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %60, %44
  %84 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %85 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @IS_92D_SINGLEPHY(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %126

89:                                               ; preds = %83
  %90 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %91 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64**, i64*** %95, align 8
  %97 = getelementptr inbounds i64*, i64** %96, i64 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %89
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %104 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %105 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64**, i64*** %109, align 8
  %111 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %112 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64**, i64*** %116, align 8
  %118 = getelementptr inbounds i64*, i64** %117, i64 0
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 6
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @_rtl92d_phy_pathb_fill_iqk_matrix(%struct.ieee80211_hw* %103, i32 1, i64** %110, i32 0, i32 %123)
  br label %125

125:                                              ; preds = %102, %89
  br label %126

126:                                              ; preds = %125, %83
  br label %127

127:                                              ; preds = %126, %41
  %128 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %129 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %131 = load i32, i32* @COMP_CMD, align 4
  %132 = load i32, i32* @DBG_LOUD, align 4
  %133 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %130, i32 %131, i32 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @rtl92d_get_rightchnlplace_for_iqk(i64) #1

declare dso_local i32 @_rtl92d_phy_patha_fill_iqk_matrix(%struct.ieee80211_hw*, i32, i64**, i32, i32) #1

declare dso_local i64 @IS_92D_SINGLEPHY(i32) #1

declare dso_local i32 @_rtl92d_phy_pathb_fill_iqk_matrix(%struct.ieee80211_hw*, i32, i64**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
