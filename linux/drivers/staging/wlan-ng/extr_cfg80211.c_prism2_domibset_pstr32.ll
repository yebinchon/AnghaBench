; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_domibset_pstr32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_domibset_pstr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32 }
%struct.p80211msg_dot11req_mibset = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.p80211item_pstr32 = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@DIDMSG_DOT11REQ_MIBSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlandevice*, i32, i32, i32*)* @prism2_domibset_pstr32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_domibset_pstr32(%struct.wlandevice* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.wlandevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.p80211msg_dot11req_mibset, align 4
  %10 = alloca %struct.p80211item_pstr32*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, %struct.p80211msg_dot11req_mibset* %9, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.p80211item_pstr32*
  store %struct.p80211item_pstr32* %13, %struct.p80211item_pstr32** %10, align 8
  %14 = load i32, i32* @DIDMSG_DOT11REQ_MIBSET, align 4
  %15 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, %struct.p80211msg_dot11req_mibset* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.p80211item_pstr32*, %struct.p80211item_pstr32** %10, align 8
  %18 = getelementptr inbounds %struct.p80211item_pstr32, %struct.p80211item_pstr32* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.p80211item_pstr32*, %struct.p80211item_pstr32** %10, align 8
  %21 = getelementptr inbounds %struct.p80211item_pstr32, %struct.p80211item_pstr32* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.p80211item_pstr32*, %struct.p80211item_pstr32** %10, align 8
  %24 = getelementptr inbounds %struct.p80211item_pstr32, %struct.p80211item_pstr32* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @memcpy(i32 %26, i32* %27, i32 %28)
  %30 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %31 = bitcast %struct.p80211msg_dot11req_mibset* %9 to i32*
  %32 = call i32 @p80211req_dorequest(%struct.wlandevice* %30, i32* %31)
  ret i32 %32
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @p80211req_dorequest(%struct.wlandevice*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
