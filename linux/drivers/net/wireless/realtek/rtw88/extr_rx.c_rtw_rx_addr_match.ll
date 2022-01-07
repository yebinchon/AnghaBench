; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rx.c_rtw_rx_addr_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rx.c_rtw_rx_addr_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_rx_pkt_stat = type { i32, i64, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.rtw_rx_addr_match_data = type { i32, %struct.rtw_rx_pkt_stat*, %struct.ieee80211_hdr*, %struct.rtw_dev* }

@rtw_rx_addr_match_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_rx_pkt_stat*, %struct.ieee80211_hdr*)* @rtw_rx_addr_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_rx_addr_match(%struct.rtw_dev* %0, %struct.rtw_rx_pkt_stat* %1, %struct.ieee80211_hdr* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_rx_pkt_stat*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.rtw_rx_addr_match_data, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_rx_pkt_stat* %1, %struct.rtw_rx_pkt_stat** %5, align 8
  store %struct.ieee80211_hdr* %2, %struct.ieee80211_hdr** %6, align 8
  %8 = bitcast %struct.rtw_rx_addr_match_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %5, align 8
  %10 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %3
  %14 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %5, align 8
  %15 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %5, align 8
  %20 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ieee80211_is_ctl(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %18, %13, %3
  br label %43

30:                                               ; preds = %23
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %32 = getelementptr inbounds %struct.rtw_rx_addr_match_data, %struct.rtw_rx_addr_match_data* %7, i32 0, i32 3
  store %struct.rtw_dev* %31, %struct.rtw_dev** %32, align 8
  %33 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %34 = getelementptr inbounds %struct.rtw_rx_addr_match_data, %struct.rtw_rx_addr_match_data* %7, i32 0, i32 2
  store %struct.ieee80211_hdr* %33, %struct.ieee80211_hdr** %34, align 8
  %35 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %5, align 8
  %36 = getelementptr inbounds %struct.rtw_rx_addr_match_data, %struct.rtw_rx_addr_match_data* %7, i32 0, i32 1
  store %struct.rtw_rx_pkt_stat* %35, %struct.rtw_rx_pkt_stat** %36, align 8
  %37 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %38 = call i32 @get_hdr_bssid(%struct.ieee80211_hdr* %37)
  %39 = getelementptr inbounds %struct.rtw_rx_addr_match_data, %struct.rtw_rx_addr_match_data* %7, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %41 = load i32, i32* @rtw_rx_addr_match_iter, align 4
  %42 = call i32 @rtw_iterate_vifs_atomic(%struct.rtw_dev* %40, i32 %41, %struct.rtw_rx_addr_match_data* %7)
  br label %43

43:                                               ; preds = %30, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #2

declare dso_local i32 @get_hdr_bssid(%struct.ieee80211_hdr*) #2

declare dso_local i32 @rtw_iterate_vifs_atomic(%struct.rtw_dev*, i32, %struct.rtw_rx_addr_match_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
