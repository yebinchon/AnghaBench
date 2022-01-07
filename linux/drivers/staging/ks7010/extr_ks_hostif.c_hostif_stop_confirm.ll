; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_stop_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_stop_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i64, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@DEVICE_STATE_SLEEP = common dso_local global i64 0, align 8
@DEVICE_STATE_READY = common dso_local global i64 0, align 8
@FORCE_DISCONNECT = common dso_local global i32 0, align 4
@DISCONNECT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IWEVENT: disconnect\0A\00", align 1
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@SME_STOP_CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_stop_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_stop_confirm(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %union.iwreq_data, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %8 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %11 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %10, i32 0, i32 3
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %14 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DEVICE_STATE_SLEEP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i64, i64* @DEVICE_STATE_READY, align 8
  %20 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %21 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %24 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @is_connect_status(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 @netif_carrier_off(%struct.net_device* %29)
  %31 = load i32, i32* @FORCE_DISCONNECT, align 4
  %32 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %33 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %31, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @DISCONNECT_STATUS, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %40 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i32 @netdev_info(%struct.net_device* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %43 = bitcast %union.iwreq_data* %6 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = bitcast %union.iwreq_data* %6 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @ARPHRD_ETHER, align 4
  %48 = bitcast %union.iwreq_data* %6 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %51 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @is_disconnect_status(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %28
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @is_connect_status(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = bitcast %union.iwreq_data* %6 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @eth_zero_addr(i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call i32 @netdev_info(%struct.net_device* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = load i32, i32* @SIOCGIWAP, align 4
  %68 = call i32 @wireless_send_event(%struct.net_device* %66, i32 %67, %union.iwreq_data* %6, i32* null)
  br label %69

69:                                               ; preds = %59, %55, %28
  %70 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %71 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %22
  %73 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %74 = load i32, i32* @SME_STOP_CONFIRM, align 4
  %75 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %73, i32 %74)
  ret void
}

declare dso_local i64 @is_connect_status(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i64 @is_disconnect_status(i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %union.iwreq_data*, i32*) #1

declare dso_local i32 @hostif_sme_enqueue(%struct.ks_wlan_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
