; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_DigAbort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_DigAbort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64* }

@ODM_BB_FA_CNT = common dso_local global i32 0, align 4
@ODM_COMP_DIG = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"odm_DIG(): Return: SupportAbility ODM_BB_FA_CNT is disabled\0A\00", align 1
@ODM_BB_DIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"odm_DIG(): Return: SupportAbility ODM_BB_DIG is disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"odm_DIG(): Return: In Scan Progress\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"odm_DIG(): Return: PSD is Processing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @odm_DigAbort(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ODM_BB_FA_CNT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = load i32, i32* @ODM_COMP_DIG, align 4
  %16 = load i32, i32* @ODM_DBG_LOUD, align 4
  %17 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ODM_BB_DIG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = load i32, i32* @ODM_COMP_DIG, align 4
  %28 = load i32, i32* @ODM_DBG_LOUD, align 4
  %29 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %52

30:                                               ; preds = %18
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = load i32, i32* @ODM_COMP_DIG, align 4
  %39 = load i32, i32* @ODM_DBG_LOUD, align 4
  %40 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %52

41:                                               ; preds = %30
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = load i32, i32* @ODM_COMP_DIG, align 4
  %49 = load i32, i32* @ODM_DBG_LOUD, align 4
  %50 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %52

51:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %46, %36, %25, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_3__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
