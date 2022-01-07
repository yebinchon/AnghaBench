; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_rtl8723b_init_default_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_rtl8723b_init_default_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hal_com_data = type { i32, i32, %struct.TYPE_5__, i64, i64, i64, %struct.dm_priv }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64 }
%struct.dm_priv = type { i64*, i64, i64 }
%struct.TYPE_6__ = type { i32 }

@WIRELESS_11BG_24N = common dso_local global i32 0, align 4
@HP_THERMAL_NUM = common dso_local global i64 0, align 8
@EFUSE_BT_MAX_MAP_LEN = common dso_local global i32 0, align 4
@EFUSE_MAX_BT_BANK = common dso_local global i32 0, align 4
@EFUSE_MAX_HW_SIZE = common dso_local global i32 0, align 4
@EFUSE_MAX_MAP_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723b_init_default_value(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca %struct.dm_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %6)
  store %struct.hal_com_data* %7, %struct.hal_com_data** %3, align 8
  %8 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %9 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %8, i32 0, i32 6
  store %struct.dm_priv* %9, %struct.dm_priv** %4, align 8
  %10 = load i32, i32* @WIRELESS_11BG_24N, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %15 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %17 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = call %struct.TYPE_6__* @adapter_to_pwrctl(%struct.adapter* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %25 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %28 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %30 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %32 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %43, %26
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @HP_THERMAL_NUM, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.dm_priv*, %struct.dm_priv** %4, align 8
  %39 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %33

46:                                               ; preds = %33
  %47 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %48 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %50 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local %struct.TYPE_6__* @adapter_to_pwrctl(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
