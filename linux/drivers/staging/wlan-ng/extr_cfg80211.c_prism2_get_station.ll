; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_get_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_get_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { %struct.wlandevice* }
%struct.wlandevice = type { i64, i32 (%struct.wlandevice*, %struct.p80211msg*)* }
%struct.p80211msg = type opaque
%struct.station_info = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.p80211msg_lnxreq_commsquality = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.p80211msg.0 = type { i32 }

@WLAN_MSD_RUNNING = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DIDMSG_LNXREQ_COMMSQUALITY = common dso_local global i32 0, align 4
@P80211ENUM_truth_true = common dso_local global i32 0, align 4
@P80211ENUM_msgitem_status_data_ok = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@NL80211_STA_INFO_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_info*)* @prism2_get_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_get_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.station_info*, align 8
  %10 = alloca %struct.wlandevice*, align 8
  %11 = alloca %struct.p80211msg_lnxreq_commsquality, align 4
  %12 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.station_info* %3, %struct.station_info** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.wlandevice*, %struct.wlandevice** %14, align 8
  store %struct.wlandevice* %15, %struct.wlandevice** %10, align 8
  %16 = load %struct.station_info*, %struct.station_info** %9, align 8
  %17 = call i32 @memset(%struct.station_info* %16, i32 0, i32 12)
  %18 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %19 = icmp ne %struct.wlandevice* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %22 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WLAN_MSD_RUNNING, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %81

29:                                               ; preds = %20
  %30 = load i32, i32* @DIDMSG_LNXREQ_COMMSQUALITY, align 4
  %31 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %11, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @P80211ENUM_truth_true, align 4
  %33 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %11, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @P80211ENUM_msgitem_status_data_ok, align 4
  %36 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %11, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %39 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %38, i32 0, i32 1
  %40 = load i32 (%struct.wlandevice*, %struct.p80211msg*)*, i32 (%struct.wlandevice*, %struct.p80211msg*)** %39, align 8
  %41 = icmp ne i32 (%struct.wlandevice*, %struct.p80211msg*)* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %81

45:                                               ; preds = %29
  %46 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %47 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %46, i32 0, i32 1
  %48 = load i32 (%struct.wlandevice*, %struct.p80211msg*)*, i32 (%struct.wlandevice*, %struct.p80211msg*)** %47, align 8
  %49 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %50 = bitcast %struct.p80211msg_lnxreq_commsquality* %11 to %struct.p80211msg.0*
  %51 = bitcast %struct.p80211msg.0* %50 to %struct.p80211msg*
  %52 = call i32 %48(%struct.wlandevice* %49, %struct.p80211msg* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %11, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.station_info*, %struct.station_info** %9, align 8
  %60 = getelementptr inbounds %struct.station_info, %struct.station_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @NL80211_STA_INFO_TX_BITRATE, align 4
  %63 = call i32 @BIT_ULL(i32 %62)
  %64 = load %struct.station_info*, %struct.station_info** %9, align 8
  %65 = getelementptr inbounds %struct.station_info, %struct.station_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = getelementptr inbounds %struct.p80211msg_lnxreq_commsquality, %struct.p80211msg_lnxreq_commsquality* %11, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.station_info*, %struct.station_info** %9, align 8
  %72 = getelementptr inbounds %struct.station_info, %struct.station_info* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %74 = call i32 @BIT_ULL(i32 %73)
  %75 = load %struct.station_info*, %struct.station_info** %9, align 8
  %76 = getelementptr inbounds %struct.station_info, %struct.station_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %55, %45
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %42, %26
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @memset(%struct.station_info*, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
