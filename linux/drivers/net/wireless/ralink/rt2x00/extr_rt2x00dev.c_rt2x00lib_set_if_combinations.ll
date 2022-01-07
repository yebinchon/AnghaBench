; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_set_if_combinations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_set_if_combinations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_6__*, %struct.ieee80211_iface_combination*, %struct.TYPE_4__*, %struct.ieee80211_iface_limit }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.ieee80211_iface_combination* }
%struct.ieee80211_iface_combination = type { i32, i32, i32, %struct.ieee80211_iface_limit* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_iface_limit = type { i32, i32 }

@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@IF_COMB_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2x00lib_set_if_combinations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00lib_set_if_combinations(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.ieee80211_iface_limit*, align 8
  %4 = alloca %struct.ieee80211_iface_combination*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %13, i32 0, i32 3
  store %struct.ieee80211_iface_limit* %14, %struct.ieee80211_iface_limit** %3, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ieee80211_iface_limit*, %struct.ieee80211_iface_limit** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = load %struct.ieee80211_iface_limit*, %struct.ieee80211_iface_limit** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 1
  %28 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %27, align 8
  %29 = load i64, i64* @IF_COMB_AP, align 8
  %30 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %28, i64 %29
  store %struct.ieee80211_iface_combination* %30, %struct.ieee80211_iface_combination** %4, align 8
  %31 = load %struct.ieee80211_iface_limit*, %struct.ieee80211_iface_limit** %3, align 8
  %32 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %32, i32 0, i32 3
  store %struct.ieee80211_iface_limit* %31, %struct.ieee80211_iface_limit** %33, align 8
  %34 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.ieee80211_iface_limit*, %struct.ieee80211_iface_limit** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %43, i32 0, i32 1
  %45 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %44, align 8
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store %struct.ieee80211_iface_combination* %45, %struct.ieee80211_iface_combination** %51, align 8
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
