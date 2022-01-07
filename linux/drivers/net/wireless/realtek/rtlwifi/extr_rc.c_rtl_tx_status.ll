; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_rc.c_rtl_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_rc.c_rtl_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.rtl_priv = type { i32 }
%struct.rtl_mac = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.rtl_sta_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ETH_P_PAE = common dso_local global i32 0, align 4
@RTL_AGG_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)* @rtl_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_mac*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_sta_info*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.rtl_priv*
  store %struct.rtl_priv* %18, %struct.rtl_priv** %11, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %20 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %19)
  store %struct.rtl_mac* %20, %struct.rtl_mac** %12, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = call %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff* %21)
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %13, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = call i32 @rtl_get_fc(%struct.sk_buff* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @ieee80211_is_data(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %5
  br label %98

32:                                               ; preds = %27
  %33 = load %struct.rtl_mac*, %struct.rtl_mac** %12, align 8
  %34 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = call i64 @rtl_is_special_data(i32 %35, %struct.sk_buff* %36, i32 1, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %98

40:                                               ; preds = %32
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %42 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %41)
  %43 = call i64 @is_multicast_ether_addr(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %47 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %46)
  %48 = call i64 @is_broadcast_ether_addr(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40
  br label %98

51:                                               ; preds = %45
  %52 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %53 = icmp ne %struct.ieee80211_sta* %52, null
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %58, %struct.rtl_sta_info** %15, align 8
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %54
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @ETH_P_PAE, align 4
  %69 = call i64 @cpu_to_be16(i32 %68)
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %97, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = call i64 @ieee80211_is_data_qos(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = call i64 @rtl_get_tid(%struct.sk_buff* %76)
  store i64 %77, i64* %16, align 8
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %79 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %15, align 8
  %80 = load i64, i64* %16, align 8
  %81 = call i64 @_rtl_tx_aggr_check(%struct.rtl_priv* %78, %struct.rtl_sta_info* %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load i32, i32* @RTL_AGG_PROGRESS, align 4
  %85 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %15, align 8
  %86 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %84, i32* %91, align 4
  %92 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %93 = load i64, i64* %16, align 8
  %94 = call i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta* %92, i64 %93, i32 5000)
  br label %95

95:                                               ; preds = %83, %75
  br label %96

96:                                               ; preds = %95, %71
  br label %97

97:                                               ; preds = %96, %64, %54
  br label %98

98:                                               ; preds = %31, %39, %50, %97, %51
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff*) #1

declare dso_local i32 @rtl_get_fc(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i64 @rtl_is_special_data(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @rtl_get_tid(%struct.sk_buff*) #1

declare dso_local i64 @_rtl_tx_aggr_check(%struct.rtl_priv*, %struct.rtl_sta_info*, i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
