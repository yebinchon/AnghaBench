; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_sdio.c_rtw_hal_get_sdio_tx_max_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_sdio.c_rtw_hal_get_sdio_tx_max_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.dvobj_priv = type { i32 }
%struct.hal_com_data = type { i32* }

@HI_QUEUE_IDX = common dso_local global i64 0, align 8
@MID_QUEUE_IDX = common dso_local global i64 0, align 8
@LOW_QUEUE_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_hal_get_sdio_tx_max_length(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvobj_priv*, align 8
  %6 = alloca %struct.hal_com_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %9)
  store %struct.dvobj_priv* %10, %struct.dvobj_priv** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %11)
  store %struct.hal_com_data* %12, %struct.hal_com_data** %6, align 8
  %13 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ffaddr2deviceId(%struct.dvobj_priv* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %38 [
    i32 130, label %17
    i32 128, label %24
    i32 129, label %31
  ]

17:                                               ; preds = %2
  %18 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %19 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @HI_QUEUE_IDX, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %26 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @MID_QUEUE_IDX, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %33 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @LOW_QUEUE_IDX, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %45

38:                                               ; preds = %2
  %39 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %40 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @MID_QUEUE_IDX, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %38, %31, %24, %17
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @ffaddr2deviceId(%struct.dvobj_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
