; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_odm_SetTxRPTTiming_8188E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_odm_SetTxRPTTiming_8188E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32 }
%struct.odm_ra_info = type { i64 }

@DynamicTxRPTTiming = common dso_local global i64* null, align 8
@ODM_COMP_RATE_ADAPTIVE = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pRaInfo->RptTime = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_dm_struct*, %struct.odm_ra_info*, i32)* @odm_SetTxRPTTiming_8188E to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odm_SetTxRPTTiming_8188E(%struct.odm_dm_struct* %0, %struct.odm_ra_info* %1, i32 %2) #0 {
  %4 = alloca %struct.odm_dm_struct*, align 8
  %5 = alloca %struct.odm_ra_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %4, align 8
  store %struct.odm_ra_info* %1, %struct.odm_ra_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 5
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i64*, i64** @DynamicTxRPTTiming, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.odm_ra_info*, %struct.odm_ra_info** %5, align 8
  %18 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %26

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %8

26:                                               ; preds = %21, %8
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %52

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 5
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 5, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %33
  br label %51

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i64*, i64** @DynamicTxRPTTiming, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.odm_ra_info*, %struct.odm_ra_info** %5, align 8
  %59 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %61 = load i32, i32* @ODM_COMP_RATE_ADAPTIVE, align 4
  %62 = load i32, i32* @ODM_DBG_LOUD, align 4
  %63 = load %struct.odm_ra_info*, %struct.odm_ra_info** %5, align 8
  %64 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %60, i32 %61, i32 %62, i8* %66)
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
