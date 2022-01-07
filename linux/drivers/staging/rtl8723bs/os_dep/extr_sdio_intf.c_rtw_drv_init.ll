; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_sdio_intf.c_rtw_drv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_sdio_intf.c_rtw_drv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.sdio_device_id = type { i32 }
%struct.adapter = type { i32 }
%struct.dvobj_priv = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@_module_hci_intfs_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"initialize device object priv Failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"rtw_init_primarystruct adapter Failed!\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"-871x_drv - drv_init, success!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @rtw_drv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_drv_init(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca %struct.sdio_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.dvobj_priv*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %3, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %4, align 8
  %9 = load i32, i32* @_FAIL, align 4
  store i32 %9, i32* %5, align 4
  store %struct.adapter* null, %struct.adapter** %6, align 8
  store %struct.adapter* null, %struct.adapter** %7, align 8
  %10 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %11 = call %struct.dvobj_priv* @sdio_dvobj_init(%struct.sdio_func* %10)
  store %struct.dvobj_priv* %11, %struct.dvobj_priv** %8, align 8
  %12 = load %struct.dvobj_priv*, %struct.dvobj_priv** %8, align 8
  %13 = icmp eq %struct.dvobj_priv* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @_module_hci_intfs_c_, align 4
  %16 = load i32, i32* @_drv_err_, align 4
  %17 = call i32 @RT_TRACE(i32 %15, i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.dvobj_priv*, %struct.dvobj_priv** %8, align 8
  %20 = load %struct.sdio_device_id*, %struct.sdio_device_id** %4, align 8
  %21 = call %struct.adapter* @rtw_sdio_if1_init(%struct.dvobj_priv* %19, %struct.sdio_device_id* %20)
  store %struct.adapter* %21, %struct.adapter** %6, align 8
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = icmp eq %struct.adapter* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @DBG_871X(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %64

26:                                               ; preds = %18
  %27 = load %struct.adapter*, %struct.adapter** %6, align 8
  %28 = call i32 @rtw_drv_register_netdev(%struct.adapter* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %45

33:                                               ; preds = %26
  %34 = load %struct.dvobj_priv*, %struct.dvobj_priv** %8, align 8
  %35 = call i32 @sdio_alloc_irq(%struct.dvobj_priv* %34)
  %36 = load i32, i32* @_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %45

39:                                               ; preds = %33
  %40 = load i32, i32* @_module_hci_intfs_c_, align 4
  %41 = load i32, i32* @_drv_err_, align 4
  %42 = call i32 @RT_TRACE(i32 %40, i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 (...) @rtw_ndev_notifier_register()
  %44 = load i32, i32* @_SUCCESS, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %38, %32
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.adapter*, %struct.adapter** %7, align 8
  %51 = icmp ne %struct.adapter* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %49, %45
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.adapter*, %struct.adapter** %6, align 8
  %59 = icmp ne %struct.adapter* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.adapter*, %struct.adapter** %6, align 8
  %62 = call i32 @rtw_sdio_if1_deinit(%struct.adapter* %61)
  br label %63

63:                                               ; preds = %60, %57, %53
  br label %64

64:                                               ; preds = %63, %24
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %70 = call i32 @sdio_dvobj_deinit(%struct.sdio_func* %69)
  br label %71

71:                                               ; preds = %68, %64
  br label %72

72:                                               ; preds = %71, %14
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @_SUCCESS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  br label %80

80:                                               ; preds = %77, %76
  %81 = phi i32 [ 0, %76 ], [ %79, %77 ]
  ret i32 %81
}

declare dso_local %struct.dvobj_priv* @sdio_dvobj_init(%struct.sdio_func*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local %struct.adapter* @rtw_sdio_if1_init(%struct.dvobj_priv*, %struct.sdio_device_id*) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @rtw_drv_register_netdev(%struct.adapter*) #1

declare dso_local i32 @sdio_alloc_irq(%struct.dvobj_priv*) #1

declare dso_local i32 @rtw_ndev_notifier_register(...) #1

declare dso_local i32 @rtw_sdio_if1_deinit(%struct.adapter*) #1

declare dso_local i32 @sdio_dvobj_deinit(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
