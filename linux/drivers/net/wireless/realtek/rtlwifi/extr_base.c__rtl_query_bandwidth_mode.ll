; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_query_bandwidth_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_query_bandwidth_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rtl_tcb_desc = type { i32, i64, i64, i64 }
%struct.rtl_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64*, i32 }
%struct.rtl_mac = type { i64, i32, i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@RTL_RC_OFDM_RATE54M = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i32 0, align 4
@RTL_SPEC_SUPPORT_VHT = common dso_local global i32 0, align 4
@RTL_RC_HT_RATEMCS15 = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, %struct.rtl_tcb_desc*)* @_rtl_query_bandwidth_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_query_bandwidth_mode(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, %struct.rtl_tcb_desc* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.rtl_tcb_desc*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store %struct.rtl_tcb_desc* %2, %struct.rtl_tcb_desc** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %8, align 8
  %14 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %6, align 8
  %15 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %17 = icmp ne %struct.ieee80211_sta* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %174

19:                                               ; preds = %3
  %20 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %21 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %27 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %33 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31, %25, %19
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43, %37
  br label %174

52:                                               ; preds = %43
  br label %73

53:                                               ; preds = %31
  %54 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %55 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %61 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64, %59
  br label %174

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %53
  br label %73

73:                                               ; preds = %72, %52
  %74 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %6, align 8
  %75 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %6, align 8
  %80 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %73
  br label %174

84:                                               ; preds = %78
  %85 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %6, align 8
  %86 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %89 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @RTL_RC_OFDM_RATE54M, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp sle i64 %87, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %174

98:                                               ; preds = %84
  %99 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %100 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %6, align 8
  %101 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @RTL_SPEC_SUPPORT_VHT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %174

110:                                              ; preds = %98
  %111 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %112 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %110
  %117 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %118 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %124 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122, %116, %110
  %129 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %130 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  br label %174

135:                                              ; preds = %128
  br label %156

136:                                              ; preds = %122
  %137 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %138 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %144 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %149 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147, %142
  br label %174

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %136
  br label %156

156:                                              ; preds = %155, %135
  %157 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %6, align 8
  %158 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %161 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* @RTL_RC_HT_RATEMCS15, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = icmp sle i64 %159, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  br label %174

170:                                              ; preds = %156
  %171 = load i32, i32* @HT_CHANNEL_WIDTH_80, align 4
  %172 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %6, align 8
  %173 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %18, %51, %70, %83, %97, %134, %153, %169, %170, %98
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
