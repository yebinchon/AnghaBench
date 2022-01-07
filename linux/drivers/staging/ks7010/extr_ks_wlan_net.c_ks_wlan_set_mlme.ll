; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_mlme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_set_mlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.ks_wlan_private = type { i64 }
%struct.iw_mlme = type { i64, i64 }

@SLP_SLEEP = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@IW_MLME_DEAUTH = common dso_local global i64 0, align 8
@IW_MLME_DISASSOC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WLAN_REASON_MIC_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ks_wlan_set_mlme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_set_mlme(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ks_wlan_private*, align 8
  %11 = alloca %struct.iw_mlme*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %13)
  store %struct.ks_wlan_private* %14, %struct.ks_wlan_private** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.iw_mlme*
  store %struct.iw_mlme* %16, %struct.iw_mlme** %11, align 8
  store i32 1, i32* %12, align 4
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
  br label %56

25:                                               ; preds = %4
  %26 = load %struct.iw_mlme*, %struct.iw_mlme** %11, align 8
  %27 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IW_MLME_DEAUTH, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.iw_mlme*, %struct.iw_mlme** %11, align 8
  %33 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IW_MLME_DISASSOC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %56

40:                                               ; preds = %31, %25
  %41 = load %struct.iw_mlme*, %struct.iw_mlme** %11, align 8
  %42 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IW_MLME_DEAUTH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.iw_mlme*, %struct.iw_mlme** %11, align 8
  %48 = getelementptr inbounds %struct.iw_mlme, %struct.iw_mlme* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WLAN_REASON_MIC_FAILURE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %56

53:                                               ; preds = %46, %40
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = call i32 @ks_wlan_set_stop_request(%struct.net_device* %54, i32* null, i32* %12, i32* null)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %52, %37, %22
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ks_wlan_set_stop_request(%struct.net_device*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
