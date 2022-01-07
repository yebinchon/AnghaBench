; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rx.c_rtw_rx_addr_match_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rx.c_rtw_rx_addr_match_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtw_rx_addr_match_data = type { i32*, %struct.rtw_rx_pkt_stat*, %struct.rtw_dev*, %struct.ieee80211_hdr* }
%struct.rtw_rx_pkt_stat = type { i32 }
%struct.rtw_dev = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32* }
%struct.ieee80211_sta = type { i64 }
%struct.rtw_sta_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @rtw_rx_addr_match_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_rx_addr_match_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.rtw_rx_addr_match_data*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.rtw_dev*, align 8
  %11 = alloca %struct.rtw_sta_info*, align 8
  %12 = alloca %struct.rtw_rx_pkt_stat*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.rtw_rx_addr_match_data*
  store %struct.rtw_rx_addr_match_data* %15, %struct.rtw_rx_addr_match_data** %7, align 8
  %16 = load %struct.rtw_rx_addr_match_data*, %struct.rtw_rx_addr_match_data** %7, align 8
  %17 = getelementptr inbounds %struct.rtw_rx_addr_match_data, %struct.rtw_rx_addr_match_data* %16, i32 0, i32 3
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %9, align 8
  %19 = load %struct.rtw_rx_addr_match_data*, %struct.rtw_rx_addr_match_data** %7, align 8
  %20 = getelementptr inbounds %struct.rtw_rx_addr_match_data, %struct.rtw_rx_addr_match_data* %19, i32 0, i32 2
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %20, align 8
  store %struct.rtw_dev* %21, %struct.rtw_dev** %10, align 8
  %22 = load %struct.rtw_rx_addr_match_data*, %struct.rtw_rx_addr_match_data** %7, align 8
  %23 = getelementptr inbounds %struct.rtw_rx_addr_match_data, %struct.rtw_rx_addr_match_data* %22, i32 0, i32 1
  %24 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %23, align 8
  store %struct.rtw_rx_pkt_stat* %24, %struct.rtw_rx_pkt_stat** %12, align 8
  %25 = load %struct.rtw_rx_addr_match_data*, %struct.rtw_rx_addr_match_data** %7, align 8
  %26 = getelementptr inbounds %struct.rtw_rx_addr_match_data, %struct.rtw_rx_addr_match_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %13, align 8
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = call i64 @ether_addr_equal(i32 %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %3
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @ether_addr_equal(i32 %38, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ieee80211_is_beacon(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44, %35
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %10, align 8
  %52 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32 %53, i32 %56, i32 %59)
  store %struct.ieee80211_sta* %60, %struct.ieee80211_sta** %8, align 8
  br label %62

61:                                               ; preds = %44, %3
  br label %77

62:                                               ; preds = %50
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %64 = icmp ne %struct.ieee80211_sta* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %77

66:                                               ; preds = %62
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.rtw_sta_info*
  store %struct.rtw_sta_info* %70, %struct.rtw_sta_info** %11, align 8
  %71 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %11, align 8
  %72 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %71, i32 0, i32 0
  %73 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %12, align 8
  %74 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ewma_rssi_add(i32* %72, i32 %75)
  br label %77

77:                                               ; preds = %66, %65, %61
  ret void
}

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32, i32, i32) #1

declare dso_local i32 @ewma_rssi_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
