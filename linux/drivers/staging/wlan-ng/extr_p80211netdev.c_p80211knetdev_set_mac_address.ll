; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211knetdev_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211knetdev_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32*, i64 }
%struct.sockaddr = type { i32 }
%struct.p80211msg_dot11req_mibset = type { i32, i32*, i32, %struct.p80211item_uint32, %struct.p80211item_unk392 }
%struct.p80211item_uint32 = type { i32, i64, i32, i32 }
%struct.p80211item_unk392 = type { i32, i8*, i32, i32 }
%struct.p80211item_pstr6 = type { i32, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.wlandevice = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@DIDMSG_DOT11REQ_MIBSET = common dso_local global i32 0, align 4
@WLAN_DEVNAMELEN_MAX = common dso_local global i64 0, align 8
@DIDMSG_DOT11REQ_MIBSET_MIBATTRIBUTE = common dso_local global i32 0, align 4
@P80211ENUM_msgitem_status_data_ok = common dso_local global i8* null, align 8
@DIDMIB_DOT11MAC_OPERATIONTABLE_MACADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@DIDMSG_DOT11REQ_MIBSET_RESULTCODE = common dso_local global i32 0, align 4
@P80211ENUM_msgitem_status_no_value = common dso_local global i32 0, align 4
@P80211ENUM_resultcode_success = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Low-level driver failed dot11req_mibset(dot11MACAddress).\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @p80211knetdev_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211knetdev_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.p80211msg_dot11req_mibset, align 8
  %8 = alloca %struct.p80211item_unk392*, align 8
  %9 = alloca %struct.p80211item_pstr6*, align 8
  %10 = alloca %struct.p80211item_uint32*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sockaddr*
  store %struct.sockaddr* %13, %struct.sockaddr** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i64 @netif_running(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %110

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, %struct.p80211msg_dot11req_mibset* %7, i32 0, i32 4
  store %struct.p80211item_unk392* %21, %struct.p80211item_unk392** %8, align 8
  %22 = load %struct.p80211item_unk392*, %struct.p80211item_unk392** %8, align 8
  %23 = getelementptr inbounds %struct.p80211item_unk392, %struct.p80211item_unk392* %22, i32 0, i32 3
  %24 = bitcast i32* %23 to %struct.p80211item_pstr6*
  store %struct.p80211item_pstr6* %24, %struct.p80211item_pstr6** %9, align 8
  %25 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, %struct.p80211msg_dot11req_mibset* %7, i32 0, i32 3
  store %struct.p80211item_uint32* %25, %struct.p80211item_uint32** %10, align 8
  %26 = call i32 @memset(%struct.p80211msg_dot11req_mibset* %7, i32 0, i32 72)
  %27 = load i32, i32* @DIDMSG_DOT11REQ_MIBSET, align 4
  %28 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, %struct.p80211msg_dot11req_mibset* %7, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, %struct.p80211msg_dot11req_mibset* %7, i32 0, i32 0
  store i32 72, i32* %29, align 8
  %30 = getelementptr inbounds %struct.p80211msg_dot11req_mibset, %struct.p80211msg_dot11req_mibset* %7, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.wlandevice*
  %36 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @WLAN_DEVNAMELEN_MAX, align 8
  %39 = sub nsw i64 %38, 1
  %40 = call i32 @memcpy(i32* %31, i32 %37, i64 %39)
  %41 = load i32, i32* @DIDMSG_DOT11REQ_MIBSET_MIBATTRIBUTE, align 4
  %42 = load %struct.p80211item_unk392*, %struct.p80211item_unk392** %8, align 8
  %43 = getelementptr inbounds %struct.p80211item_unk392, %struct.p80211item_unk392* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %45 = load %struct.p80211item_unk392*, %struct.p80211item_unk392** %8, align 8
  %46 = getelementptr inbounds %struct.p80211item_unk392, %struct.p80211item_unk392* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.p80211item_unk392*, %struct.p80211item_unk392** %8, align 8
  %48 = getelementptr inbounds %struct.p80211item_unk392, %struct.p80211item_unk392* %47, i32 0, i32 0
  store i32 4, i32* %48, align 8
  %49 = load i32, i32* @DIDMIB_DOT11MAC_OPERATIONTABLE_MACADDRESS, align 4
  %50 = load %struct.p80211item_pstr6*, %struct.p80211item_pstr6** %9, align 8
  %51 = getelementptr inbounds %struct.p80211item_pstr6, %struct.p80211item_pstr6* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %53 = load %struct.p80211item_pstr6*, %struct.p80211item_pstr6** %9, align 8
  %54 = getelementptr inbounds %struct.p80211item_pstr6, %struct.p80211item_pstr6* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.p80211item_pstr6*, %struct.p80211item_pstr6** %9, align 8
  %56 = getelementptr inbounds %struct.p80211item_pstr6, %struct.p80211item_pstr6* %55, i32 0, i32 0
  store i32 16, i32* %56, align 8
  %57 = load i64, i64* @ETH_ALEN, align 8
  %58 = load %struct.p80211item_pstr6*, %struct.p80211item_pstr6** %9, align 8
  %59 = getelementptr inbounds %struct.p80211item_pstr6, %struct.p80211item_pstr6* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  %61 = load %struct.p80211item_pstr6*, %struct.p80211item_pstr6** %9, align 8
  %62 = getelementptr inbounds %struct.p80211item_pstr6, %struct.p80211item_pstr6* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %65 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @ETH_ALEN, align 8
  %68 = call i32 @memcpy(i32* %63, i32 %66, i64 %67)
  %69 = load i32, i32* @DIDMSG_DOT11REQ_MIBSET_RESULTCODE, align 4
  %70 = load %struct.p80211item_uint32*, %struct.p80211item_uint32** %10, align 8
  %71 = getelementptr inbounds %struct.p80211item_uint32, %struct.p80211item_uint32* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @P80211ENUM_msgitem_status_no_value, align 4
  %73 = load %struct.p80211item_uint32*, %struct.p80211item_uint32** %10, align 8
  %74 = getelementptr inbounds %struct.p80211item_uint32, %struct.p80211item_uint32* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.p80211item_uint32*, %struct.p80211item_uint32** %10, align 8
  %76 = getelementptr inbounds %struct.p80211item_uint32, %struct.p80211item_uint32* %75, i32 0, i32 0
  store i32 8, i32* %76, align 8
  %77 = load %struct.p80211item_uint32*, %struct.p80211item_uint32** %10, align 8
  %78 = getelementptr inbounds %struct.p80211item_uint32, %struct.p80211item_uint32* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = bitcast %struct.p80211msg_dot11req_mibset* %7 to i32*
  %83 = call i32 @p80211req_dorequest(i64 %81, i32* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %20
  %87 = load %struct.p80211item_uint32*, %struct.p80211item_uint32** %10, align 8
  %88 = getelementptr inbounds %struct.p80211item_uint32, %struct.p80211item_uint32* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @P80211ENUM_resultcode_success, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86, %20
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = call i32 @netdev_err(%struct.net_device* %93, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @EADDRNOTAVAIL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %11, align 4
  br label %108

97:                                               ; preds = %86
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %102 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @memcpy(i32* %100, i32 %103, i64 %106)
  br label %108

108:                                              ; preds = %97, %92
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %17
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.p80211msg_dot11req_mibset*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @p80211req_dorequest(i64, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
