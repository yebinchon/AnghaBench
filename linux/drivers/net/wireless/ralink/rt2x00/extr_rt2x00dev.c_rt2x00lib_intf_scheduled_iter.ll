; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_intf_scheduled_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_intf_scheduled_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.rt2x00_dev = type { i32 }
%struct.rt2x00_intf = type { i32, i32 }

@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@DELAYED_UPDATE_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @rt2x00lib_intf_scheduled_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00lib_intf_scheduled_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca %struct.rt2x00_intf*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rt2x00_dev*
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif* %11)
  store %struct.rt2x00_intf* %12, %struct.rt2x00_intf** %8, align 8
  %13 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %15 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %35

19:                                               ; preds = %3
  %20 = load i32, i32* @DELAYED_UPDATE_BEACON, align 4
  %21 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %8, align 8
  %22 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %21, i32 0, i32 1
  %23 = call i64 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %8, align 8
  %27 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = call i32 @rt2x00queue_update_beacon(%struct.rt2x00_dev* %29, %struct.ieee80211_vif* %30)
  %32 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %8, align 8
  %33 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %35

35:                                               ; preds = %18, %25, %19
  ret void
}

declare dso_local %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rt2x00queue_update_beacon(%struct.rt2x00_dev*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
