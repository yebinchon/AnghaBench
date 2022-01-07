; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_ODM_RA_GetShortGI_8188E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_ODM_RA_GetShortGI_8188E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ASSOCIATE_ENTRY_NUM = common dso_local global i64 0, align 8
@ODM_COMP_RATE_ADAPTIVE = common dso_local global i32 0, align 4
@ODM_DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"macid =%d SGI =%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ODM_RA_GetShortGI_8188E(%struct.odm_dm_struct* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.odm_dm_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %7 = icmp ne %struct.odm_dm_struct* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @ASSOCIATE_ENTRY_NUM, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  store i64 0, i64* %3, align 8
  br label %34

13:                                               ; preds = %8
  %14 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %15 = load i32, i32* @ODM_COMP_RATE_ADAPTIVE, align 4
  %16 = load i32, i32* @ODM_DBG_TRACE, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %19 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %14, i32 %15, i32 %16, i8* %25)
  %27 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %28 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %13, %12
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
