; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_rtw_hal_set_odm_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_rtw_hal_set_odm_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.odm_dm_struct }
%struct.odm_dm_struct = type { i32, i32 }
%struct.sta_info = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"### Set STA_(%d) info\0A\00", align 1
@ODM_CMNINFO_STA_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"### Clean STA_(%d) info\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_set_odm_var(%struct.adapter* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.odm_dm_struct*, align 8
  %10 = alloca %struct.sta_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.odm_dm_struct* %14, %struct.odm_dm_struct** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %58 [
    i32 129, label %16
    i32 130, label %50
    i32 128, label %54
  ]

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.sta_info*
  store %struct.sta_info* %18, %struct.sta_info** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DBG_88E(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %9, align 8
  %27 = load i32, i32* @ODM_CMNINFO_STA_STATUS, align 4
  %28 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %32 = call i32 @ODM_CmnInfoPtrArrayHook(%struct.odm_dm_struct* %26, i32 %27, i32 %30, %struct.sta_info* %31)
  %33 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %9, align 8
  %34 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ODM_RAInfo_Init(%struct.odm_dm_struct* %33, i32 %36)
  br label %49

38:                                               ; preds = %16
  %39 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DBG_88E(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %9, align 8
  %44 = load i32, i32* @ODM_CMNINFO_STA_STATUS, align 4
  %45 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ODM_CmnInfoPtrArrayHook(%struct.odm_dm_struct* %43, i32 %44, i32 %47, %struct.sta_info* null)
  br label %49

49:                                               ; preds = %38, %21
  br label %59

50:                                               ; preds = %4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %9, align 8
  %53 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %59

54:                                               ; preds = %4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %9, align 8
  %57 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %59

58:                                               ; preds = %4
  br label %59

59:                                               ; preds = %58, %54, %50, %49
  ret void
}

declare dso_local i32 @DBG_88E(i8*, i32) #1

declare dso_local i32 @ODM_CmnInfoPtrArrayHook(%struct.odm_dm_struct*, i32, i32, %struct.sta_info*) #1

declare dso_local i32 @ODM_RAInfo_Init(%struct.odm_dm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
