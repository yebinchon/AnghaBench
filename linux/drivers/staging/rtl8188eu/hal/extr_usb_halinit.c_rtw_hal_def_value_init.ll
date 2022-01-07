; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_rtw_hal_def_value_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_rtw_hal_def_value_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.pwrctrl_priv, %struct.hal_data_8188e* }
%struct.pwrctrl_priv = type { i32 }
%struct.hal_data_8188e = type { i32, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64*, i64, i64 }

@HP_THERMAL_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_def_value_init(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_data_8188e*, align 8
  %4 = alloca %struct.pwrctrl_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  %8 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  store %struct.hal_data_8188e* %8, %struct.hal_data_8188e** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.pwrctrl_priv* %10, %struct.pwrctrl_priv** %4, align 8
  %11 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %12 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %17 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %20 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %24 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %28 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %30 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %29, i32 0, i32 0
  store i32 13, i32* %30, align 8
  %31 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %32 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  store i64 0, i64* %5, align 8
  br label %35

35:                                               ; preds = %47, %18
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @HP_THERMAL_NUM, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %41 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %35

50:                                               ; preds = %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
