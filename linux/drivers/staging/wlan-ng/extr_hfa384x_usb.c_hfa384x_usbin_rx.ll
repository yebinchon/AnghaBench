; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbin_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbin_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, i32, %struct.hfa384x* }
%struct.hfa384x = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%union.hfa384x_usbin = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.p80211_rxmeta = type { i64, i64, i32, i32 }

@HOSTWEP_EXCLUDEUNENCRYPTED = common dso_local global i32 0, align 4
@WLAN_CRC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Received monitor frame: FCSerr set\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Received frame on unsupported port=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlandevice*, %struct.sk_buff*)* @hfa384x_usbin_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfa384x_usbin_rx(%struct.wlandevice* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %union.hfa384x_usbin*, align 8
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.p80211_rxmeta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %union.hfa384x_usbin*
  store %union.hfa384x_usbin* %14, %union.hfa384x_usbin** %5, align 8
  %15 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %16 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %15, i32 0, i32 2
  %17 = load %struct.hfa384x*, %struct.hfa384x** %16, align 8
  store %struct.hfa384x* %17, %struct.hfa384x** %6, align 8
  %18 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %19 = bitcast %union.hfa384x_usbin* %18 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @le16_to_cpus(i32* %21)
  %23 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %24 = bitcast %union.hfa384x_usbin* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = call i32 @le32_to_cpus(i32* %26)
  %28 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %29 = bitcast %union.hfa384x_usbin* %28 to %struct.TYPE_6__*
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @HFA384x_RXSTATUS_MACPORT_GET(i32 %32)
  switch i32 %33, label %151 [
    i32 0, label %34
    i32 7, label %133
  ]

34:                                               ; preds = %2
  %35 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %36 = bitcast %union.hfa384x_usbin* %35 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %42 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @HOSTWEP_EXCLUDEUNENCRYPTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @WLAN_GET_FC_ISWEP(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %164

52:                                               ; preds = %47, %34
  %53 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %54 = bitcast %union.hfa384x_usbin* %53 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @p80211_headerlen(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @skb_pull(%struct.sk_buff* %61, i32 4)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @skb_push(%struct.sk_buff* %63, i32 %64)
  %66 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %67 = bitcast %union.hfa384x_usbin* %66 to %struct.TYPE_6__*
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @memmove(i32 %65, i32* %69, i32 %70)
  %72 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %73 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @skb_trim(%struct.sk_buff* %77, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load i32, i32* @WLAN_CRC_LEN, align 4
  %84 = call i32 @skb_put(%struct.sk_buff* %82, i32 %83)
  %85 = load i32, i32* @WLAN_CRC_LEN, align 4
  %86 = call i32 @memset(i32 %84, i32 255, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i32 @skb_reset_mac_header(%struct.sk_buff* %87)
  %89 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i32 @p80211skb_rxmeta_attach(%struct.wlandevice* %89, %struct.sk_buff* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call %struct.p80211_rxmeta* @p80211skb_rxmeta(%struct.sk_buff* %92)
  store %struct.p80211_rxmeta* %93, %struct.p80211_rxmeta** %8, align 8
  %94 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %95 = bitcast %union.hfa384x_usbin* %94 to %struct.TYPE_6__*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %8, align 8
  %100 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %102 = bitcast %union.hfa384x_usbin* %101 to %struct.TYPE_6__*
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %8, align 8
  %107 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %109 = bitcast %union.hfa384x_usbin* %108 to %struct.TYPE_6__*
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %114 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %8, align 8
  %118 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %120 = bitcast %union.hfa384x_usbin* %119 to %struct.TYPE_6__*
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %125 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %123, %126
  %128 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %8, align 8
  %129 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = call i32 @p80211netdev_rx(%struct.wlandevice* %130, %struct.sk_buff* %131)
  br label %164

133:                                              ; preds = %2
  %134 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %135 = bitcast %union.hfa384x_usbin* %134 to %struct.TYPE_6__*
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @HFA384x_RXSTATUS_ISFCSERR(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %133
  %142 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %143 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %144 = bitcast %union.hfa384x_usbin* %143 to %struct.TYPE_6__*
  %145 = call i32 @hfa384x_int_rxmonitor(%struct.wlandevice* %142, %struct.TYPE_6__* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32 @dev_kfree_skb(%struct.sk_buff* %146)
  br label %150

148:                                              ; preds = %133
  %149 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %141
  br label %164

151:                                              ; preds = %2
  %152 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %153 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %union.hfa384x_usbin*, %union.hfa384x_usbin** %5, align 8
  %158 = bitcast %union.hfa384x_usbin* %157 to %struct.TYPE_6__*
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @HFA384x_RXSTATUS_MACPORT_GET(i32 %161)
  %163 = call i32 @netdev_warn(i32 %156, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %151, %150, %52, %51
  ret void
}

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @le32_to_cpus(i32*) #1

declare dso_local i32 @HFA384x_RXSTATUS_MACPORT_GET(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WLAN_GET_FC_ISWEP(i32) #1

declare dso_local i32 @p80211_headerlen(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i32, i32*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @p80211skb_rxmeta_attach(%struct.wlandevice*, %struct.sk_buff*) #1

declare dso_local %struct.p80211_rxmeta* @p80211skb_rxmeta(%struct.sk_buff*) #1

declare dso_local i32 @p80211netdev_rx(%struct.wlandevice*, %struct.sk_buff*) #1

declare dso_local i32 @HFA384x_RXSTATUS_ISFCSERR(i32) #1

declare dso_local i32 @hfa384x_int_rxmonitor(%struct.wlandevice*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
