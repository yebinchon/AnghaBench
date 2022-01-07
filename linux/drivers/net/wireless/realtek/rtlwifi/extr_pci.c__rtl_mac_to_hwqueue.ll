; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_mac_to_hwqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_mac_to_hwqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@BEACON_QUEUE = common dso_local global i64 0, align 8
@MGNT_QUEUE = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8192SE = common dso_local global i64 0, align 8
@HIGH_QUEUE = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8822BE = common dso_local global i64 0, align 8
@ac_to_hwq = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*, %struct.sk_buff*)* @_rtl_mac_to_hwqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_rtl_mac_to_hwqueue(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call i32 @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(i32 %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @rtl_get_fc(%struct.sk_buff* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ieee80211_is_beacon(i32 %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @BEACON_QUEUE, align 8
  store i64 %22, i64* %3, align 8
  br label %74

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @ieee80211_is_mgmt(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @ieee80211_is_ctl(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load i64, i64* @MGNT_QUEUE, align 8
  store i64 %32, i64* %3, align 8
  br label %74

33:                                               ; preds = %27
  %34 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %35 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HARDWARE_TYPE_RTL8192SE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @ieee80211_is_nullfunc(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @HIGH_QUEUE, align 8
  store i64 %44, i64* %3, align 8
  br label %74

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %33
  %47 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %48 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HARDWARE_TYPE_RTL8822BE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff* %53)
  store %struct.ieee80211_hdr* %54, %struct.ieee80211_hdr** %9, align 8
  %55 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @is_multicast_ether_addr(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %52
  %61 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @is_broadcast_ether_addr(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %52
  %67 = load i64, i64* @HIGH_QUEUE, align 8
  store i64 %67, i64* %3, align 8
  br label %74

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i64*, i64** @ac_to_hwq, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %69, %66, %43, %31, %21
  %75 = load i64, i64* %3, align 8
  ret i64 %75
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_fc(%struct.sk_buff*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
