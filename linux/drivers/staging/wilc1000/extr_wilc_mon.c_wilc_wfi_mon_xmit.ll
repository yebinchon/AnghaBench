; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_mon.c_wilc_wfi_mon_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_mon.c_wilc_wfi_mon_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i64, %struct.net_device*, %struct.wilc_wfi_radiotap_cb_hdr*, i32, i32, i32 }
%struct.wilc_wfi_radiotap_cb_hdr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.wilc_wfi_mon_priv = type { %struct.net_device* }

@ETH_ALEN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"fail to mgmt tx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @wilc_wfi_mon_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_wfi_mon_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wilc_wfi_mon_priv*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.wilc_wfi_radiotap_cb_hdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i64 0, i64* %7, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.wilc_wfi_mon_priv* @netdev_priv(%struct.net_device* %22)
  store %struct.wilc_wfi_mon_priv* %23, %struct.wilc_wfi_mon_priv** %8, align 8
  %24 = load %struct.wilc_wfi_mon_priv*, %struct.wilc_wfi_mon_priv** %8, align 8
  %25 = icmp ne %struct.wilc_wfi_mon_priv* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %165

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @ieee80211_get_radiotap_len(i32* %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %165

40:                                               ; preds = %29
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @skb_pull(%struct.sk_buff* %41, i64 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 192
  br i1 %49, label %50, label %119

50:                                               ; preds = %40
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = call i64 @is_broadcast_ether_addr(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %119

57:                                               ; preds = %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 24
  %62 = trunc i64 %61 to i32
  %63 = call %struct.sk_buff* @dev_alloc_skb(i32 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %9, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %165

69:                                               ; preds = %57
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @skb_put_data(%struct.sk_buff* %70, i32* %73, i64 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call %struct.wilc_wfi_radiotap_cb_hdr* @skb_push(%struct.sk_buff* %78, i32 24)
  store %struct.wilc_wfi_radiotap_cb_hdr* %79, %struct.wilc_wfi_radiotap_cb_hdr** %10, align 8
  %80 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %10, align 8
  %81 = call i32 @memset(%struct.wilc_wfi_radiotap_cb_hdr* %80, i32 0, i32 24)
  %82 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %10, align 8
  %83 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = call i32 @cpu_to_le16(i32 24)
  %86 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %10, align 8
  %87 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @TX_RADIOTAP_PRESENT, align 4
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %10, align 8
  %92 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %10, align 8
  %95 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %94, i32 0, i32 0
  store i32 5, i32* %95, align 8
  %96 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %10, align 8
  %97 = getelementptr inbounds %struct.wilc_wfi_radiotap_cb_hdr, %struct.wilc_wfi_radiotap_cb_hdr* %96, i32 0, i32 1
  store i32 4, i32* %97, align 4
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 2
  store %struct.net_device* %98, %struct.net_device** %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = call i32 @skb_reset_mac_header(%struct.sk_buff* %101)
  %103 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @PACKET_OTHERHOST, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @ETH_P_802_2, align 4
  %110 = call i32 @htons(i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 3
  %115 = load %struct.wilc_wfi_radiotap_cb_hdr*, %struct.wilc_wfi_radiotap_cb_hdr** %114, align 8
  %116 = call i32 @memset(%struct.wilc_wfi_radiotap_cb_hdr* %115, i32 0, i32 8)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = call i32 @netif_rx(%struct.sk_buff* %117)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %165

119:                                              ; preds = %50, %40
  %120 = load %struct.wilc_wfi_mon_priv*, %struct.wilc_wfi_mon_priv** %8, align 8
  %121 = getelementptr inbounds %struct.wilc_wfi_mon_priv, %struct.wilc_wfi_mon_priv* %120, i32 0, i32 0
  %122 = load %struct.net_device*, %struct.net_device** %121, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 2
  store %struct.net_device* %122, %struct.net_device** %124, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 10
  %129 = call i32 @ether_addr_copy(i32* %18, i32* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 16
  %134 = call i32 @ether_addr_copy(i32* %21, i32* %133)
  %135 = call i32 @memcmp(i32* %18, i32* %21, i32 6)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %119
  %138 = load %struct.wilc_wfi_mon_priv*, %struct.wilc_wfi_mon_priv** %8, align 8
  %139 = getelementptr inbounds %struct.wilc_wfi_mon_priv, %struct.wilc_wfi_mon_priv* %138, i32 0, i32 0
  %140 = load %struct.net_device*, %struct.net_device** %139, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @mon_mgmt_tx(%struct.net_device* %140, i32* %143, i64 %146)
  store i64 %147, i64* %7, align 8
  %148 = load i64, i64* %7, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %137
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = call i32 @netdev_err(%struct.net_device* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %137
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = call i32 @dev_kfree_skb(%struct.sk_buff* %154)
  br label %162

156:                                              ; preds = %119
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = load %struct.wilc_wfi_mon_priv*, %struct.wilc_wfi_mon_priv** %8, align 8
  %159 = getelementptr inbounds %struct.wilc_wfi_mon_priv, %struct.wilc_wfi_mon_priv* %158, i32 0, i32 0
  %160 = load %struct.net_device*, %struct.net_device** %159, align 8
  %161 = call i64 @wilc_mac_xmit(%struct.sk_buff* %157, %struct.net_device* %160)
  store i64 %161, i64* %7, align 8
  br label %162

162:                                              ; preds = %156, %153
  %163 = load i64, i64* %7, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %165

165:                                              ; preds = %162, %69, %66, %39, %26
  %166 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wilc_wfi_mon_priv* @netdev_priv(%struct.net_device*) #2

declare dso_local i64 @ieee80211_get_radiotap_len(i32*) #2

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #2

declare dso_local i64 @is_broadcast_ether_addr(i32*) #2

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #2

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #2

declare dso_local %struct.wilc_wfi_radiotap_cb_hdr* @skb_push(%struct.sk_buff*, i32) #2

declare dso_local i32 @memset(%struct.wilc_wfi_radiotap_cb_hdr*, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @netif_rx(%struct.sk_buff*) #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i64 @mon_mgmt_tx(%struct.net_device*, i32*, i64) #2

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #2

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #2

declare dso_local i64 @wilc_mac_xmit(%struct.sk_buff*, %struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
