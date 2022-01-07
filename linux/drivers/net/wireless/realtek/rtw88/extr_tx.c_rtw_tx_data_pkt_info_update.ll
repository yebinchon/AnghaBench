; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_rtw_tx_data_pkt_info_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_rtw_tx_data_pkt_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_tx_pkt_info = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.ieee80211_tx_control = type { %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32*, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.rtw_sta_info = type { i32, i32, i8*, i8* }

@DESC_RATE6M = common dso_local global i8* null, align 8
@RTW_CHANNEL_WIDTH_20 = common dso_local global i8* null, align 8
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@DESC_RATE11M = common dso_local global i8* null, align 8
@DESC_RATE54M = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_tx_pkt_info*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @rtw_tx_data_pkt_info_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_tx_data_pkt_info_update(%struct.rtw_dev* %0, %struct.rtw_tx_pkt_info* %1, %struct.ieee80211_tx_control* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw_tx_pkt_info*, align 8
  %7 = alloca %struct.ieee80211_tx_control*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.rtw_sta_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store %struct.rtw_tx_pkt_info* %1, %struct.rtw_tx_pkt_info** %6, align 8
  store %struct.ieee80211_tx_control* %2, %struct.ieee80211_tx_control** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %22 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %23, align 8
  store %struct.ieee80211_sta* %24, %struct.ieee80211_sta** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %28, %struct.ieee80211_hdr** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %29)
  store %struct.ieee80211_tx_info* %30, %struct.ieee80211_tx_info** %11, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %31 = load i8*, i8** @DESC_RATE6M, align 8
  store i8* %31, i8** %17, align 8
  store i8* inttoptr (i64 6 to i8*), i8** %18, align 8
  %32 = load i8*, i8** @RTW_CHANNEL_WIDTH_20, align 8
  store i8* %32, i8** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %33 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %38 = and i32 %36, %37
  %39 = ashr i32 %38, 4
  store i32 %39, i32* %13, align 4
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %41 = icmp ne %struct.ieee80211_sta* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %4
  br label %105

43:                                               ; preds = %4
  %44 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  store i32 1, i32* %16, align 4
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %52 = call i8* @get_tx_ampdu_factor(%struct.ieee80211_sta* %51)
  store i8* %52, i8** %14, align 8
  %53 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %54 = call i8* @get_tx_ampdu_density(%struct.ieee80211_sta* %53)
  store i8* %54, i8** %15, align 8
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %64 = call i8* @get_highest_vht_tx_rate(%struct.rtw_dev* %62, %struct.ieee80211_sta* %63)
  store i8* %64, i8** %17, align 8
  br label %88

65:                                               ; preds = %55
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %73 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %74 = call i8* @get_highest_ht_tx_rate(%struct.rtw_dev* %72, %struct.ieee80211_sta* %73)
  store i8* %74, i8** %17, align 8
  br label %87

75:                                               ; preds = %65
  %76 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %77 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %80, 15
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i8*, i8** @DESC_RATE11M, align 8
  store i8* %83, i8** %17, align 8
  br label %86

84:                                               ; preds = %75
  %85 = load i8*, i8** @DESC_RATE54M, align 8
  store i8* %85, i8** %17, align 8
  br label %86

86:                                               ; preds = %84, %82
  br label %87

87:                                               ; preds = %86, %71
  br label %88

88:                                               ; preds = %87, %61
  %89 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.rtw_sta_info*
  store %struct.rtw_sta_info* %92, %struct.rtw_sta_info** %12, align 8
  %93 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %12, align 8
  %94 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %19, align 8
  %96 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %12, align 8
  %97 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %18, align 8
  %99 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %12, align 8
  %100 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %20, align 4
  %102 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %12, align 8
  %103 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %21, align 4
  br label %105

105:                                              ; preds = %88, %42
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %108 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %111 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %110, i32 0, i32 8
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %114 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %117 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i8*, i8** %17, align 8
  %119 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %120 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %18, align 8
  %122 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %123 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** %19, align 8
  %125 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %126 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %20, align 4
  %128 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %129 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %21, align 4
  %131 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %132 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @get_tx_ampdu_factor(%struct.ieee80211_sta*) #1

declare dso_local i8* @get_tx_ampdu_density(%struct.ieee80211_sta*) #1

declare dso_local i8* @get_highest_vht_tx_rate(%struct.rtw_dev*, %struct.ieee80211_sta*) #1

declare dso_local i8* @get_highest_ht_tx_rate(%struct.rtw_dev*, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
