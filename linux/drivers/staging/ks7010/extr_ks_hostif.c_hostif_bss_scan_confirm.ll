; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_bss_scan_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_bss_scan_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"result=%d :: scan_ind_count=%d\0A\00", align 1
@SME_AP_SCAN = common dso_local global i32 0, align 4
@SME_BSS_SCAN_CONFIRM = common dso_local global i32 0, align 4
@SIOCGIWSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_bss_scan_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_bss_scan_confirm(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %union.iwreq_data, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %6 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %7 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %6, i32 0, i32 2
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %10 = call i32 @get_dword(%struct.ks_wlan_private* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %12 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %16 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @netdev_dbg(%struct.net_device* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load i32, i32* @SME_AP_SCAN, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %22 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %27 = load i32, i32* @SME_BSS_SCAN_CONFIRM, align 4
  %28 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %26, i32 %27)
  %29 = bitcast %union.iwreq_data* %5 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = bitcast %union.iwreq_data* %5 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = load i32, i32* @SIOCGIWSCAN, align 4
  %35 = call i32 @wireless_send_event(%struct.net_device* %33, i32 %34, %union.iwreq_data* %5, i32* null)
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %37 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  ret void
}

declare dso_local i32 @get_dword(%struct.ks_wlan_private*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @hostif_sme_enqueue(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %union.iwreq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
