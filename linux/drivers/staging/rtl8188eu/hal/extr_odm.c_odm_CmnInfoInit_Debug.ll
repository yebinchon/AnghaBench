; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_CmnInfoInit_Debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_CmnInfoInit_Debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ODM_COMP_COMMON = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"odm_CmnInfoInit_Debug==>\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SupportPlatform=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SupportAbility=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SupportInterface=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"SupportICType=0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"CutVersion=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"BoardType=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ExtLNA=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ExtPA=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ExtTRSW=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"PatchID=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"bInHctTest=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"bWIFITest=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"bDualMacSmartConcurrent=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_CmnInfoInit_Debug(%struct.odm_dm_struct* %0) #0 {
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
  %11 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %7, i32 %8, i32 %9, i8* %14)
  %16 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %17 = load i32, i32* @ODM_COMP_COMMON, align 4
  %18 = load i32, i32* @ODM_DBG_LOUD, align 4
  %19 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %20 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %16, i32 %17, i32 %18, i8* %23)
  %25 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %26 = load i32, i32* @ODM_COMP_COMMON, align 4
  %27 = load i32, i32* @ODM_DBG_LOUD, align 4
  %28 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %29 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %25, i32 %26, i32 %27, i8* %32)
  %34 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %35 = load i32, i32* @ODM_COMP_COMMON, align 4
  %36 = load i32, i32* @ODM_DBG_LOUD, align 4
  %37 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %38 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %34, i32 %35, i32 %36, i8* %41)
  %43 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %44 = load i32, i32* @ODM_COMP_COMMON, align 4
  %45 = load i32, i32* @ODM_DBG_LOUD, align 4
  %46 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %47 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %43, i32 %44, i32 %45, i8* %50)
  %52 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %53 = load i32, i32* @ODM_COMP_COMMON, align 4
  %54 = load i32, i32* @ODM_DBG_LOUD, align 4
  %55 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %56 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %52, i32 %53, i32 %54, i8* %59)
  %61 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %62 = load i32, i32* @ODM_COMP_COMMON, align 4
  %63 = load i32, i32* @ODM_DBG_LOUD, align 4
  %64 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %65 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %61, i32 %62, i32 %63, i8* %68)
  %70 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %71 = load i32, i32* @ODM_COMP_COMMON, align 4
  %72 = load i32, i32* @ODM_DBG_LOUD, align 4
  %73 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %74 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %70, i32 %71, i32 %72, i8* %77)
  %79 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %80 = load i32, i32* @ODM_COMP_COMMON, align 4
  %81 = load i32, i32* @ODM_DBG_LOUD, align 4
  %82 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %83 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %79, i32 %80, i32 %81, i8* %86)
  %88 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %89 = load i32, i32* @ODM_COMP_COMMON, align 4
  %90 = load i32, i32* @ODM_DBG_LOUD, align 4
  %91 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %92 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %88, i32 %89, i32 %90, i8* %95)
  %97 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %98 = load i32, i32* @ODM_COMP_COMMON, align 4
  %99 = load i32, i32* @ODM_DBG_LOUD, align 4
  %100 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %101 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %97, i32 %98, i32 %99, i8* %104)
  %106 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %107 = load i32, i32* @ODM_COMP_COMMON, align 4
  %108 = load i32, i32* @ODM_DBG_LOUD, align 4
  %109 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %110 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %106, i32 %107, i32 %108, i8* %113)
  %115 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %116 = load i32, i32* @ODM_COMP_COMMON, align 4
  %117 = load i32, i32* @ODM_DBG_LOUD, align 4
  %118 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %119 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %115, i32 %116, i32 %117, i8* %122)
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
