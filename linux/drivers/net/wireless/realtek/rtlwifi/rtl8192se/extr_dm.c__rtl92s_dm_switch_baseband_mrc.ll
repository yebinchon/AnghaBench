; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_switch_baseband_mrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_switch_baseband_mrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.rtl_phy }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64 }
%struct.rtl_phy = type { i64 }
%struct.rtl_hal = type { i32 }
%struct.rtl_mac = type { i64, i64 }

@RF_1T1R = common dso_local global i64 0, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@HW_VAR_MRC = common dso_local global i32 0, align 4
@MAC80211_LINKED = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@WIRELESS_MODE_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_dm_switch_baseband_mrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_dm_switch_baseband_mrc(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %3, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %4, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 3
  store %struct.rtl_phy* %18, %struct.rtl_phy** %5, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %20)
  store %struct.rtl_mac* %21, %struct.rtl_mac** %6, align 8
  store i32 1, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %23 = call i64 @is_hal_stop(%struct.rtl_hal* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %142

26:                                               ; preds = %1
  %27 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RF_1T1R, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RF_2T2R, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  br label %142

39:                                               ; preds = %32
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %45, align 8
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = load i32, i32* @HW_VAR_MRC, align 4
  %49 = call i32 %46(%struct.ieee80211_hw* %47, i32 %48, i32* %7)
  %50 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %51 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MAC80211_LINKED, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %39
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @RF90_PATH_A, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @RF90_PATH_B, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %62, %55
  br label %78

78:                                               ; preds = %77, %39
  %79 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %80 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @WIRELESS_MODE_B, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %127

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %8, align 4
  br label %126

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %11, align 4
  %93 = icmp sgt i32 %92, 30
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 1, i32* %8, align 4
  br label %125

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 5
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %8, align 4
  br label %124

99:                                               ; preds = %95
  %100 = load i32, i32* %10, align 4
  %101 = icmp sgt i32 %100, 15
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %107, %108
  %110 = icmp sgt i32 %109, 15
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %121

112:                                              ; preds = %106
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = sub nsw i32 %113, %114
  %116 = icmp slt i32 %115, 10
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 1, i32* %8, align 4
  br label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %117
  br label %121

121:                                              ; preds = %120, %111
  br label %123

122:                                              ; preds = %102, %99
  store i32 1, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %121
  br label %124

124:                                              ; preds = %123, %98
  br label %125

125:                                              ; preds = %124, %94
  br label %126

126:                                              ; preds = %125, %90
  br label %127

127:                                              ; preds = %126, %78
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %133 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %137, align 8
  %139 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %140 = load i32, i32* @HW_VAR_MRC, align 4
  %141 = call i32 %138(%struct.ieee80211_hw* %139, i32 %140, i32* %8)
  br label %142

142:                                              ; preds = %25, %38, %131, %127
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
