; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_domibset_uint32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_domibset_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32 }
%struct.p80211msg_dot11req_mibset = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.p80211item_uint32 = type { i8*, i8* }

@DIDMSG_DOT11REQ_MIBSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlandevice*, i8*, i8*)* @prism2_domibset_uint32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_domibset_uint32(%struct.wlandevice* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.wlandevice*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.p80211msg_dot11req_mibset, align 4
  %8 = alloca %struct.p80211item_uint32*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, %struct.p80211msg_dot11req_mibset* %7, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to %struct.p80211item_uint32*
  store %struct.p80211item_uint32* %11, %struct.p80211item_uint32** %8, align 8
  %12 = load i32, i32* @DIDMSG_DOT11REQ_MIBSET, align 4
  %13 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, %struct.p80211msg_dot11req_mibset* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.p80211item_uint32*, %struct.p80211item_uint32** %8, align 8
  %16 = getelementptr inbounds %struct.p80211item_uint32, %struct.p80211item_uint32* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.p80211item_uint32*, %struct.p80211item_uint32** %8, align 8
  %19 = getelementptr inbounds %struct.p80211item_uint32, %struct.p80211item_uint32* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %21 = bitcast %struct.p80211msg_dot11req_mibset* %7 to i32*
  %22 = call i32 @p80211req_dorequest(%struct.wlandevice* %20, i32* %21)
  ret i32 %22
}

declare dso_local i32 @p80211req_dorequest(%struct.wlandevice*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
