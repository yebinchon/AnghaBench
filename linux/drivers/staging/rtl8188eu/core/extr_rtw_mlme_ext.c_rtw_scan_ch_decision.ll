; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_rtw_scan_ch_decision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_rtw_scan_ch_decision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.rtw_ieee80211_channel = type { i32, i64 }

@RTW_IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@SCAN_PASSIVE = common dso_local global i64 0, align 8
@RTW_IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.rtw_ieee80211_channel*, i32, %struct.rtw_ieee80211_channel*, i32)* @rtw_scan_ch_decision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_scan_ch_decision(%struct.adapter* %0, %struct.rtw_ieee80211_channel* %1, i32 %2, %struct.rtw_ieee80211_channel* %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.rtw_ieee80211_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtw_ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlme_ext_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.rtw_ieee80211_channel* %1, %struct.rtw_ieee80211_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.rtw_ieee80211_channel* %3, %struct.rtw_ieee80211_channel** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  store %struct.mlme_ext_priv* %16, %struct.mlme_ext_priv** %14, align 8
  %17 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 16, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(%struct.rtw_ieee80211_channel* %17, i32 0, i32 %21)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %97, %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %100

27:                                               ; preds = %23
  %28 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %14, align 8
  %29 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %31, i64 %33
  %35 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @rtw_ch_set_search_ch(%struct.TYPE_2__* %30, i64 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %38, i64 %40
  %42 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %27
  %46 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %46, i64 %48
  %50 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @RTW_IEEE80211_CHAN_DISABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %91, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %13, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %55
  %59 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %59, i64 %61
  %63 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %63, i64 %65
  %67 = bitcast %struct.rtw_ieee80211_channel* %62 to i8*
  %68 = bitcast %struct.rtw_ieee80211_channel* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 16, i1 false)
  %69 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %14, align 8
  %70 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SCAN_PASSIVE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %58
  %80 = load i32, i32* @RTW_IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %81 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %81, i64 %83
  %85 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %80
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %79, %58
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88, %55, %45, %27
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %100

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %23

100:                                              ; preds = %95, %23
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %150

103:                                              ; preds = %100
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %146, %103
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %14, align 8
  %107 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %149

110:                                              ; preds = %104
  %111 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %14, align 8
  %112 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %7, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %119, i64 %121
  %123 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %122, i32 0, i32 1
  store i64 %118, i64* %123, align 8
  %124 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %14, align 8
  %125 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SCAN_PASSIVE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %110
  %135 = load i32, i32* @RTW_IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %136 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %7, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %136, i64 %138
  %140 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %135
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %134, %110
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %104

149:                                              ; preds = %104
  br label %150

150:                                              ; preds = %149, %100
  %151 = load i32, i32* %12, align 4
  ret i32 %151
}

declare dso_local i32 @memset(%struct.rtw_ieee80211_channel*, i32, i32) #1

declare dso_local i32 @rtw_ch_set_search_ch(%struct.TYPE_2__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
