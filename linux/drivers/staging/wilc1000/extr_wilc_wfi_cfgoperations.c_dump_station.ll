; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_dump_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_dump_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_info = type { i32, i32 }
%struct.wilc_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NL80211_STA_INFO_SIGNAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32*, %struct.station_info*)* @dump_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_station(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32* %3, %struct.station_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.station_info*, align 8
  %12 = alloca %struct.wilc_vif*, align 8
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.station_info* %4, %struct.station_info** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %14)
  store %struct.wilc_vif* %15, %struct.wilc_vif** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %44

21:                                               ; preds = %5
  %22 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %23 = call i32 @BIT_ULL(i32 %22)
  %24 = load %struct.station_info*, %struct.station_info** %11, align 8
  %25 = getelementptr inbounds %struct.station_info, %struct.station_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.wilc_vif*, %struct.wilc_vif** %12, align 8
  %29 = load %struct.station_info*, %struct.station_info** %11, align 8
  %30 = getelementptr inbounds %struct.station_info, %struct.station_info* %29, i32 0, i32 0
  %31 = call i32 @wilc_get_rssi(%struct.wilc_vif* %28, i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %44

36:                                               ; preds = %21
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.wilc_vif*, %struct.wilc_vif** %12, align 8
  %39 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32* %37, i32 %41, i32 %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %36, %34, %18
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @wilc_get_rssi(%struct.wilc_vif*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
