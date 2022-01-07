; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_RefreshRateAdaptiveMaskCE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_RefreshRateAdaptiveMaskCE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { %struct.sta_info**, i32, %struct.adapter* }
%struct.sta_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.adapter = type { i64 }

@ODM_COMP_RA_MASK = common dso_local global i32 0, align 4
@ODM_DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"<---- odm_RefreshRateAdaptiveMask(): driver is going to unload\0A\00", align 1
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"<---- odm_RefreshRateAdaptiveMask(): driver does not control rate adaptive mask\0A\00", align 1
@ODM_ASSOCIATE_ENTRY_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"RSSI:%d, RSSI_LEVEL:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_RefreshRateAdaptiveMaskCE(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sta_info*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %6 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %7 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %6, i32 0, i32 2
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %15 = load i32, i32* @ODM_COMP_RA_MASK, align 4
  %16 = load i32, i32* @ODM_DBG_TRACE, align 4
  %17 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %20 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %25 = load i32, i32* @ODM_COMP_RA_MASK, align 4
  %26 = load i32, i32* @ODM_DBG_LOUD, align 4
  %27 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  br label %78

28:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %75, %28
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @ODM_ASSOCIATE_ENTRY_NUM, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  %34 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %35 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %34, i32 0, i32 0
  %36 = load %struct.sta_info**, %struct.sta_info*** %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %36, i64 %37
  %39 = load %struct.sta_info*, %struct.sta_info** %38, align 8
  store %struct.sta_info* %39, %struct.sta_info** %5, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %41 = call i64 @IS_STA_VALID(%struct.sta_info* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %33
  %44 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %45 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 0
  %51 = call i64 @ODM_RAStateCheck(%struct.odm_dm_struct* %44, i32 %48, i32 0, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %43
  %54 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %55 = load i32, i32* @ODM_COMP_RA_MASK, align 4
  %56 = load i32, i32* @ODM_DBG_LOUD, align 4
  %57 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %54, i32 %55, i32 %56, i8* %65)
  %67 = load %struct.adapter*, %struct.adapter** %4, align 8
  %68 = load i64, i64* %3, align 8
  %69 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rtw_hal_update_ra_mask(%struct.adapter* %67, i64 %68, i32 %71)
  br label %73

73:                                               ; preds = %53, %43
  br label %74

74:                                               ; preds = %73, %33
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %3, align 8
  br label %29

78:                                               ; preds = %13, %23, %29
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

declare dso_local i64 @IS_STA_VALID(%struct.sta_info*) #1

declare dso_local i64 @ODM_RAStateCheck(%struct.odm_dm_struct*, i32, i32, i32*) #1

declare dso_local i32 @rtw_hal_update_ra_mask(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
