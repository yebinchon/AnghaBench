; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_mon.c_wilc_wfi_monitor_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_mon.c_wilc_wfi_monitor_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { %struct.wilc_wfi_radiotap_hdr*, i32, i32, i32, %struct.net_device* }
%struct.wilc_wfi_radiotap_hdr = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i64 }
%struct.wilc_wfi_radiotap_cb_hdr = type { i32, %struct.TYPE_2__, i32 }

@HOST_HDR_OFFSET = common dso_local global i32 0, align 4
@IS_MANAGMEMENT_CALLBACK = common dso_local global i32 0, align 4
@TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@IS_MGMT_STATUS_SUCCES = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_TX_RTS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_F_TX_FAIL = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_RATE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wilc_wfi_monitor_rx(%struct.net_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.wilc_wfi_radiotap_hdr*, align 8
  %11 = alloca %struct.wilc_wfi_radiotap_cb_hdr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %135

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %135

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @HOST_HDR_OFFSET, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 0, %23
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = call i32 @get_unaligned_le32(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @GET_PKT_OFFSET(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @IS_MANAGMEMENT_CALLBACK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 40
  %37 = trunc i64 %36 to i32
  %38 = call %struct.sk_buff* @dev_alloc_skb(i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %9, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %135

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @skb_put_data(%struct.sk_buff* %43, i32* %44, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = call %struct.wilc_wfi_radiotap_hdr* @skb_push(%struct.sk_buff* %47, i32 40)
  %49 = bitcast %struct.wilc_wfi_radiotap_hdr* %48 to %struct.wilc_wfi_radiotap_cb_hdr*
  store %struct.wilc_wfi_radiotap_cb_hdr* %49, %struct.wilc_wfi_radiotap_cb_hdr** %11, align 8
  %50 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %11, align 8
  %51 = bitcast %struct.wilc_wfi_radiotap_cb_hdr* %50 to %struct.wilc_wfi_radiotap_hdr*
  %52 = call i32 @memset(%struct.wilc_wfi_radiotap_hdr* %51, i32 0, i32 40)
  %53 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %11, align 8
  %54 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = call i8* @cpu_to_le16(i32 40)
  %57 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %11, align 8
  %58 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load i32, i32* @TX_RADIOTAP_PRESENT, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %11, align 8
  %63 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %11, align 8
  %66 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %65, i32 0, i32 0
  store i32 5, i32* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @IS_MGMT_STATUS_SUCCES, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %42
  %72 = load i32, i32* @IEEE80211_RADIOTAP_F_TX_RTS, align 4
  %73 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %11, align 8
  %74 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %79

75:                                               ; preds = %42
  %76 = load i32, i32* @IEEE80211_RADIOTAP_F_TX_FAIL, align 4
  %77 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %11, align 8
  %78 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  br label %113

80:                                               ; preds = %20
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 40
  %84 = trunc i64 %83 to i32
  %85 = call %struct.sk_buff* @dev_alloc_skb(i32 %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %9, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = icmp ne %struct.sk_buff* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  br label %135

89:                                               ; preds = %80
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @skb_put_data(%struct.sk_buff* %90, i32* %91, i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = call %struct.wilc_wfi_radiotap_hdr* @skb_push(%struct.sk_buff* %94, i32 40)
  store %struct.wilc_wfi_radiotap_hdr* %95, %struct.wilc_wfi_radiotap_hdr** %10, align 8
  %96 = load %struct.wilc_wfi_radiotap_hdr*, %struct.wilc_wfi_radiotap_hdr** %10, align 8
  %97 = call i32 @memset(%struct.wilc_wfi_radiotap_hdr* %96, i32 0, i32 40)
  %98 = load %struct.wilc_wfi_radiotap_hdr*, %struct.wilc_wfi_radiotap_hdr** %10, align 8
  %99 = getelementptr inbounds %struct.wilc_wfi_radiotap_hdr, %struct.wilc_wfi_radiotap_hdr* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = call i8* @cpu_to_le16(i32 40)
  %102 = load %struct.wilc_wfi_radiotap_hdr*, %struct.wilc_wfi_radiotap_hdr** %10, align 8
  %103 = getelementptr inbounds %struct.wilc_wfi_radiotap_hdr, %struct.wilc_wfi_radiotap_hdr* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load i32, i32* @IEEE80211_RADIOTAP_RATE, align 4
  %106 = shl i32 1, %105
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.wilc_wfi_radiotap_hdr*, %struct.wilc_wfi_radiotap_hdr** %10, align 8
  %109 = getelementptr inbounds %struct.wilc_wfi_radiotap_hdr, %struct.wilc_wfi_radiotap_hdr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  %111 = load %struct.wilc_wfi_radiotap_hdr*, %struct.wilc_wfi_radiotap_hdr** %10, align 8
  %112 = getelementptr inbounds %struct.wilc_wfi_radiotap_hdr, %struct.wilc_wfi_radiotap_hdr* %111, i32 0, i32 0
  store i32 5, i32* %112, align 8
  br label %113

113:                                              ; preds = %89, %79
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 4
  store %struct.net_device* %114, %struct.net_device** %116, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = call i32 @skb_reset_mac_header(%struct.sk_buff* %117)
  %119 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @PACKET_OTHERHOST, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @ETH_P_802_2, align 4
  %126 = call i32 @htons(i32 %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load %struct.wilc_wfi_radiotap_hdr*, %struct.wilc_wfi_radiotap_hdr** %130, align 8
  %132 = call i32 @memset(%struct.wilc_wfi_radiotap_hdr* %131, i32 0, i32 8)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = call i32 @netif_rx(%struct.sk_buff* %133)
  br label %135

135:                                              ; preds = %113, %88, %41, %19, %14
  ret void
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @GET_PKT_OFFSET(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local %struct.wilc_wfi_radiotap_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.wilc_wfi_radiotap_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
