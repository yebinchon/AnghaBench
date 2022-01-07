; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211knetdev_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211knetdev_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i64, i32 }
%struct.net_device = type { %struct.TYPE_2__, %struct.wlandevice* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wlandevice = type { i64, i32, i32 (%struct.wlandevice*, %struct.sk_buff.0*, %union.p80211_hdr*, %union.p80211_hdr*)*, i32, i32 }
%struct.sk_buff.0 = type opaque
%union.p80211_hdr = type { i32* }
%struct.p80211_metawep = type { i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@WLAN_DEVICE_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"called when queue stopped.\0A\00", align 1
@ETH_P_80211_RAW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Tx attempt prior to association, frame dropped.\0A\00", align 1
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"ether_to_80211(%d) failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"txframe success, no more bufs\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"txframe returned alloc_fail\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"txframe returned full or busy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @p80211knetdev_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211knetdev_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlandevice*, align 8
  %9 = alloca %union.p80211_hdr, align 8
  %10 = alloca %struct.p80211_metawep, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load %struct.wlandevice*, %struct.wlandevice** %12, align 8
  store %struct.wlandevice* %13, %struct.wlandevice** %8, align 8
  %14 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %10, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %182

19:                                               ; preds = %2
  %20 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %21 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WLAN_DEVICE_OPEN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %159

26:                                               ; preds = %19
  %27 = call i32 @memset(%union.p80211_hdr* %9, i32 0, i32 8)
  %28 = bitcast %struct.p80211_metawep* %10 to %union.p80211_hdr*
  %29 = call i32 @memset(%union.p80211_hdr* %28, i32 0, i32 8)
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i64 @netif_queue_stopped(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %159

36:                                               ; preds = %26
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @netif_stop_queue(%struct.net_device* %37)
  %39 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %40 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %43 [
    i32 128, label %42
    i32 129, label %42
    i32 130, label %42
  ]

42:                                               ; preds = %36, %36, %36
  br label %63

43:                                               ; preds = %36
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @be16_to_cpu(i32 %46)
  %48 = load i64, i64* @ETH_P_80211_RAW, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %52 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @netif_start_queue(i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = call i32 @netdev_notice(%struct.net_device* %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  store i32 0, i32* %6, align 4
  br label %159

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @be16_to_cpu(i32 %66)
  %68 = load i64, i64* @ETH_P_80211_RAW, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load i32, i32* @CAP_NET_ADMIN, align 4
  %72 = call i32 @capable(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 1, i32* %6, align 4
  br label %159

75:                                               ; preds = %70
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @memcpy(%union.p80211_hdr* %9, i32* %78, i32 8)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @skb_pull(%struct.sk_buff* %80, i32 8)
  br label %98

82:                                               ; preds = %63
  %83 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %84 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %85 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = bitcast %struct.p80211_metawep* %10 to %union.p80211_hdr*
  %89 = call i64 @skb_ether_to_p80211(%struct.wlandevice* %83, i32 %86, %struct.sk_buff* %87, %union.p80211_hdr* %9, %union.p80211_hdr* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %94 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  store i32 1, i32* %6, align 4
  br label %159

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %75
  %99 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %100 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %99, i32 0, i32 2
  %101 = load i32 (%struct.wlandevice*, %struct.sk_buff.0*, %union.p80211_hdr*, %union.p80211_hdr*)*, i32 (%struct.wlandevice*, %struct.sk_buff.0*, %union.p80211_hdr*, %union.p80211_hdr*)** %100, align 8
  %102 = icmp ne i32 (%struct.wlandevice*, %struct.sk_buff.0*, %union.p80211_hdr*, %union.p80211_hdr*)* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 1, i32* %6, align 4
  br label %159

104:                                              ; preds = %98
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = call i32 @netif_trans_update(%struct.net_device* %105)
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %114
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 8
  %122 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %123 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %122, i32 0, i32 2
  %124 = load i32 (%struct.wlandevice*, %struct.sk_buff.0*, %union.p80211_hdr*, %union.p80211_hdr*)*, i32 (%struct.wlandevice*, %struct.sk_buff.0*, %union.p80211_hdr*, %union.p80211_hdr*)** %123, align 8
  %125 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = bitcast %struct.sk_buff* %126 to %struct.sk_buff.0*
  %128 = bitcast %struct.p80211_metawep* %10 to %union.p80211_hdr*
  %129 = call i32 %124(%struct.wlandevice* %125, %struct.sk_buff.0* %127, %union.p80211_hdr* %9, %union.p80211_hdr* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %104
  %133 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %134 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @netif_wake_queue(i32 %135)
  %137 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %137, i32* %6, align 4
  br label %158

138:                                              ; preds = %104
  %139 = load i32, i32* %7, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load %struct.net_device*, %struct.net_device** %5, align 8
  %143 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %144, i32* %6, align 4
  br label %157

145:                                              ; preds = %138
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.net_device*, %struct.net_device** %5, align 8
  %150 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %151, i32* %6, align 4
  br label %156

152:                                              ; preds = %145
  %153 = load %struct.net_device*, %struct.net_device** %5, align 8
  %154 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %141
  br label %158

158:                                              ; preds = %157, %132
  br label %159

159:                                              ; preds = %158, %103, %91, %74, %50, %33, %25
  %160 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %10, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %10, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %165, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %10, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @kzfree(i32* %172)
  br label %174

174:                                              ; preds = %170, %163, %159
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = call i32 @dev_kfree_skb(%struct.sk_buff* %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %17
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @memset(%union.p80211_hdr*, i32, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @netif_start_queue(i32) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @memcpy(%union.p80211_hdr*, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_ether_to_p80211(%struct.wlandevice*, i32, %struct.sk_buff*, %union.p80211_hdr*, %union.p80211_hdr*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
