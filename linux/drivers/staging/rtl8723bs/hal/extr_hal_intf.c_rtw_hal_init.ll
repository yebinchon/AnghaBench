; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 (%struct.adapter.0*)* }
%struct.adapter.0 = type opaque
%struct.dvobj_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"rtw_hal_init: hal__init fail\0A\00", align 1
@_module_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"-rtl871x_hal_init:status = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_hal_init(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dvobj_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %5)
  store %struct.dvobj_priv* %6, %struct.dvobj_priv** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64 (%struct.adapter.0*)*, i64 (%struct.adapter.0*)** %9, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = bitcast %struct.adapter* %11 to %struct.adapter.0*
  %13 = call i64 %10(%struct.adapter.0* %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = call i32 @rtw_hal_init_opmode(%struct.adapter* %18)
  %20 = load %struct.dvobj_priv*, %struct.dvobj_priv** %4, align 8
  %21 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = call i32 @rtw_hal_notch_filter(%struct.adapter* %30, i32 1)
  br label %32

32:                                               ; preds = %29, %17
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = call i32 @rtw_hal_reset_security_engine(%struct.adapter* %33)
  %35 = load %struct.dvobj_priv*, %struct.dvobj_priv** %4, align 8
  %36 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @rtw_sec_restore_wep_key(%struct.TYPE_6__* %37)
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = call i32 @init_hw_mlme_ext(%struct.adapter* %39)
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = call i32 @rtw_bb_rf_gain_offset(%struct.adapter* %41)
  br label %49

43:                                               ; preds = %1
  %44 = load %struct.dvobj_priv*, %struct.dvobj_priv** %4, align 8
  %45 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = call i32 @DBG_871X(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %32
  %50 = load i32, i32* @_module_hal_init_c_, align 4
  %51 = load i32, i32* @_drv_err_, align 4
  %52 = load i64, i64* %3, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @RT_TRACE(i32 %50, i32 %51, i8* %53)
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_init_opmode(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_notch_filter(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_hal_reset_security_engine(%struct.adapter*) #1

declare dso_local i32 @rtw_sec_restore_wep_key(%struct.TYPE_6__*) #1

declare dso_local i32 @init_hw_mlme_ext(%struct.adapter*) #1

declare dso_local i32 @rtw_bb_rf_gain_offset(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
