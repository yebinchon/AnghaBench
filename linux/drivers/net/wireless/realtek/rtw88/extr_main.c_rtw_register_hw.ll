; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_register_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_register_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_hw = type { i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@MFP_CAPABLE = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@SUPPORTS_DYNAMIC_PS = common dso_local global i32 0, align 4
@SUPPORT_FAST_XMIT = common dso_local global i32 0, align 4
@SUPPORTS_AMSDU_IN_AMPDU = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@WIPHY_FLAG_TDLS_EXTERNAL_SETUP = common dso_local global i32 0, align 4
@NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR = common dso_local global i32 0, align 4
@rtw_regd_notifier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to register hw\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"regulatory_hint fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_register_hw(%struct.rtw_dev* %0, %struct.ieee80211_hw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 1
  store i32 4, i32* %20, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 2
  store i32 4, i32* %22, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %24 = load i32, i32* @SIGNAL_DBM, align 4
  %25 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %23, i32 %24)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %27 = load i32, i32* @RX_INCLUDES_FCS, align 4
  %28 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %26, i32 %27)
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %30 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %31 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %29, i32 %30)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %33 = load i32, i32* @MFP_CAPABLE, align 4
  %34 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %32, i32 %33)
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %36 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %37 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %35, i32 %36)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %39 = load i32, i32* @SUPPORTS_PS, align 4
  %40 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %38, i32 %39)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %42 = load i32, i32* @SUPPORTS_DYNAMIC_PS, align 4
  %43 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %41, i32 %42)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %45 = load i32, i32* @SUPPORT_FAST_XMIT, align 4
  %46 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %44, i32 %45)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %48 = load i32, i32* @SUPPORTS_AMSDU_IN_AMPDU, align 4
  %49 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %47, i32 %48)
  %50 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = or i32 %57, %59
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %61, i32 0, i32 3
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %66 = load i32, i32* @WIPHY_FLAG_TDLS_EXTERNAL_SETUP, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR, align 4
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %74
  store i32 %80, i32* %78, align 4
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %82 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %83 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = call i32 @rtw_set_supported_band(%struct.ieee80211_hw* %81, %struct.TYPE_7__* %84)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %87 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %88 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %86, i32 %90)
  %92 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %93 = load i32, i32* @rtw_regd_notifier, align 4
  %94 = call i32 @rtw_regd_init(%struct.rtw_dev* %92, i32 %93)
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %96 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %2
  %100 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %101 = call i32 @rtw_err(%struct.rtw_dev* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %119

103:                                              ; preds = %2
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %105 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %104, i32 0, i32 3
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %108 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @regulatory_hint(%struct.TYPE_8__* %106, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %115 = call i32 @rtw_err(%struct.rtw_dev* %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %103
  %117 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %118 = call i32 @rtw_debugfs_init(%struct.rtw_dev* %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %116, %99
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_set_supported_band(%struct.ieee80211_hw*, %struct.TYPE_7__*) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtw_regd_init(%struct.rtw_dev*, i32) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i64 @regulatory_hint(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rtw_debugfs_init(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
