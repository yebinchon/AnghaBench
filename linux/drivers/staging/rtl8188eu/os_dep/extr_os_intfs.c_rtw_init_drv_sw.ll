; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_rtw_init_drv_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_rtw_init_drv_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.adapter* }
%struct.TYPE_3__ = type { %struct.adapter* }

@_SUCCESS = common dso_local global i64 0, align 8
@_module_os_intfs_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"+rtw_init_drv_sw\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"\0A Can't init cmd_priv\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\0A Can't init mlme_priv\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\0A Can't init mlme_ext_priv\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't _rtw_init_xmit_priv\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Can't _rtw_init_recv_priv\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Can't _rtw_init_sta_priv\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"-rtw_init_drv_sw\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_init_drv_sw(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load i64, i64* @_SUCCESS, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* @_module_os_intfs_c_, align 4
  %6 = load i32, i32* @_drv_info_, align 4
  %7 = call i32 @RT_TRACE(i32 %5, i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 3
  %10 = call i64 @rtw_init_cmd_priv(%struct.TYPE_3__* %9)
  %11 = load i64, i64* @_FAIL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @_module_os_intfs_c_, align 4
  %15 = load i32, i32* @_drv_err_, align 4
  %16 = call i32 @RT_TRACE(i32 %14, i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i64, i64* @_FAIL, align 8
  store i64 %17, i64* %3, align 8
  br label %88

18:                                               ; preds = %1
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.adapter* %19, %struct.adapter** %22, align 8
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = call i64 @rtw_init_mlme_priv(%struct.adapter* %23)
  %25 = load i64, i64* @_FAIL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i32, i32* @_module_os_intfs_c_, align 4
  %29 = load i32, i32* @_drv_err_, align 4
  %30 = call i32 @RT_TRACE(i32 %28, i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* @_FAIL, align 8
  store i64 %31, i64* %3, align 8
  br label %88

32:                                               ; preds = %18
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = call i64 @init_mlme_ext_priv(%struct.adapter* %33)
  %35 = load i64, i64* @_FAIL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @_module_os_intfs_c_, align 4
  %39 = load i32, i32* @_drv_err_, align 4
  %40 = call i32 @RT_TRACE(i32 %38, i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i64, i64* @_FAIL, align 8
  store i64 %41, i64* %3, align 8
  br label %88

42:                                               ; preds = %32
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 2
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = call i64 @_rtw_init_xmit_priv(i32* %44, %struct.adapter* %45)
  %47 = load i64, i64* @_FAIL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = call i32 @DBG_88E(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i64, i64* @_FAIL, align 8
  store i64 %51, i64* %3, align 8
  br label %88

52:                                               ; preds = %42
  %53 = load %struct.adapter*, %struct.adapter** %2, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 1
  %55 = load %struct.adapter*, %struct.adapter** %2, align 8
  %56 = call i64 @_rtw_init_recv_priv(i32* %54, %struct.adapter* %55)
  %57 = load i64, i64* @_FAIL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = call i32 @DBG_88E(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i64, i64* @_FAIL, align 8
  store i64 %61, i64* %3, align 8
  br label %88

62:                                               ; preds = %52
  %63 = load %struct.adapter*, %struct.adapter** %2, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 0
  %65 = call i64 @_rtw_init_sta_priv(%struct.TYPE_4__* %64)
  %66 = load i64, i64* @_FAIL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = call i32 @DBG_88E(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i64, i64* @_FAIL, align 8
  store i64 %70, i64* %3, align 8
  br label %88

71:                                               ; preds = %62
  %72 = load %struct.adapter*, %struct.adapter** %2, align 8
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store %struct.adapter* %72, %struct.adapter** %75, align 8
  %76 = load %struct.adapter*, %struct.adapter** %2, align 8
  %77 = call i32 @rtw_init_bcmc_stainfo(%struct.adapter* %76)
  %78 = load %struct.adapter*, %struct.adapter** %2, align 8
  %79 = call i32 @rtw_init_pwrctrl_priv(%struct.adapter* %78)
  %80 = load %struct.adapter*, %struct.adapter** %2, align 8
  %81 = call i64 @rtw_init_default_value(%struct.adapter* %80)
  store i64 %81, i64* %3, align 8
  %82 = load %struct.adapter*, %struct.adapter** %2, align 8
  %83 = call i32 @rtw_hal_dm_init(%struct.adapter* %82)
  %84 = load %struct.adapter*, %struct.adapter** %2, align 8
  %85 = call i32 @rtw_hal_sw_led_init(%struct.adapter* %84)
  %86 = load %struct.adapter*, %struct.adapter** %2, align 8
  %87 = call i32 @rtw_hal_sreset_init(%struct.adapter* %86)
  br label %88

88:                                               ; preds = %71, %68, %59, %49, %37, %27, %13
  %89 = load i32, i32* @_module_os_intfs_c_, align 4
  %90 = load i32, i32* @_drv_info_, align 4
  %91 = call i32 @RT_TRACE(i32 %89, i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i64 @rtw_init_cmd_priv(%struct.TYPE_3__*) #1

declare dso_local i64 @rtw_init_mlme_priv(%struct.adapter*) #1

declare dso_local i64 @init_mlme_ext_priv(%struct.adapter*) #1

declare dso_local i64 @_rtw_init_xmit_priv(i32*, %struct.adapter*) #1

declare dso_local i32 @DBG_88E(i8*) #1

declare dso_local i64 @_rtw_init_recv_priv(i32*, %struct.adapter*) #1

declare dso_local i64 @_rtw_init_sta_priv(%struct.TYPE_4__*) #1

declare dso_local i32 @rtw_init_bcmc_stainfo(%struct.adapter*) #1

declare dso_local i32 @rtw_init_pwrctrl_priv(%struct.adapter*) #1

declare dso_local i64 @rtw_init_default_value(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_dm_init(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_sw_led_init(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_sreset_init(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
