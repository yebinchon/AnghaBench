; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_ODM_RA_GetDecisionRate_8188E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_ODM_RA_GetDecisionRate_8188E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ASSOCIATE_ENTRY_NUM = common dso_local global i64 0, align 8
@ODM_COMP_RATE_ADAPTIVE = common dso_local global i32 0, align 4
@ODM_DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c" macid =%d DecisionRate = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ODM_RA_GetDecisionRate_8188E(%struct.odm_dm_struct* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.odm_dm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %8 = icmp ne %struct.odm_dm_struct* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ASSOCIATE_ENTRY_NUM, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i64 0, i64* %3, align 8
  br label %30

14:                                               ; preds = %9
  %15 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %16 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %23 = load i32, i32* @ODM_COMP_RATE_ADAPTIVE, align 4
  %24 = load i32, i32* @ODM_DBG_TRACE, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %22, i32 %23, i32 %24, i8* %27)
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %14, %13
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
