; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_set_gain_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_set_gain_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64* }

@AGC = common dso_local global i32 0, align 4
@MT_BBP_AGC_GAIN = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x0_phy_set_gain_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_phy_set_gain_val(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %4 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %9, %13
  store i64 %14, i64* %3, align 8
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %16 = load i32, i32* @AGC, align 4
  %17 = call i32 @MT_BBP(i32 %16, i32 8)
  %18 = load i32, i32* @MT_BBP_AGC_GAIN, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %15, i32 %17, i32 %18, i64 %19)
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %22 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %33 = call i32 @is_mt7630(%struct.mt76x02_dev* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %37 = call i32 @mt76x02_phy_dfs_adjust_agc(%struct.mt76x02_dev* %36)
  br label %38

38:                                               ; preds = %35, %31, %1
  ret void
}

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i64) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @is_mt7630(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_phy_dfs_adjust_agc(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
