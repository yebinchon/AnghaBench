; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ks_wlan_private = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"in_interrupt = %ld update_phyinfo = %d\0A\00", align 1
@update_phyinfo = common dso_local global i32 0, align 4
@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@RATE_MASK = common dso_local global i32 0, align 4
@TX_RATE_FIXED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_get_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ks_wlan_private* %12, %struct.ks_wlan_private** %10, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call i32 (...) @in_interrupt()
  %15 = call i32 @atomic_read(i32* @update_phyinfo)
  %16 = call i32 @netdev_dbg(%struct.net_device* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %18 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SLP_SLEEP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %52

25:                                               ; preds = %4
  %26 = call i32 @atomic_read(i32* @update_phyinfo)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %30 = call i32 @ks_wlan_update_phy_information(%struct.ks_wlan_private* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %33 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RATE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = mul nsw i32 %36, 500000
  %38 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %39 = bitcast %union.iwreq_data* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %42 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TX_RATE_FIXED, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %50 = bitcast %union.iwreq_data* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %31, %22
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ks_wlan_update_phy_information(%struct.ks_wlan_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
