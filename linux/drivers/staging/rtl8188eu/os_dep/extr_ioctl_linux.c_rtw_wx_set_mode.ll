; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.adapter = type { i32 }

@_FAIL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@Ndis802_11AutoUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set_mode = IW_MODE_AUTO\0A\00", align 1
@Ndis802_11IBSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"set_mode = IW_MODE_ADHOC\0A\00", align 1
@Ndis802_11APMode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"set_mode = IW_MODE_MASTER\0A\00", align 1
@Ndis802_11Infrastructure = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"set_mode = IW_MODE_INFRA\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@_module_rtl871x_ioctl_os_c = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"\0A Mode: %s is not supported\0A\00", align 1
@iw_operation_mode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @rtw_wx_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_wx_set_mode(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i64 @rtw_netdev_priv(%struct.net_device* %12)
  %14 = inttoptr i64 %13 to %struct.adapter*
  store %struct.adapter* %14, %struct.adapter** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load i64, i64* @_FAIL, align 8
  %16 = load %struct.adapter*, %struct.adapter** %9, align 8
  %17 = call i64 @rtw_pwr_wakeup(%struct.adapter* %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  br label %73

22:                                               ; preds = %4
  %23 = load %struct.adapter*, %struct.adapter** %9, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %73

30:                                               ; preds = %22
  %31 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %32 = bitcast %union.iwreq_data* %31 to i32*
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %46 [
    i32 130, label %34
    i32 131, label %37
    i32 128, label %40
    i32 129, label %43
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @Ndis802_11AutoUnknown, align 4
  store i32 %35, i32* %10, align 4
  %36 = call i32 @DBG_88E(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %61

37:                                               ; preds = %30
  %38 = load i32, i32* @Ndis802_11IBSS, align 4
  store i32 %38, i32* %10, align 4
  %39 = call i32 @DBG_88E(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %61

40:                                               ; preds = %30
  %41 = load i32, i32* @Ndis802_11APMode, align 4
  store i32 %41, i32* %10, align 4
  %42 = call i32 @DBG_88E(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %61

43:                                               ; preds = %30
  %44 = load i32, i32* @Ndis802_11Infrastructure, align 4
  store i32 %44, i32* %10, align 4
  %45 = call i32 @DBG_88E(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %61

46:                                               ; preds = %30
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @_module_rtl871x_ioctl_os_c, align 4
  %50 = load i32, i32* @_drv_err_, align 4
  %51 = load i32*, i32** @iw_operation_mode, align 8
  %52 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %53 = bitcast %union.iwreq_data* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @RT_TRACE(i32 %49, i32 %50, i8* %59)
  br label %73

61:                                               ; preds = %43, %40, %37, %34
  %62 = load %struct.adapter*, %struct.adapter** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @rtw_set_802_11_infrastructure_mode(%struct.adapter* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @EPERM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %73

69:                                               ; preds = %61
  %70 = load %struct.adapter*, %struct.adapter** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @rtw_setopmode_cmd(%struct.adapter* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %66, %46, %27, %19
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i64 @rtw_pwr_wakeup(%struct.adapter*) #1

declare dso_local i32 @DBG_88E(i8*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_set_802_11_infrastructure_mode(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_setopmode_cmd(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
