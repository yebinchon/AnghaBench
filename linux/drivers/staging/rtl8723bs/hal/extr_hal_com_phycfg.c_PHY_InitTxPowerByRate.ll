; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_InitTxPowerByRate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_InitTxPowerByRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i64**** }

@BAND_ON_2_4G = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@TX_PWR_BY_RATE_NUM_RF = common dso_local global i64 0, align 8
@TX_PWR_BY_RATE_NUM_RATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_InitTxPowerByRate(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %8)
  store %struct.hal_com_data* %9, %struct.hal_com_data** %3, align 8
  %10 = load i64, i64* @BAND_ON_2_4G, align 8
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %57, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @BAND_ON_5G, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @TX_PWR_BY_RATE_NUM_RF, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %49, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @TX_PWR_BY_RATE_NUM_RF, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @TX_PWR_BY_RATE_NUM_RATE, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %32 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %31, i32 0, i32 0
  %33 = load i64****, i64***** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i64***, i64**** %33, i64 %34
  %36 = load i64***, i64**** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64**, i64*** %36, i64 %37
  %39 = load i64**, i64*** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i64*, i64** %39, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %30
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %26

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %21

52:                                               ; preds = %21
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %16

56:                                               ; preds = %16
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %4, align 8
  br label %11

60:                                               ; preds = %11
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
