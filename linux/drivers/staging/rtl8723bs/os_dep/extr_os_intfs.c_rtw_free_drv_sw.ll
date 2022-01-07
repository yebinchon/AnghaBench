; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_free_drv_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_free_drv_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@_module_os_intfs_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"==>rtw_free_drv_sw\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"<==rtw_free_drv_sw\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"-rtw_free_drv_sw\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_free_drv_sw(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load i32, i32* @_module_os_intfs_c_, align 4
  %4 = load i32, i32* @_drv_info_, align 4
  %5 = call i32 @RT_TRACE(i32 %3, i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 8
  %8 = call i32 @free_mlme_ext_priv(i32* %7)
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 7
  %11 = call i32 @rtw_free_cmd_priv(i32* %10)
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 6
  %14 = call i32 @rtw_free_evt_priv(i32* %13)
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 5
  %17 = call i32 @rtw_free_mlme_priv(i32* %16)
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 4
  %20 = call i32 @_rtw_free_xmit_priv(i32* %19)
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 3
  %23 = call i32 @_rtw_free_sta_priv(i32* %22)
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 2
  %26 = call i32 @_rtw_free_recv_priv(i32* %25)
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = call i32 @rtw_free_pwrctrl_priv(%struct.adapter* %27)
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = call i32 @rtw_hal_free_data(%struct.adapter* %29)
  %31 = load i32, i32* @_module_os_intfs_c_, align 4
  %32 = load i32, i32* @_drv_info_, align 4
  %33 = call i32 @RT_TRACE(i32 %31, i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %1
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @free_netdev(i32* %43)
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %39, %1
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.adapter*, %struct.adapter** %2, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @_module_os_intfs_c_, align 4
  %60 = load i32, i32* @_drv_info_, align 4
  %61 = call i32 @RT_TRACE(i32 %59, i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @_SUCCESS, align 4
  ret i32 %62
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @free_mlme_ext_priv(i32*) #1

declare dso_local i32 @rtw_free_cmd_priv(i32*) #1

declare dso_local i32 @rtw_free_evt_priv(i32*) #1

declare dso_local i32 @rtw_free_mlme_priv(i32*) #1

declare dso_local i32 @_rtw_free_xmit_priv(i32*) #1

declare dso_local i32 @_rtw_free_sta_priv(i32*) #1

declare dso_local i32 @_rtw_free_recv_priv(i32*) #1

declare dso_local i32 @rtw_free_pwrctrl_priv(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_free_data(%struct.adapter*) #1

declare dso_local i32 @free_netdev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
