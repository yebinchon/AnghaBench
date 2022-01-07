; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_StoreTxPowerByRateNew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_StoreTxPowerByRateNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32**** }

@BAND_ON_2_4G = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Invalid Band %d\0A\00", align 1
@ODM_RF_PATH_D = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid RfPath %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid TxNum %d\0A\00", align 1
@MGN_VHT2SS_MCS0 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS1 = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64, i64, i64, i64, i64, i64)* @PHY_StoreTxPowerByRateNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PHY_StoreTxPowerByRateNew(%struct.adapter* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.hal_com_data*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [4 x i64], align 16
  %18 = alloca i64, align 8
  %19 = alloca [4 x i32], align 16
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = load %struct.adapter*, %struct.adapter** %8, align 8
  %21 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %20)
  store %struct.hal_com_data* %21, %struct.hal_com_data** %15, align 8
  store i64 0, i64* %16, align 8
  %22 = bitcast [4 x i64]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 32, i1 false)
  store i64 0, i64* %18, align 8
  %23 = bitcast [4 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 16, i1 false)
  %24 = load %struct.adapter*, %struct.adapter** %8, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 0
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %30 = call i32 @PHY_GetRateValuesOfTxPowerByRate(%struct.adapter* %24, i64 %25, i64 %26, i64 %27, i64* %28, i32* %29, i64* %18)
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @BAND_ON_2_4G, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %7
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @BAND_ON_5G, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @DBG_871X(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %99

41:                                               ; preds = %34, %7
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @ODM_RF_PATH_D, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @DBG_871X(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %99

48:                                               ; preds = %41
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @ODM_RF_PATH_D, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @DBG_871X(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %99

55:                                               ; preds = %48
  store i64 0, i64* %16, align 8
  br label %56

56:                                               ; preds = %96, %55
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %18, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %56
  %61 = load i64, i64* %16, align 8
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @MGN_VHT2SS_MCS0, align 4
  %65 = call i64 @PHY_GetRateIndexOfTxPowerByRate(i32 %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %16, align 8
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @MGN_VHT2SS_MCS1, align 4
  %72 = call i64 @PHY_GetRateIndexOfTxPowerByRate(i32 %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67, %60
  %75 = load i64, i64* @RF_2TX, align 8
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %74, %67
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hal_com_data*, %struct.hal_com_data** %15, align 8
  %81 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %80, i32 0, i32 0
  %82 = load i32****, i32***** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i32***, i32**** %82, i64 %83
  %85 = load i32***, i32**** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i32**, i32*** %85, i64 %86
  %88 = load i32**, i32*** %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %16, align 8
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %17, i64 0, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %79, i32* %95, align 4
  br label %96

96:                                               ; preds = %76
  %97 = load i64, i64* %16, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %16, align 8
  br label %56

99:                                               ; preds = %38, %45, %52, %56
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @PHY_GetRateValuesOfTxPowerByRate(%struct.adapter*, i64, i64, i64, i64*, i32*, i64*) #1

declare dso_local i32 @DBG_871X(i8*, i64) #1

declare dso_local i64 @PHY_GetRateIndexOfTxPowerByRate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
