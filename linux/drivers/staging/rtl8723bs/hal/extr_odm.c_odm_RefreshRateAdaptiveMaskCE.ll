; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_odm_RefreshRateAdaptiveMaskCE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_odm_RefreshRateAdaptiveMaskCE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__**, i32, %struct.adapter* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.adapter = type { i64 }

@ODM_COMP_RA_MASK = common dso_local global i32 0, align 4
@ODM_DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"<---- odm_RefreshRateAdaptiveMask(): driver is going to unload\0A\00", align 1
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"<---- odm_RefreshRateAdaptiveMask(): driver does not control rate adaptive mask\0A\00", align 1
@ODM_ASSOCIATE_ENTRY_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"RSSI:%d, RSSI_LEVEL:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_RefreshRateAdaptiveMaskCE(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = load i32, i32* @ODM_COMP_RA_MASK, align 4
  %16 = load i32, i32* @ODM_DBG_TRACE, align 4
  %17 = call i32 @ODM_RT_TRACE(%struct.TYPE_11__* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %91

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = load i32, i32* @ODM_COMP_RA_MASK, align 4
  %26 = load i32, i32* @ODM_DBG_LOUD, align 4
  %27 = call i32 @ODM_RT_TRACE(%struct.TYPE_11__* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  br label %91

28:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %88, %28
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @ODM_ASSOCIATE_ENTRY_NUM, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %91

33:                                               ; preds = %29
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %36, i64 %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %5, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = call i64 @IS_STA_VALID(%struct.TYPE_10__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %33
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_MCAST(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %88

50:                                               ; preds = %43
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_MCAST(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %88

57:                                               ; preds = %50
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = call i32 @ODM_RAStateCheck(%struct.TYPE_11__* %58, i32 %62, i32 0, i32* %64)
  %66 = icmp eq i32 1, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %57
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = load i32, i32* @ODM_COMP_RA_MASK, align 4
  %70 = load i32, i32* @ODM_DBG_LOUD, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @ODM_RT_TRACE(%struct.TYPE_11__* %68, i32 %69, i32 %70, i8* %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rtw_hal_update_ra_mask(%struct.TYPE_10__* %81, i32 %84)
  br label %86

86:                                               ; preds = %67, %57
  br label %87

87:                                               ; preds = %86, %33
  br label %88

88:                                               ; preds = %87, %56, %49
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %3, align 8
  br label %29

91:                                               ; preds = %13, %23, %29
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_11__*, i32, i32, i8*) #1

declare dso_local i64 @IS_STA_VALID(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_MCAST(i32) #1

declare dso_local i32 @ODM_RAStateCheck(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @rtw_hal_update_ra_mask(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
