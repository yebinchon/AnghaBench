; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_get_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_get_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.link_ant }
%struct.link_ant = type { i32, %struct.antenna_setup }
%struct.antenna_setup = type { i32, i32 }

@ANTENNA_TX_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_HW_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_RX_DIVERSITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00mac_get_antenna(%struct.ieee80211_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca %struct.link_ant*, align 8
  %9 = alloca %struct.antenna_setup*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %11, align 8
  store %struct.rt2x00_dev* %12, %struct.rt2x00_dev** %7, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.link_ant* %15, %struct.link_ant** %8, align 8
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %18, i32 0, i32 1
  store %struct.antenna_setup* %19, %struct.antenna_setup** %9, align 8
  %20 = load %struct.link_ant*, %struct.link_ant** %8, align 8
  %21 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ANTENNA_TX_DIVERSITY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ANTENNA_HW_DIVERSITY, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.antenna_setup*, %struct.antenna_setup** %9, align 8
  %31 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.link_ant*, %struct.link_ant** %8, align 8
  %36 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ANTENNA_RX_DIVERSITY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ANTENNA_HW_DIVERSITY, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.antenna_setup*, %struct.antenna_setup** %9, align 8
  %46 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %41
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
