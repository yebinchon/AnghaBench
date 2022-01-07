; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { i32, i32, i32, i32 }

@MT_CALIBRATE_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mt7601u_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  store %struct.mt7601u_dev* %7, %struct.mt7601u_dev** %3, align 8
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %12 = call i32 @mt7601u_mac_start(%struct.mt7601u_dev* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %20, i32 0, i32 3
  %22 = load i32, i32* @MT_CALIBRATE_INTERVAL, align 4
  %23 = call i32 @ieee80211_queue_delayed_work(i32 %19, i32* %21, i32 %22)
  %24 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %27, i32 0, i32 1
  %29 = load i32, i32* @MT_CALIBRATE_INTERVAL, align 4
  %30 = call i32 @ieee80211_queue_delayed_work(i32 %26, i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %16, %15
  %32 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7601u_mac_start(%struct.mt7601u_dev*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
