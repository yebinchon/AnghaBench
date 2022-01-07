; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@IW_MODE_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8711_wx_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8711_wx_get_mode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._adapter*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct._adapter* @netdev_priv(%struct.net_device* %11)
  store %struct._adapter* %12, %struct._adapter** %9, align 8
  %13 = load %struct._adapter*, %struct._adapter** %9, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 0
  store %struct.mlme_priv* %14, %struct.mlme_priv** %10, align 8
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %16 = load i32, i32* @WIFI_STATION_STATE, align 4
  %17 = call i64 @check_fwstate(%struct.mlme_priv* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @IW_MODE_INFRA, align 4
  %21 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %22 = bitcast %union.iwreq_data* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %49

23:                                               ; preds = %4
  %24 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %25 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %26 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @check_fwstate(%struct.mlme_priv* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @IW_MODE_ADHOC, align 4
  %32 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %33 = bitcast %union.iwreq_data* %32 to i32*
  store i32 %31, i32* %33, align 4
  br label %48

34:                                               ; preds = %23
  %35 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %36 = load i32, i32* @WIFI_AP_STATE, align 4
  %37 = call i64 @check_fwstate(%struct.mlme_priv* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @IW_MODE_MASTER, align 4
  %41 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %42 = bitcast %union.iwreq_data* %41 to i32*
  store i32 %40, i32* %42, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @IW_MODE_AUTO, align 4
  %45 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %46 = bitcast %union.iwreq_data* %45 to i32*
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48, %19
  ret i32 0
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
