; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_CmnInfoUpdate_Debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_CmnInfoUpdate_Debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, i32, i32, i32 }

@ODM_COMP_COMMON = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"odm_CmnInfoUpdate_Debug==>\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bWIFI_Direct=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"bWIFI_Display=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bLinked=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"RSSI_Min=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_CmnInfoUpdate_Debug(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %3 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %4 = load i32, i32* @ODM_COMP_COMMON, align 4
  %5 = load i32, i32* @ODM_DBG_LOUD, align 4
  %6 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %3, i32 %4, i32 %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %8 = load i32, i32* @ODM_COMP_COMMON, align 4
  %9 = load i32, i32* @ODM_DBG_LOUD, align 4
  %10 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %7, i32 %8, i32 %9, i8* %14)
  %16 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %17 = load i32, i32* @ODM_COMP_COMMON, align 4
  %18 = load i32, i32* @ODM_DBG_LOUD, align 4
  %19 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %20 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %16, i32 %17, i32 %18, i8* %23)
  %25 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %26 = load i32, i32* @ODM_COMP_COMMON, align 4
  %27 = load i32, i32* @ODM_DBG_LOUD, align 4
  %28 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %29 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %25, i32 %26, i32 %27, i8* %32)
  %34 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %35 = load i32, i32* @ODM_COMP_COMMON, align 4
  %36 = load i32, i32* @ODM_DBG_LOUD, align 4
  %37 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %38 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %34, i32 %35, i32 %36, i8* %41)
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
