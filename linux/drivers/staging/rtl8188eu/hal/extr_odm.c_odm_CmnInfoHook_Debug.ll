; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_CmnInfoHook_Debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_CmnInfoHook_Debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@ODM_COMP_COMMON = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"odm_CmnInfoHook_Debug==>\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pNumTxBytesUnicast=%llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"pNumRxBytesUnicast=%llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"pWirelessMode=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"pSecChOffset=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"pSecurity=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"pBandWidth=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"pChannel=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"pbScanInProcess=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"pbPowerSaving=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_CmnInfoHook_Debug(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %3 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %4 = load i32, i32* @ODM_COMP_COMMON, align 4
  %5 = load i32, i32* @ODM_DBG_LOUD, align 4
  %6 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %3, i32 %4, i32 %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %8 = load i32, i32* @ODM_COMP_COMMON, align 4
  %9 = load i32, i32* @ODM_DBG_LOUD, align 4
  %10 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %10, i32 0, i32 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %7, i32 %8, i32 %9, i8* %15)
  %17 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %18 = load i32, i32* @ODM_COMP_COMMON, align 4
  %19 = load i32, i32* @ODM_DBG_LOUD, align 4
  %20 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %21 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %17, i32 %18, i32 %19, i8* %25)
  %27 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %28 = load i32, i32* @ODM_COMP_COMMON, align 4
  %29 = load i32, i32* @ODM_DBG_LOUD, align 4
  %30 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %31 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %27, i32 %28, i32 %29, i8* %35)
  %37 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %38 = load i32, i32* @ODM_COMP_COMMON, align 4
  %39 = load i32, i32* @ODM_DBG_LOUD, align 4
  %40 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %41 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %37, i32 %38, i32 %39, i8* %45)
  %47 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %48 = load i32, i32* @ODM_COMP_COMMON, align 4
  %49 = load i32, i32* @ODM_DBG_LOUD, align 4
  %50 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %51 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %47, i32 %48, i32 %49, i8* %55)
  %57 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %58 = load i32, i32* @ODM_COMP_COMMON, align 4
  %59 = load i32, i32* @ODM_DBG_LOUD, align 4
  %60 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %61 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %57, i32 %58, i32 %59, i8* %65)
  %67 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %68 = load i32, i32* @ODM_COMP_COMMON, align 4
  %69 = load i32, i32* @ODM_DBG_LOUD, align 4
  %70 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %71 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %67, i32 %68, i32 %69, i8* %75)
  %77 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %78 = load i32, i32* @ODM_COMP_COMMON, align 4
  %79 = load i32, i32* @ODM_DBG_LOUD, align 4
  %80 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %81 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %77, i32 %78, i32 %79, i8* %85)
  %87 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %88 = load i32, i32* @ODM_COMP_COMMON, align 4
  %89 = load i32, i32* @ODM_DBG_LOUD, align 4
  %90 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %91 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %87, i32 %88, i32 %89, i8* %95)
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
