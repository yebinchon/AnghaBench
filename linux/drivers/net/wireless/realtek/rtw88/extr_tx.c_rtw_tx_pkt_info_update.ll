; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_rtw_tx_pkt_info_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_rtw_tx_pkt_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { i32 }
%struct.rtw_tx_pkt_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_control = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.rtw_sta_info = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }

@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_tx_pkt_info_update(%struct.rtw_dev* %0, %struct.rtw_tx_pkt_info* %1, %struct.ieee80211_tx_control* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw_tx_pkt_info*, align 8
  %7 = alloca %struct.ieee80211_tx_control*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.rtw_chip_info*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.rtw_sta_info*, align 8
  %13 = alloca %struct.ieee80211_vif*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store %struct.rtw_tx_pkt_info* %1, %struct.rtw_tx_pkt_info** %6, align 8
  store %struct.ieee80211_tx_control* %2, %struct.ieee80211_tx_control** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 0
  %20 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %19, align 8
  store %struct.rtw_chip_info* %20, %struct.rtw_chip_info** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %21)
  store %struct.ieee80211_tx_info* %22, %struct.ieee80211_tx_info** %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %26, %struct.ieee80211_hdr** %11, align 8
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %13, align 8
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %30 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.rtw_sta_info*
  store %struct.rtw_sta_info* %40, %struct.rtw_sta_info** %12, align 8
  %41 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %12, align 8
  %42 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %41, i32 0, i32 0
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %42, align 8
  store %struct.ieee80211_vif* %43, %struct.ieee80211_vif** %13, align 8
  br label %44

44:                                               ; preds = %34, %4
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @ieee80211_is_mgmt(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @ieee80211_is_nullfunc(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %44
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %54 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %55 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %7, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call i32 @rtw_tx_mgmt_pkt_info_update(%struct.rtw_dev* %53, %struct.rtw_tx_pkt_info* %54, %struct.ieee80211_tx_control* %55, %struct.sk_buff* %56)
  br label %69

58:                                               ; preds = %48
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @ieee80211_is_data(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %64 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %65 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = call i32 @rtw_tx_data_pkt_info_update(%struct.rtw_dev* %63, %struct.rtw_tx_pkt_info* %64, %struct.ieee80211_tx_control* %65, %struct.sk_buff* %66)
  br label %68

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %71 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %72, align 8
  %74 = icmp ne %struct.ieee80211_key_conf* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %77 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %78, align 8
  store %struct.ieee80211_key_conf* %79, %struct.ieee80211_key_conf** %17, align 8
  %80 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %17, align 8
  %81 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %85 [
    i32 128, label %83
    i32 129, label %83
    i32 130, label %83
    i32 131, label %84
  ]

83:                                               ; preds = %75, %75, %75
  store i32 1, i32* %15, align 4
  br label %86

84:                                               ; preds = %75
  store i32 3, i32* %15, align 4
  br label %86

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %84, %83
  br label %87

87:                                               ; preds = %86, %69
  %88 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %89 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @is_broadcast_ether_addr(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %95 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @is_multicast_ether_addr(i32 %96)
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %93, %87
  %100 = phi i1 [ true, %87 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %16, align 4
  %102 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %103 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %110 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %111 = call i32 @rtw_tx_report_enable(%struct.rtw_dev* %109, %struct.rtw_tx_pkt_info* %110)
  br label %112

112:                                              ; preds = %108, %99
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %115 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %118 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %123 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %125 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %128 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %133 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %135 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %134, i32 0, i32 2
  store i32 1, i32* %135, align 4
  %136 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %137 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %139 = call i32 @rtw_tx_stats(%struct.rtw_dev* %136, %struct.ieee80211_vif* %137, %struct.sk_buff* %138)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i32 @rtw_tx_mgmt_pkt_info_update(%struct.rtw_dev*, %struct.rtw_tx_pkt_info*, %struct.ieee80211_tx_control*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @rtw_tx_data_pkt_info_update(%struct.rtw_dev*, %struct.rtw_tx_pkt_info*, %struct.ieee80211_tx_control*, %struct.sk_buff*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @rtw_tx_report_enable(%struct.rtw_dev*, %struct.rtw_tx_pkt_info*) #1

declare dso_local i32 @rtw_tx_stats(%struct.rtw_dev*, %struct.ieee80211_vif*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
