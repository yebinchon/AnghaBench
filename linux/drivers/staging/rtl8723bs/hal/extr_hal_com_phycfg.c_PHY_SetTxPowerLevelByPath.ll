; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_SetTxPowerLevelByPath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_SetTxPowerLevelByPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i64, i32 }

@BAND_ON_2_4G = common dso_local global i64 0, align 8
@CCK = common dso_local global i32 0, align 4
@OFDM = common dso_local global i32 0, align 4
@HT_MCS0_MCS7 = common dso_local global i32 0, align 4
@HT_MCS8_MCS15 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_SetTxPowerLevelByPath(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal_com_data*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %9)
  store %struct.hal_com_data* %10, %struct.hal_com_data** %7, align 8
  %11 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %12 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BAND_ON_2_4G, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @CCK, align 4
  %24 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %20, i32 %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @OFDM, align 4
  %30 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HT_MCS0_MCS7, align 4
  %35 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %37 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %38, 2
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @HT_MCS8_MCS15, align 4
  %45 = call i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter* %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %25
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @PHY_SetTxPowerIndexByRateSection(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
