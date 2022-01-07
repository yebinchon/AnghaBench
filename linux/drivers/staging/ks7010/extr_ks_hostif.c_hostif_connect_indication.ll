; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_connect_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_connect_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i64, %struct.net_device*, %struct.TYPE_4__, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%union.iwreq_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.link_ap_info = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@FORCE_DISCONNECT = common dso_local global i32 0, align 4
@CONNECT_STATUS = common dso_local global i32 0, align 4
@DISCONNECT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unknown connect_code=%d :: scan_ind_count=%d\0A\00", align 1
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"disconnect :: scan_ind_count=%d\0A\00", align 1
@SIOCGIWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_connect_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_connect_indication(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %union.iwreq_data, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %9 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %12 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %15 = call i32 @get_word(%struct.ks_wlan_private* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %51 [
    i32 129, label %17
    i32 128, label %38
  ]

17:                                               ; preds = %1
  %18 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %19 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FORCE_DISCONNECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call i32 @netif_carrier_on(%struct.net_device* %25)
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* @FORCE_DISCONNECT, align 4
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %30 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @CONNECT_STATUS, align 4
  %35 = add i32 %33, %34
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %37 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %72

38:                                               ; preds = %1
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = call i32 @netif_carrier_off(%struct.net_device* %39)
  %41 = load i32, i32* @FORCE_DISCONNECT, align 4
  %42 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %43 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %41, %44
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @DISCONNECT_STATUS, align 4
  %48 = add i32 %46, %47
  %49 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %50 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %72

51:                                               ; preds = %1
  %52 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %53 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %52, i32 0, i32 2
  %54 = load %struct.net_device*, %struct.net_device** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %57 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %58)
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = call i32 @netif_carrier_off(%struct.net_device* %60)
  %62 = load i32, i32* @FORCE_DISCONNECT, align 4
  %63 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %64 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %62, %65
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @DISCONNECT_STATUS, align 4
  %69 = add i32 %67, %68
  %70 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %71 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %51, %38, %27
  %73 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %74 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %75 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.link_ap_info*
  %78 = call i32 @get_current_ap(%struct.ks_wlan_private* %73, %struct.link_ap_info* %77)
  %79 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %80 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @is_connect_status(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %72
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @is_disconnect_status(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %90 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = call i32 @atomic_set(i32* %91, i32 0)
  %93 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %94 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call i32 @atomic_set(i32* %95, i32 0)
  br label %97

97:                                               ; preds = %88, %84, %72
  %98 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %99 = call i32 @ks_wlan_do_power_save(%struct.ks_wlan_private* %98)
  %100 = bitcast %union.iwreq_data* %7 to %struct.TYPE_5__*
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = bitcast %union.iwreq_data* %7 to %struct.TYPE_5__*
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* @ARPHRD_ETHER, align 4
  %105 = bitcast %union.iwreq_data* %7 to %struct.TYPE_6__*
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %108 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @is_disconnect_status(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %97
  %113 = load i32, i32* %5, align 4
  %114 = call i64 @is_connect_status(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = bitcast %union.iwreq_data* %7 to %struct.TYPE_6__*
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @eth_zero_addr(i32 %119)
  %121 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %122 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %121, i32 0, i32 2
  %123 = load %struct.net_device*, %struct.net_device** %122, align 8
  %124 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %125 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_dbg(%struct.net_device* %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load %struct.net_device*, %struct.net_device** %6, align 8
  %130 = load i32, i32* @SIOCGIWAP, align 4
  %131 = call i32 @wireless_send_event(%struct.net_device* %129, i32 %130, %union.iwreq_data* %7, i32* null)
  br label %132

132:                                              ; preds = %116, %112, %97
  %133 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %134 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  ret void
}

declare dso_local i32 @get_word(%struct.ks_wlan_private*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @get_current_ap(%struct.ks_wlan_private*, %struct.link_ap_info*) #1

declare dso_local i64 @is_connect_status(i32) #1

declare dso_local i64 @is_disconnect_status(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ks_wlan_do_power_save(%struct.ks_wlan_private*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %union.iwreq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
