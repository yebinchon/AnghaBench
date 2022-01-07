; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c" rtw_wx_get_mode\0A\00", align 1
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i32 0, align 4
@IW_MODE_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @rtw_wx_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_wx_get_mode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i64 @rtw_netdev_priv(%struct.net_device* %11)
  %13 = inttoptr i64 %12 to %struct.adapter*
  store %struct.adapter* %13, %struct.adapter** %9, align 8
  %14 = load %struct.adapter*, %struct.adapter** %9, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  store %struct.mlme_priv* %15, %struct.mlme_priv** %10, align 8
  %16 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %17 = load i32, i32* @_drv_info_, align 4
  %18 = call i32 @RT_TRACE(i32 %16, i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %20 = load i32, i32* @WIFI_STATION_STATE, align 4
  %21 = call i64 @check_fwstate(%struct.mlme_priv* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @IW_MODE_INFRA, align 4
  %25 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %26 = bitcast %union.iwreq_data* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %56

27:                                               ; preds = %4
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %29 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %30 = call i64 @check_fwstate(%struct.mlme_priv* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %34 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %35 = call i64 @check_fwstate(%struct.mlme_priv* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @IW_MODE_ADHOC, align 4
  %39 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %40 = bitcast %union.iwreq_data* %39 to i32*
  store i32 %38, i32* %40, align 4
  br label %55

41:                                               ; preds = %32
  %42 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %43 = load i32, i32* @WIFI_AP_STATE, align 4
  %44 = call i64 @check_fwstate(%struct.mlme_priv* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @IW_MODE_MASTER, align 4
  %48 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %49 = bitcast %union.iwreq_data* %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @IW_MODE_AUTO, align 4
  %52 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %53 = bitcast %union.iwreq_data* %52 to i32*
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %23
  ret i32 0
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
