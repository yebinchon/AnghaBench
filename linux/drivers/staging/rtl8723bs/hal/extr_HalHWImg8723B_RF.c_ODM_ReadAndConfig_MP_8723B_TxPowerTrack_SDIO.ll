; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_RF.c_ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalHWImg8723B_RF.c_ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ODM_COMP_INIT = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"===> ODM_ReadAndConfig_MP_MP_8723B\0A\00", align 1
@gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@DELTA_SWINGIDX_SIZE = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_5GA_P_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_5GA_N_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_5GB_P_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4
@gDeltaSwingTableIdx_MP_5GB_N_TxPowerTrack_SDIO_8723B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_ReadAndConfig_MP_8723B_TxPowerTrack_SDIO(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* @ODM_COMP_INIT, align 4
  %8 = load i32, i32* @ODM_DBG_LOUD, align 4
  %9 = call i32 @ODM_RT_TRACE(%struct.TYPE_6__* %6, i32 %7, i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @gDeltaSwingTableIdx_MP_2GA_P_TxPowerTrack_SDIO_8723B, align 4
  %14 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %15 = call i32 @memcpy(i32 %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @gDeltaSwingTableIdx_MP_2GA_N_TxPowerTrack_SDIO_8723B, align 4
  %20 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %21 = call i32 @memcpy(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @gDeltaSwingTableIdx_MP_2GB_P_TxPowerTrack_SDIO_8723B, align 4
  %26 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %27 = call i32 @memcpy(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @gDeltaSwingTableIdx_MP_2GB_N_TxPowerTrack_SDIO_8723B, align 4
  %32 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %33 = call i32 @memcpy(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @gDeltaSwingTableIdx_MP_2GCCKA_P_TxPowerTrack_SDIO_8723B, align 4
  %38 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %39 = call i32 @memcpy(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @gDeltaSwingTableIdx_MP_2GCCKA_N_TxPowerTrack_SDIO_8723B, align 4
  %44 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %45 = call i32 @memcpy(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @gDeltaSwingTableIdx_MP_2GCCKB_P_TxPowerTrack_SDIO_8723B, align 4
  %50 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %51 = call i32 @memcpy(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @gDeltaSwingTableIdx_MP_2GCCKB_N_TxPowerTrack_SDIO_8723B, align 4
  %56 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %57 = call i32 @memcpy(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @gDeltaSwingTableIdx_MP_5GA_P_TxPowerTrack_SDIO_8723B, align 4
  %62 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %63 = mul nsw i32 %62, 3
  %64 = call i32 @memcpy(i32 %60, i32 %61, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @gDeltaSwingTableIdx_MP_5GA_N_TxPowerTrack_SDIO_8723B, align 4
  %69 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %70 = mul nsw i32 %69, 3
  %71 = call i32 @memcpy(i32 %67, i32 %68, i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @gDeltaSwingTableIdx_MP_5GB_P_TxPowerTrack_SDIO_8723B, align 4
  %76 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %77 = mul nsw i32 %76, 3
  %78 = call i32 @memcpy(i32 %74, i32 %75, i32 %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @gDeltaSwingTableIdx_MP_5GB_N_TxPowerTrack_SDIO_8723B, align 4
  %83 = load i32, i32* @DELTA_SWINGIDX_SIZE, align 4
  %84 = mul nsw i32 %83, 3
  %85 = call i32 @memcpy(i32 %81, i32 %82, i32 %84)
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_6__*, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
