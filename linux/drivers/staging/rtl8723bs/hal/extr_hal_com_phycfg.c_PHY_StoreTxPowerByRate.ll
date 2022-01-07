; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_StoreTxPowerByRate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_StoreTxPowerByRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@rTxAGC_A_Mcs15_Mcs12 = common dso_local global i64 0, align 8
@RF_1T1R = common dso_local global i64 0, align 8
@rTxAGC_B_Mcs15_Mcs12 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Invalid PHY_REG_PG.txt version %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_StoreTxPowerByRate(%struct.adapter* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.hal_com_data*, align 8
  %16 = alloca %struct.TYPE_2__*, align 8
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load %struct.adapter*, %struct.adapter** %8, align 8
  %18 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %17)
  store %struct.hal_com_data* %18, %struct.hal_com_data** %15, align 8
  %19 = load %struct.hal_com_data*, %struct.hal_com_data** %15, align 8
  %20 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %19, i32 0, i32 2
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %16, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %7
  %26 = load %struct.adapter*, %struct.adapter** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @PHY_StoreTxPowerByRateNew(%struct.adapter* %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32)
  br label %82

34:                                               ; preds = %7
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %34
  %40 = load %struct.adapter*, %struct.adapter** %8, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @PHY_StoreTxPowerByRateOld(%struct.adapter* %40, i64 %41, i64 %42, i64 %43)
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @rTxAGC_A_Mcs15_Mcs12, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load %struct.hal_com_data*, %struct.hal_com_data** %15, align 8
  %50 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RF_1T1R, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.hal_com_data*, %struct.hal_com_data** %15, align 8
  %56 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %75

59:                                               ; preds = %48, %39
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @rTxAGC_B_Mcs15_Mcs12, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.hal_com_data*, %struct.hal_com_data** %15, align 8
  %65 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RF_1T1R, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.hal_com_data*, %struct.hal_com_data** %15, align 8
  %71 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %63, %59
  br label %75

75:                                               ; preds = %74, %54
  br label %81

76:                                               ; preds = %34
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @DBG_871X(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %76, %75
  br label %82

82:                                               ; preds = %81, %25
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @PHY_StoreTxPowerByRateNew(%struct.adapter*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @PHY_StoreTxPowerByRateOld(%struct.adapter*, i64, i64, i64) #1

declare dso_local i32 @DBG_871X(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
