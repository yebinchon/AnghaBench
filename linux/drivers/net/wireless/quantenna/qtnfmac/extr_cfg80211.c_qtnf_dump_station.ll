; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_dump_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_dump_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_info = type { i32, i64 }
%struct.qtnf_vif = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qtnf_sta_node = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32*, %struct.station_info*)* @qtnf_dump_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_dump_station(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32* %3, %struct.station_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.station_info*, align 8
  %12 = alloca %struct.qtnf_vif*, align 8
  %13 = alloca %struct.qtnf_sta_node*, align 8
  %14 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.station_info* %4, %struct.station_info** %11, align 8
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %15)
  store %struct.qtnf_vif* %16, %struct.qtnf_vif** %12, align 8
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %12, align 8
  %18 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %59 [
    i32 128, label %21
    i32 129, label %39
  ]

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.qtnf_vif*, %struct.qtnf_vif** %12, align 8
  %26 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %94

33:                                               ; preds = %24
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.qtnf_vif*, %struct.qtnf_vif** %12, align 8
  %36 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ether_addr_copy(i32* %34, i32 %37)
  br label %62

39:                                               ; preds = %5
  %40 = load %struct.qtnf_vif*, %struct.qtnf_vif** %12, align 8
  %41 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %40, i32 0, i32 3
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.qtnf_sta_node* @qtnf_sta_list_lookup_index(i32* %41, i32 %42)
  store %struct.qtnf_sta_node* %43, %struct.qtnf_sta_node** %13, align 8
  %44 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %13, align 8
  %45 = icmp ne %struct.qtnf_sta_node* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @unlikely(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %94

53:                                               ; preds = %39
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.qtnf_sta_node*, %struct.qtnf_sta_node** %13, align 8
  %56 = getelementptr inbounds %struct.qtnf_sta_node, %struct.qtnf_sta_node* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ether_addr_copy(i32* %54, i32 %57)
  br label %62

59:                                               ; preds = %5
  %60 = load i32, i32* @ENOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %94

62:                                               ; preds = %53, %33
  %63 = load %struct.qtnf_vif*, %struct.qtnf_vif** %12, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.station_info*, %struct.station_info** %11, align 8
  %66 = call i32 @qtnf_cmd_get_sta_info(%struct.qtnf_vif* %63, i32* %64, %struct.station_info* %65)
  store i32 %66, i32* %14, align 4
  %67 = load %struct.qtnf_vif*, %struct.qtnf_vif** %12, align 8
  %68 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 129
  br i1 %71, label %72, label %87

72:                                               ; preds = %62
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.qtnf_vif*, %struct.qtnf_vif** %12, align 8
  %79 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32 @cfg80211_del_sta(i32 %80, i32* %81, i32 %82)
  %84 = load %struct.station_info*, %struct.station_info** %11, align 8
  %85 = getelementptr inbounds %struct.station_info, %struct.station_info* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %77, %72
  br label %87

87:                                               ; preds = %86, %62
  %88 = load %struct.qtnf_vif*, %struct.qtnf_vif** %12, align 8
  %89 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.station_info*, %struct.station_info** %11, align 8
  %92 = getelementptr inbounds %struct.station_info, %struct.station_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %87, %59, %50, %30
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local %struct.qtnf_sta_node* @qtnf_sta_list_lookup_index(i32*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @qtnf_cmd_get_sta_info(%struct.qtnf_vif*, i32*, %struct.station_info*) #1

declare dso_local i32 @cfg80211_del_sta(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
