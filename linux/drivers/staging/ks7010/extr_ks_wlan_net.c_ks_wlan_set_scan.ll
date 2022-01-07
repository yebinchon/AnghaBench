; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ks_wlan_private = type { i64, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iw_scan_req = type { i32, i64 }

@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@IW_SCAN_THIS_ESSID = common dso_local global i32 0, align 4
@SME_AP_SCAN = common dso_local global i32 0, align 4
@SME_BSS_SCAN_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_set_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_set_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  %11 = alloca %struct.iw_scan_req*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %12)
  store %struct.ks_wlan_private* %13, %struct.ks_wlan_private** %10, align 8
  store %struct.iw_scan_req* null, %struct.iw_scan_req** %11, align 8
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %15 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SLP_SLEEP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %68

22:                                               ; preds = %4
  %23 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %24 = bitcast %union.iwreq_data* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %27, 16
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %31 = bitcast %union.iwreq_data* %30 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IW_SCAN_THIS_ESSID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %29
  %38 = load i8*, i8** %9, align 8
  %39 = bitcast i8* %38 to %struct.iw_scan_req*
  store %struct.iw_scan_req* %39, %struct.iw_scan_req** %11, align 8
  %40 = load %struct.iw_scan_req*, %struct.iw_scan_req** %11, align 8
  %41 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %44 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %46 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iw_scan_req*, %struct.iw_scan_req** %11, align 8
  %49 = getelementptr inbounds %struct.iw_scan_req, %struct.iw_scan_req* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %52 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @memcpy(i32 %47, i32 %50, i64 %53)
  br label %58

55:                                               ; preds = %29, %22
  %56 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %57 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %37
  %59 = load i32, i32* @SME_AP_SCAN, align 4
  %60 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %61 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 8
  %65 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %10, align 8
  %66 = load i32, i32* @SME_BSS_SCAN_REQUEST, align 4
  %67 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %58, %19
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @hostif_sme_enqueue(%struct.ks_wlan_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
