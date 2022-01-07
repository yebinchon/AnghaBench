; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_phy_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_phy_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mt76_rate_power, i32, i32, %struct.TYPE_4__ }
%struct.mt76_rate_power = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.mt76x2_tx_power_info = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@NL80211_CHAN_WIDTH_40 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_phy_set_txpower(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.mt76x2_tx_power_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt76_rate_power, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  store %struct.ieee80211_channel* %21, %struct.ieee80211_channel** %4, align 8
  store i32 0, i32* %8, align 4
  %22 = bitcast %struct.mt76_rate_power* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %25 = call i32 @mt76x2_get_power_info(%struct.mt76x02_dev* %23, %struct.mt76x2_tx_power_info* %5, %struct.ieee80211_channel* %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  br label %40

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @NL80211_CHAN_WIDTH_80, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %29
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %43 = call i32 @mt76x2_get_rate_power(%struct.mt76x02_dev* %41, %struct.mt76_rate_power* %9, %struct.ieee80211_channel* %42)
  %44 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @mt76x02_add_rate_power_offset(%struct.mt76_rate_power* %9, i32 %47)
  %49 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %50 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mt76x02_limit_rate_power(%struct.mt76_rate_power* %9, i32 %52)
  %54 = call i32 @mt76x02_get_max_rate_power(%struct.mt76_rate_power* %9)
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %56 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = call i32 @mt76x2_get_min_rate_power(%struct.mt76_rate_power* %9)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %59, %61
  store i32 %62, i32* %8, align 4
  %63 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %67, %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %6, align 4
  %76 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 3
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %80, %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @min(i32 %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %40
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %113

104:                                              ; preds = %40
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 47
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %108, 47
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %10, align 4
  store i32 47, i32* %6, align 4
  store i32 47, i32* %7, align 4
  br label %112

112:                                              ; preds = %107, %104
  br label %113

113:                                              ; preds = %112, %94
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 0, %114
  %116 = call i32 @mt76x02_add_rate_power_offset(%struct.mt76_rate_power* %9, i32 %115)
  %117 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %120 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %6, align 4
  %122 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %121, %126
  %128 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %129 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* %7, align 4
  %133 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %5, i32 0, i32 3
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %132, %137
  %139 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %140 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %138, i32* %142, align 4
  %143 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %144 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = bitcast %struct.mt76_rate_power* %145 to i8*
  %147 = bitcast %struct.mt76_rate_power* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 4 %147, i64 4, i1 false)
  %148 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @mt76x02_phy_set_txpower(%struct.mt76x02_dev* %148, i32 %149, i32 %150)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mt76x2_get_power_info(%struct.mt76x02_dev*, %struct.mt76x2_tx_power_info*, %struct.ieee80211_channel*) #2

declare dso_local i32 @mt76x2_get_rate_power(%struct.mt76x02_dev*, %struct.mt76_rate_power*, %struct.ieee80211_channel*) #2

declare dso_local i32 @mt76x02_add_rate_power_offset(%struct.mt76_rate_power*, i32) #2

declare dso_local i32 @mt76x02_limit_rate_power(%struct.mt76_rate_power*, i32) #2

declare dso_local i32 @mt76x02_get_max_rate_power(%struct.mt76_rate_power*) #2

declare dso_local i32 @mt76x2_get_min_rate_power(%struct.mt76_rate_power*) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mt76x02_phy_set_txpower(%struct.mt76x02_dev*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
