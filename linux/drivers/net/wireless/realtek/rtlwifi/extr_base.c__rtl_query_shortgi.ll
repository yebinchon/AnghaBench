; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_query_shortgi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_query_shortgi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.rtl_tcb_desc = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rtl_mac = type { i64, i32, i32 }

@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, %struct.rtl_tcb_desc*, %struct.ieee80211_tx_info*)* @_rtl_query_shortgi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_query_shortgi(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, %struct.rtl_tcb_desc* %2, %struct.ieee80211_tx_info* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.rtl_tcb_desc*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.rtl_mac*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.rtl_tcb_desc* %2, %struct.rtl_tcb_desc** %7, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %8, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call i32 @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_mac* @rtl_mac(i32 %17)
  store %struct.rtl_mac* %18, %struct.rtl_mac** %9, align 8
  %19 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %7, align 8
  %27 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %29 = icmp eq %struct.ieee80211_sta* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %153

31:                                               ; preds = %4
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %14, align 4
  %50 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %31
  %56 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %153

62:                                               ; preds = %55, %31
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %153

69:                                               ; preds = %65, %62
  %70 = load %struct.rtl_mac*, %struct.rtl_mac** %9, align 8
  %71 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.rtl_mac*, %struct.rtl_mac** %9, align 8
  %77 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %13, align 4
  %79 = load %struct.rtl_mac*, %struct.rtl_mac** %9, align 8
  %80 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  br label %112

82:                                               ; preds = %69
  %83 = load %struct.rtl_mac*, %struct.rtl_mac** %9, align 8
  %84 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %82
  %89 = load %struct.rtl_mac*, %struct.rtl_mac** %9, align 8
  %90 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.rtl_mac*, %struct.rtl_mac** %9, align 8
  %96 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94, %88, %82
  %101 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %102 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %13, align 4
  %107 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %100, %94
  br label %112

112:                                              ; preds = %111, %75
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %7, align 8
  %120 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %119, i32 0, i32 0
  store i32 1, i32* %120, align 4
  br label %124

121:                                              ; preds = %115
  %122 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %7, align 8
  %123 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %118
  br label %145

125:                                              ; preds = %112
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %7, align 8
  %133 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %132, i32 0, i32 0
  store i32 1, i32* %133, align 4
  br label %144

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %7, align 8
  %142 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137, %134
  br label %144

144:                                              ; preds = %143, %131
  br label %145

145:                                              ; preds = %144, %124
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %7, align 8
  %152 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %151, i32 0, i32 0
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %30, %61, %68, %150, %145
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
