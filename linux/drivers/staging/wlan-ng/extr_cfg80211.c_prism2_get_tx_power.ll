; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_get_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_get_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.prism2_wiphy_private = type { %struct.wlandevice* }
%struct.wlandevice = type { i32 }
%struct.p80211msg_dot11req_mibget = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.p80211item_uint32 = type { i32, i32 }

@DIDMSG_DOT11REQ_MIBGET = common dso_local global i32 0, align 4
@DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i32*)* @prism2_get_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_get_tx_power(%struct.wiphy* %0, %struct.wireless_dev* %1, i32* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.prism2_wiphy_private*, align 8
  %8 = alloca %struct.wlandevice*, align 8
  %9 = alloca %struct.p80211msg_dot11req_mibget, align 4
  %10 = alloca %struct.p80211item_uint32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %14 = call %struct.prism2_wiphy_private* @wiphy_priv(%struct.wiphy* %13)
  store %struct.prism2_wiphy_private* %14, %struct.prism2_wiphy_private** %7, align 8
  %15 = load %struct.prism2_wiphy_private*, %struct.prism2_wiphy_private** %7, align 8
  %16 = getelementptr inbounds %struct.prism2_wiphy_private, %struct.prism2_wiphy_private* %15, i32 0, i32 0
  %17 = load %struct.wlandevice*, %struct.wlandevice** %16, align 8
  store %struct.wlandevice* %17, %struct.wlandevice** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = getelementptr inbounds %struct.p80211msg_dot11req_mibget, %struct.p80211msg_dot11req_mibget* %9, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.p80211item_uint32*
  store %struct.p80211item_uint32* %20, %struct.p80211item_uint32** %10, align 8
  %21 = load i32, i32* @DIDMSG_DOT11REQ_MIBGET, align 4
  %22 = getelementptr inbounds %struct.p80211msg_dot11req_mibget, %struct.p80211msg_dot11req_mibget* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL, align 4
  %24 = load %struct.p80211item_uint32*, %struct.p80211item_uint32** %10, align 8
  %25 = getelementptr inbounds %struct.p80211item_uint32, %struct.p80211item_uint32* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.wlandevice*, %struct.wlandevice** %8, align 8
  %27 = bitcast %struct.p80211msg_dot11req_mibget* %9 to i32*
  %28 = call i32 @p80211req_dorequest(%struct.wlandevice* %26, i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.p80211item_uint32*, %struct.p80211item_uint32** %10, align 8
  %36 = getelementptr inbounds %struct.p80211item_uint32, %struct.p80211item_uint32* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %12, align 4
  ret i32 %40
}

declare dso_local %struct.prism2_wiphy_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @p80211req_dorequest(%struct.wlandevice*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
