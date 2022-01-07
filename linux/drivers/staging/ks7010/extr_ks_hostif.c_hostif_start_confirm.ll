; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_start_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_start_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i32, i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@ARPHRD_ETHER = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c" scan_ind_count=%d\0A\00", align 1
@SME_START_CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_start_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_start_confirm(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca %union.iwreq_data, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %4 = bitcast %union.iwreq_data* %3 to %struct.TYPE_3__*
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = bitcast %union.iwreq_data* %3 to %struct.TYPE_3__*
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @ARPHRD_ETHER, align 4
  %9 = bitcast %union.iwreq_data* %3 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %12 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @is_connect_status(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = bitcast %union.iwreq_data* %3 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @eth_zero_addr(i32 %19)
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %22 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SIOCGIWAP, align 4
  %25 = call i32 @wireless_send_event(i32 %23, i32 %24, %union.iwreq_data* %3, i32* null)
  br label %26

26:                                               ; preds = %16, %1
  %27 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %28 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %31 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netdev_dbg(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %35 = load i32, i32* @SME_START_CONFIRM, align 4
  %36 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %34, i32 %35)
  ret void
}

declare dso_local i64 @is_connect_status(i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @hostif_sme_enqueue(%struct.ks_wlan_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
