; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_PHY_GetTxPowerIndex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_PHY_GetTxPowerIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hal_com_data = type { i32, i32 }

@BAND_ON_2_4G = common dso_local global i32 0, align 4
@ODM_RF_PATH_A = common dso_local global i32 0, align 4
@RF_1TX = common dso_local global i32 0, align 4
@MAX_POWER_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PHY_GetTxPowerIndex(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hal_com_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.adapter*, %struct.adapter** %6, align 8
  %17 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %16)
  store %struct.hal_com_data* %17, %struct.hal_com_data** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.adapter*, %struct.adapter** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @PHY_GetTxPowerIndexBase(%struct.adapter* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32* %15)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.adapter*, %struct.adapter** %6, align 8
  %25 = load i32, i32* @BAND_ON_2_4G, align 4
  %26 = load i32, i32* @ODM_RF_PATH_A, align 4
  %27 = load i32, i32* @RF_1TX, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @PHY_GetTxPowerByRate(%struct.adapter* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store i64 %29, i64* %13, align 8
  %30 = load %struct.adapter*, %struct.adapter** %6, align 8
  %31 = load %struct.adapter*, %struct.adapter** %6, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.hal_com_data*, %struct.hal_com_data** %11, align 8
  %40 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.hal_com_data*, %struct.hal_com_data** %11, align 8
  %45 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @phy_get_tx_pwr_lmt(%struct.adapter* %30, i32 %34, i32 %38, i32 %41, i32 %42, i32 %43, i32 %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %5
  %52 = load i64, i64* %14, align 8
  br label %55

53:                                               ; preds = %5
  %54 = load i64, i64* %13, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %12, align 8
  %60 = load %struct.adapter*, %struct.adapter** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @PHY_GetTxPowerTrackingOffset(%struct.adapter* %60, i32 %61, i32 %62)
  %64 = load i64, i64* %12, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @MAX_POWER_INDEX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i64, i64* @MAX_POWER_INDEX, align 8
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %69, %55
  %72 = load i64, i64* %12, align 8
  %73 = trunc i64 %72 to i32
  ret i32 %73
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i64 @PHY_GetTxPowerIndexBase(%struct.adapter*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @PHY_GetTxPowerByRate(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i64 @phy_get_tx_pwr_lmt(%struct.adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @PHY_GetTxPowerTrackingOffset(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
