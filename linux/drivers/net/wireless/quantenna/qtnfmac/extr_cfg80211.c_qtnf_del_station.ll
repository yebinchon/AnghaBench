; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_del_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_del_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_del_parameters = type { i32 }
%struct.qtnf_vif = type { i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"VIF%u.%u: failed to delete STA %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.station_del_parameters*)* @qtnf_del_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_del_station(%struct.wiphy* %0, %struct.net_device* %1, %struct.station_del_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.station_del_parameters*, align 8
  %8 = alloca %struct.qtnf_vif*, align 8
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.station_del_parameters* %2, %struct.station_del_parameters** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %10)
  store %struct.qtnf_vif* %11, %struct.qtnf_vif** %8, align 8
  %12 = load %struct.station_del_parameters*, %struct.station_del_parameters** %7, align 8
  %13 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %18 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load %struct.station_del_parameters*, %struct.station_del_parameters** %7, align 8
  %25 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @is_broadcast_ether_addr(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %31 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %30, i32 0, i32 2
  %32 = load %struct.station_del_parameters*, %struct.station_del_parameters** %7, align 8
  %33 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @qtnf_sta_list_lookup(i32* %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %59

38:                                               ; preds = %29, %23, %16, %3
  %39 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %40 = load %struct.station_del_parameters*, %struct.station_del_parameters** %7, align 8
  %41 = call i32 @qtnf_cmd_send_del_sta(%struct.qtnf_vif* %39, %struct.station_del_parameters* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %46 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %51 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.station_del_parameters*, %struct.station_del_parameters** %7, align 8
  %54 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %44, %38
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @qtnf_sta_list_lookup(i32*, i32) #1

declare dso_local i32 @qtnf_cmd_send_del_sta(%struct.qtnf_vif*, %struct.station_del_parameters*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
