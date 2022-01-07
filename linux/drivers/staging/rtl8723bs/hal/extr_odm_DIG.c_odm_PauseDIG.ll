; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_PauseDIG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_PauseDIG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@odm_PauseDIG.bPaused = internal global i32 0, align 4
@ODM_COMP_DIG = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"odm_PauseDIG() =========>\0A\00", align 1
@ODM_BB_ADAPTIVITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"odm_PauseDIG(): Dynamic adjust threshold in progress !!\0A\00", align 1
@ODM_BB_DIG = common dso_local global i32 0, align 4
@ODM_BB_FA_CNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"odm_PauseDIG(): Return: SupportAbility ODM_BB_DIG or ODM_BB_FA_CNT is disabled\0A\00", align 1
@ODM_CMNINFO_ABILITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"odm_PauseDIG(): Pause DIG !!\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"odm_PauseDIG(): Backup IGI  = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"odm_PauseDIG(): Write new IGI = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"odm_PauseDIG(): Write original IGI = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"odm_PauseDIG(): Resume DIG !!\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"odm_PauseDIG(): Wrong  type !!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_PauseDIG(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = load i32, i32* @ODM_COMP_DIG, align 4
  %15 = load i32, i32* @ODM_DBG_LOUD, align 4
  %16 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ODM_BB_ADAPTIVITY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = load i32, i32* @ODM_COMP_DIG, align 4
  %31 = load i32, i32* @ODM_DBG_LOUD, align 4
  %32 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %135

33:                                               ; preds = %23, %3
  %34 = load i32, i32* @odm_PauseDIG.bPaused, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ODM_BB_DIG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ODM_BB_FA_CNT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = load i32, i32* @ODM_COMP_DIG, align 4
  %53 = load i32, i32* @ODM_DBG_LOUD, align 4
  %54 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  br label %135

55:                                               ; preds = %43, %33
  %56 = load i32, i32* %5, align 4
  switch i32 %56, label %130 [
    i32 129, label %57
    i32 128, label %99
  ]

57:                                               ; preds = %55
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = load i32, i32* @ODM_CMNINFO_ABILITY, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ODM_BB_DIG, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = call i32 @ODM_CmnInfoUpdate(%struct.TYPE_7__* %58, i32 %59, i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = load i32, i32* @ODM_COMP_DIG, align 4
  %69 = load i32, i32* @ODM_DBG_LOUD, align 4
  %70 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @odm_PauseDIG.bPaused, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %57
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  store i32 1, i32* @odm_PauseDIG.bPaused, align 4
  br label %79

79:                                               ; preds = %73, %57
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = load i32, i32* @ODM_COMP_DIG, align 4
  %82 = load i32, i32* @ODM_DBG_LOUD, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %80, i32 %81, i32 %82, i8* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @ODM_Write_DIG(%struct.TYPE_7__* %89, i32 %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = load i32, i32* @ODM_COMP_DIG, align 4
  %94 = load i32, i32* @ODM_DBG_LOUD, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %92, i32 %93, i32 %94, i8* %97)
  br label %135

99:                                               ; preds = %55
  %100 = load i32, i32* @odm_PauseDIG.bPaused, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %99
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ODM_Write_DIG(%struct.TYPE_7__* %103, i32 %106)
  store i32 0, i32* @odm_PauseDIG.bPaused, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = load i32, i32* @ODM_COMP_DIG, align 4
  %110 = load i32, i32* @ODM_DBG_LOUD, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %108, i32 %109, i32 %110, i8* %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = load i32, i32* @ODM_CMNINFO_ABILITY, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ODM_BB_DIG, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @ODM_CmnInfoUpdate(%struct.TYPE_7__* %117, i32 %118, i32 %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = load i32, i32* @ODM_COMP_DIG, align 4
  %127 = load i32, i32* @ODM_DBG_LOUD, align 4
  %128 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %129

129:                                              ; preds = %102, %99
  br label %135

130:                                              ; preds = %55
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %132 = load i32, i32* @ODM_COMP_DIG, align 4
  %133 = load i32, i32* @ODM_DBG_LOUD, align 4
  %134 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %135

135:                                              ; preds = %28, %50, %130, %129, %79
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_7__*, i32, i32, i8*) #1

declare dso_local i32 @ODM_CmnInfoUpdate(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ODM_Write_DIG(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
