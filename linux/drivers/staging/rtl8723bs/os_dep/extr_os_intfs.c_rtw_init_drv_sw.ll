; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_init_drv_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_init_drv_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.adapter* }
%struct.TYPE_3__ = type { %struct.adapter* }

@_SUCCESS = common dso_local global i64 0, align 8
@_module_os_intfs_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"+rtw_init_drv_sw\0A\00", align 1
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"\0A Can't init cmd_priv\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"\0A Can't init evt_priv\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\0A Can't init mlme_priv\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't _rtw_init_xmit_priv\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Can't _rtw_init_recv_priv\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Can't _rtw_init_sta_priv\0A\00", align 1
@GHZ24_50 = common dso_local global i32 0, align 4
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
  %9 = call i32 @rtw_init_default_value(%struct.adapter* %8)
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = call i32 @rtw_init_hal_com_default_value(%struct.adapter* %10)
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 7
  %14 = call i64 @rtw_init_cmd_priv(%struct.TYPE_3__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @_module_os_intfs_c_, align 4
  %18 = load i32, i32* @_drv_err_, align 4
  %19 = call i32 @RT_TRACE(i32 %17, i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* @_FAIL, align 8
  store i64 %20, i64* %3, align 8
  br label %95

21:                                               ; preds = %1
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.adapter* %22, %struct.adapter** %25, align 8
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 6
  %28 = call i64 @rtw_init_evt_priv(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load i32, i32* @_module_os_intfs_c_, align 4
  %32 = load i32, i32* @_drv_err_, align 4
  %33 = call i32 @RT_TRACE(i32 %31, i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i64, i64* @_FAIL, align 8
  store i64 %34, i64* %3, align 8
  br label %95

35:                                               ; preds = %21
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = call i64 @rtw_init_mlme_priv(%struct.adapter* %36)
  %38 = load i64, i64* @_FAIL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @_module_os_intfs_c_, align 4
  %42 = load i32, i32* @_drv_err_, align 4
  %43 = call i32 @RT_TRACE(i32 %41, i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i64, i64* @_FAIL, align 8
  store i64 %44, i64* %3, align 8
  br label %95

45:                                               ; preds = %35
  %46 = load %struct.adapter*, %struct.adapter** %2, align 8
  %47 = call i32 @init_mlme_ext_priv(%struct.adapter* %46)
  %48 = load %struct.adapter*, %struct.adapter** %2, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 5
  %50 = load %struct.adapter*, %struct.adapter** %2, align 8
  %51 = call i64 @_rtw_init_xmit_priv(i32* %49, %struct.adapter* %50)
  %52 = load i64, i64* @_FAIL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = call i32 @DBG_871X(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i64, i64* @_FAIL, align 8
  store i64 %56, i64* %3, align 8
  br label %95

57:                                               ; preds = %45
  %58 = load %struct.adapter*, %struct.adapter** %2, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 4
  %60 = load %struct.adapter*, %struct.adapter** %2, align 8
  %61 = call i64 @_rtw_init_recv_priv(i32* %59, %struct.adapter* %60)
  %62 = load i64, i64* @_FAIL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = call i32 @DBG_871X(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i64, i64* @_FAIL, align 8
  store i64 %66, i64* %3, align 8
  br label %95

67:                                               ; preds = %57
  %68 = load %struct.adapter*, %struct.adapter** %2, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 3
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 2
  %73 = call i64 @_rtw_init_sta_priv(%struct.TYPE_4__* %72)
  %74 = load i64, i64* @_FAIL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = call i32 @DBG_871X(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i64, i64* @_FAIL, align 8
  store i64 %78, i64* %3, align 8
  br label %95

79:                                               ; preds = %67
  %80 = load %struct.adapter*, %struct.adapter** %2, align 8
  %81 = load %struct.adapter*, %struct.adapter** %2, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store %struct.adapter* %80, %struct.adapter** %83, align 8
  %84 = load i32, i32* @GHZ24_50, align 4
  %85 = load %struct.adapter*, %struct.adapter** %2, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.adapter*, %struct.adapter** %2, align 8
  %88 = getelementptr inbounds %struct.adapter, %struct.adapter* %87, i32 0, i32 0
  store i32 255, i32* %88, align 8
  %89 = load %struct.adapter*, %struct.adapter** %2, align 8
  %90 = call i32 @rtw_init_bcmc_stainfo(%struct.adapter* %89)
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = call i32 @rtw_init_pwrctrl_priv(%struct.adapter* %91)
  %93 = load %struct.adapter*, %struct.adapter** %2, align 8
  %94 = call i32 @rtw_hal_dm_init(%struct.adapter* %93)
  br label %95

95:                                               ; preds = %79, %76, %64, %54, %40, %30, %16
  %96 = load i32, i32* @_module_os_intfs_c_, align 4
  %97 = load i32, i32* @_drv_info_, align 4
  %98 = call i32 @RT_TRACE(i32 %96, i32 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %99 = load i64, i64* %3, align 8
  ret i64 %99
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_init_default_value(%struct.adapter*) #1

declare dso_local i32 @rtw_init_hal_com_default_value(%struct.adapter*) #1

declare dso_local i64 @rtw_init_cmd_priv(%struct.TYPE_3__*) #1

declare dso_local i64 @rtw_init_evt_priv(i32*) #1

declare dso_local i64 @rtw_init_mlme_priv(%struct.adapter*) #1

declare dso_local i32 @init_mlme_ext_priv(%struct.adapter*) #1

declare dso_local i64 @_rtw_init_xmit_priv(i32*, %struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i64 @_rtw_init_recv_priv(i32*, %struct.adapter*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @_rtw_init_sta_priv(%struct.TYPE_4__*) #1

declare dso_local i32 @rtw_init_bcmc_stainfo(%struct.adapter*) #1

declare dso_local i32 @rtw_init_pwrctrl_priv(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_dm_init(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
