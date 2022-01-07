; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_InitBBRFRegisterDefinition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_InitBBRFRegisterDefinition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i8* }

@rFPGA0_XAB_RFInterfaceSW = common dso_local global i8* null, align 8
@ODM_RF_PATH_A = common dso_local global i64 0, align 8
@ODM_RF_PATH_B = common dso_local global i64 0, align 8
@rFPGA0_XA_RFInterfaceOE = common dso_local global i8* null, align 8
@rFPGA0_XB_RFInterfaceOE = common dso_local global i8* null, align 8
@rFPGA0_XA_LSSIParameter = common dso_local global i32 0, align 4
@rFPGA0_XB_LSSIParameter = common dso_local global i32 0, align 4
@rFPGA0_XA_HSSIParameter2 = common dso_local global i32 0, align 4
@rFPGA0_XB_HSSIParameter2 = common dso_local global i32 0, align 4
@rFPGA0_XA_LSSIReadBack = common dso_local global i32 0, align 4
@rFPGA0_XB_LSSIReadBack = common dso_local global i32 0, align 4
@TransceiverA_HSPI_Readback = common dso_local global i32 0, align 4
@TransceiverB_HSPI_Readback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @phy_InitBBRFRegisterDefinition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_InitBBRFRegisterDefinition(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %4)
  store %struct.hal_com_data* %5, %struct.hal_com_data** %3, align 8
  %6 = load i8*, i8** @rFPGA0_XAB_RFInterfaceSW, align 8
  %7 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %8 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i64, i64* @ODM_RF_PATH_A, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 6
  store i8* %6, i8** %12, align 8
  %13 = load i8*, i8** @rFPGA0_XAB_RFInterfaceSW, align 8
  %14 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %15 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* @ODM_RF_PATH_B, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  store i8* %13, i8** %19, align 8
  %20 = load i8*, i8** @rFPGA0_XA_RFInterfaceOE, align 8
  %21 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %22 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* @ODM_RF_PATH_A, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i8* %20, i8** %26, align 8
  %27 = load i8*, i8** @rFPGA0_XB_RFInterfaceOE, align 8
  %28 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %29 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* @ODM_RF_PATH_B, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  store i8* %27, i8** %33, align 8
  %34 = load i8*, i8** @rFPGA0_XA_RFInterfaceOE, align 8
  %35 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %36 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* @ODM_RF_PATH_A, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i8* %34, i8** %40, align 8
  %41 = load i8*, i8** @rFPGA0_XB_RFInterfaceOE, align 8
  %42 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %43 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* @ODM_RF_PATH_B, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  store i8* %41, i8** %47, align 8
  %48 = load i32, i32* @rFPGA0_XA_LSSIParameter, align 4
  %49 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %50 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* @ODM_RF_PATH_A, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %48, i32* %54, align 4
  %55 = load i32, i32* @rFPGA0_XB_LSSIParameter, align 4
  %56 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %57 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* @ODM_RF_PATH_B, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32 %55, i32* %61, align 4
  %62 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %63 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %64 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* @ODM_RF_PATH_A, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %62, i32* %68, align 8
  %69 = load i32, i32* @rFPGA0_XB_HSSIParameter2, align 4
  %70 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %71 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* @ODM_RF_PATH_B, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %69, i32* %75, align 8
  %76 = load i32, i32* @rFPGA0_XA_LSSIReadBack, align 4
  %77 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %78 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* @ODM_RF_PATH_A, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* @rFPGA0_XB_LSSIReadBack, align 4
  %84 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %85 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* @ODM_RF_PATH_B, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* @TransceiverA_HSPI_Readback, align 4
  %91 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %92 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* @ODM_RF_PATH_A, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %90, i32* %96, align 8
  %97 = load i32, i32* @TransceiverB_HSPI_Readback, align 4
  %98 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %99 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* @ODM_RF_PATH_B, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %97, i32* %103, align 8
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
