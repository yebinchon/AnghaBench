; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_phy_set_gain_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_phy.c_mt76x2_phy_set_gain_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i64* }

@NL80211_CHAN_WIDTH_40 = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@AGC = common dso_local global i32 0, align 4
@MT_BBP_AGC_GAIN = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x2_phy_set_gain_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2_phy_set_gain_val(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i64], align 16
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %12 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %10, %14
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  store i64 %15, i64* %16, align 16
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %22, %26
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  store i64 %27, i64* %28, align 8
  store i32 406192128, i32* %3, align 4
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %30 = call i64 @mt76x2_has_ext_lna(%struct.mt76x02_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %1
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %34 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_CHAN_WIDTH_40, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 507641856, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %32, %1
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %43 = call i64 @mt76x2_has_ext_lna(%struct.mt76x02_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %47 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %57 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NL80211_CHAN_WIDTH_40, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 255197184, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %55, %45, %41
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, 248
  store i32 %66, i32* %3, align 4
  %67 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %68 = load i32, i32* @AGC, align 4
  %69 = call i32 @MT_BBP(i32 %68, i32 8)
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @MT_BBP_AGC_GAIN, align 4
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %73 = load i64, i64* %72, align 16
  %74 = call i32 @FIELD_PREP(i32 %71, i64 %73)
  %75 = or i32 %70, %74
  %76 = call i32 @mt76_wr(%struct.mt76x02_dev* %67, i32 %69, i32 %75)
  %77 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %78 = load i32, i32* @AGC, align 4
  %79 = call i32 @MT_BBP(i32 %78, i32 9)
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @MT_BBP_AGC_GAIN, align 4
  %82 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @FIELD_PREP(i32 %81, i64 %83)
  %85 = or i32 %80, %84
  %86 = call i32 @mt76_wr(%struct.mt76x02_dev* %77, i32 %79, i32 %85)
  %87 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %88 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %64
  %98 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %99 = call i32 @mt76x02_phy_dfs_adjust_agc(%struct.mt76x02_dev* %98)
  br label %100

100:                                              ; preds = %97, %64
  ret void
}

declare dso_local i64 @mt76x2_has_ext_lna(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @mt76x02_phy_dfs_adjust_agc(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
