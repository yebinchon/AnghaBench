; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_ODM_RA_UpdateRateInfo_8188E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_ODM_RA_UpdateRateInfo_8188E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { %struct.odm_ra_info* }
%struct.odm_ra_info = type { i64, i64, i32 }

@ASSOCIATE_ENTRY_NUM = common dso_local global i64 0, align 8
@ODM_COMP_RATE_ADAPTIVE = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"macid =%d RateID = 0x%x RateMask = 0x%x SGIEnable =%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_RA_UpdateRateInfo_8188E(%struct.odm_dm_struct* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.odm_dm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.odm_ra_info*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store %struct.odm_ra_info* null, %struct.odm_ra_info** %11, align 8
  %12 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %6, align 8
  %13 = icmp ne %struct.odm_dm_struct* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @ASSOCIATE_ENTRY_NUM, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %5
  br label %46

19:                                               ; preds = %14
  %20 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %6, align 8
  %21 = load i32, i32* @ODM_COMP_RATE_ADAPTIVE, align 4
  %22 = load i32, i32* @ODM_DBG_LOUD, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i64, i64* %10, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %20, i32 %21, i32 %22, i8* %27)
  %29 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %6, align 8
  %30 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %29, i32 0, i32 0
  %31 = load %struct.odm_ra_info*, %struct.odm_ra_info** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %31, i64 %32
  store %struct.odm_ra_info* %33, %struct.odm_ra_info** %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.odm_ra_info*, %struct.odm_ra_info** %11, align 8
  %36 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.odm_ra_info*, %struct.odm_ra_info** %11, align 8
  %39 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.odm_ra_info*, %struct.odm_ra_info** %11, align 8
  %42 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %6, align 8
  %44 = load %struct.odm_ra_info*, %struct.odm_ra_info** %11, align 8
  %45 = call i32 @odm_ARFBRefresh_8188E(%struct.odm_dm_struct* %43, %struct.odm_ra_info* %44)
  br label %46

46:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

declare dso_local i32 @odm_ARFBRefresh_8188E(%struct.odm_dm_struct*, %struct.odm_ra_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
