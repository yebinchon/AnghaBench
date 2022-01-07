; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_get_vht_highest_n_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_get_vht_highest_n_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.rtl_phy }
%struct.TYPE_6__ = type { i32* }
%struct.rtl_phy = type { i32 }

@RF_2T2R = common dso_local global i64 0, align 8
@IEEE80211_VHT_MCS_SUPPORT_0_7 = common dso_local global i32 0, align 4
@RTL_RC_VHT_RATE_2SS_MCS7 = common dso_local global i64 0, align 8
@IEEE80211_VHT_MCS_SUPPORT_0_8 = common dso_local global i32 0, align 4
@RTL_RC_VHT_RATE_2SS_MCS8 = common dso_local global i64 0, align 8
@RTL_RC_VHT_RATE_2SS_MCS9 = common dso_local global i64 0, align 8
@RTL_RC_VHT_RATE_1SS_MCS7 = common dso_local global i64 0, align 8
@RTL_RC_VHT_RATE_1SS_MCS8 = common dso_local global i64 0, align 8
@RTL_RC_VHT_RATE_1SS_MCS9 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*)* @_rtl_get_vht_highest_n_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_get_vht_highest_n_rate(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 1
  store %struct.rtl_phy* %12, %struct.rtl_phy** %6, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %20 = call i64 @get_rf_type(%struct.rtl_phy* %19)
  %21 = load i64, i64* @RF_2T2R, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 12
  %26 = icmp ne i32 %25, 12
  br i1 %26, label %27, label %68

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 12
  %30 = ashr i32 %29, 2
  %31 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @RTL_RC_VHT_RATE_2SS_MCS7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  br label %67

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 12
  %45 = ashr i32 %44, 2
  %46 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @RTL_RC_VHT_RATE_2SS_MCS8, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  br label %66

57:                                               ; preds = %42
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @RTL_RC_VHT_RATE_2SS_MCS9, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %57, %48
  br label %67

67:                                               ; preds = %66, %33
  br label %107

68:                                               ; preds = %23, %2
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 3
  %71 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_7, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %75 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @RTL_RC_VHT_RATE_1SS_MCS7, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  br label %106

82:                                               ; preds = %68
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 3
  %85 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_8, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %89 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @RTL_RC_VHT_RATE_1SS_MCS8, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %7, align 4
  br label %105

96:                                               ; preds = %82
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @RTL_RC_VHT_RATE_1SS_MCS9, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %96, %87
  br label %106

106:                                              ; preds = %105, %73
  br label %107

107:                                              ; preds = %106, %67
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @get_rf_type(%struct.rtl_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
