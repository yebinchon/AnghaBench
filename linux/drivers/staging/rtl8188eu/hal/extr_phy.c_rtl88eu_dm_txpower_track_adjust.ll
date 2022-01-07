; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rtl88eu_dm_txpower_track_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rtl88eu_dm_txpower_track_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i64, i64, i64, i64, i32 }

@ODM_COMP_TX_PWR_TRACK = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"BbSwingIdxOfdm = %d BbSwingFlagOfdm=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"dm_odm->BbSwingIdxCck = %d dm_odm->BbSwingIdxCckBase = %d\0A\00", align 1
@ODM_TXPWRTRACK_MAX_IDX_88E = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_dm_txpower_track_adjust(%struct.odm_dm_struct* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.odm_dm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %4
  %13 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %14 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %15 = load i32, i32* @ODM_DBG_LOUD, align 4
  %16 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %17 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %20 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %13, i32 %14, i32 %15, i8* %23)
  %25 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %26 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %29 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %12
  %33 = load i32*, i32** %7, align 8
  store i32 1, i32* %33, align 4
  %34 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %35 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %38 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %52

42:                                               ; preds = %12
  %43 = load i32*, i32** %7, align 8
  store i32 2, i32* %43, align 4
  %44 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %45 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %48 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %42, %32
  br label %97

53:                                               ; preds = %4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %96

56:                                               ; preds = %53
  %57 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %58 = load i32, i32* @ODM_COMP_TX_PWR_TRACK, align 4
  %59 = load i32, i32* @ODM_DBG_LOUD, align 4
  %60 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %61 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %64 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %57, i32 %58, i32 %59, i8* %66)
  %68 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %69 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %72 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %56
  %76 = load i32*, i32** %7, align 8
  store i32 1, i32* %76, align 4
  %77 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %78 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %81 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  br label %95

85:                                               ; preds = %56
  %86 = load i32*, i32** %7, align 8
  store i32 2, i32* %86, align 4
  %87 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %88 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %91 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %85, %75
  br label %96

96:                                               ; preds = %95, %53
  br label %97

97:                                               ; preds = %96, %52
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @ODM_TXPWRTRACK_MAX_IDX_88E, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @ODM_TXPWRTRACK_MAX_IDX_88E, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %101, %97
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = shl i32 %109, 8
  %111 = or i32 %108, %110
  %112 = load i32, i32* %9, align 4
  %113 = shl i32 %112, 16
  %114 = or i32 %111, %113
  %115 = load i32, i32* %9, align 4
  %116 = shl i32 %115, 24
  %117 = or i32 %114, %116
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
