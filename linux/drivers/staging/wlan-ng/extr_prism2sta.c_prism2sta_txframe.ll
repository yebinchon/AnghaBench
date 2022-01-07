; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_txframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_txframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, %struct.hfa384x* }
%struct.hfa384x = type { i32 }
%struct.sk_buff = type { i32 }
%union.p80211_hdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.p80211_metawep = type { i32 }

@HOSTWEP_PRIVACYINVOKED = common dso_local global i32 0, align 4
@HOSTWEP_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlandevice*, %struct.sk_buff*, %union.p80211_hdr*, %struct.p80211_metawep*)* @prism2sta_txframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2sta_txframe(%struct.wlandevice* %0, %struct.sk_buff* %1, %union.p80211_hdr* %2, %struct.p80211_metawep* %3) #0 {
  %5 = alloca %struct.wlandevice*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %union.p80211_hdr*, align 8
  %8 = alloca %struct.p80211_metawep*, align 8
  %9 = alloca %struct.hfa384x*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %union.p80211_hdr* %2, %union.p80211_hdr** %7, align 8
  store %struct.p80211_metawep* %3, %struct.p80211_metawep** %8, align 8
  %10 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %11 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %10, i32 0, i32 1
  %12 = load %struct.hfa384x*, %struct.hfa384x** %11, align 8
  store %struct.hfa384x* %12, %struct.hfa384x** %9, align 8
  %13 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %14 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %17 = load i32, i32* @HOSTWEP_ENCRYPT, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = call i32 @WLAN_SET_FC_ISWEP(i32 1)
  %24 = call i32 @cpu_to_le16(i32 %23)
  %25 = load %union.p80211_hdr*, %union.p80211_hdr** %7, align 8
  %26 = bitcast %union.p80211_hdr* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %22, %4
  %31 = load %struct.hfa384x*, %struct.hfa384x** %9, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load %union.p80211_hdr*, %union.p80211_hdr** %7, align 8
  %34 = load %struct.p80211_metawep*, %struct.p80211_metawep** %8, align 8
  %35 = call i32 @hfa384x_drvr_txframe(%struct.hfa384x* %31, %struct.sk_buff* %32, %union.p80211_hdr* %33, %struct.p80211_metawep* %34)
  ret i32 %35
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @WLAN_SET_FC_ISWEP(i32) #1

declare dso_local i32 @hfa384x_drvr_txframe(%struct.hfa384x*, %struct.sk_buff*, %union.p80211_hdr*, %struct.p80211_metawep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
