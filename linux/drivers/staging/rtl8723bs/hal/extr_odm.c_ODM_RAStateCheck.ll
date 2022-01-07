; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_ODM_RAStateCheck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_ODM_RAStateCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"wrong rssi level setting %d !\00", align 1
@ODM_COMP_RA_MASK = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"RSSI Level %d -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ODM_RAStateCheck(%struct.TYPE_7__* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  store i64 5, i64* %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  switch i64 %24, label %34 [
    i64 130, label %25
    i64 131, label %25
    i64 128, label %26
    i64 129, label %29
  ]

25:                                               ; preds = %4, %4
  br label %40

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = add nsw i64 %27, 5
  store i64 %28, i64* %12, align 8
  br label %40

29:                                               ; preds = %4
  %30 = load i64, i64* %12, align 8
  %31 = add nsw i64 %30, 5
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = add nsw i64 %32, 5
  store i64 %33, i64* %13, align 8
  br label %40

34:                                               ; preds = %4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @ODM_RT_ASSERT(%struct.TYPE_7__* %35, i32 0, i8* %38)
  br label %40

40:                                               ; preds = %34, %29, %26, %25
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i64 131, i64* %14, align 8
  br label %52

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i64 128, i64* %14, align 8
  br label %51

50:                                               ; preds = %45
  store i64 129, i64* %14, align 8
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57, %52
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = load i32, i32* @ODM_COMP_RA_MASK, align 4
  %63 = load i32, i32* @ODM_DBG_LOUD, align 4
  %64 = load i64*, i64** %9, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %61, i32 %62, i32 %63, i8* %67)
  %69 = load i64, i64* %14, align 8
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  store i32 1, i32* %5, align 4
  br label %72

71:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @ODM_RT_ASSERT(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_7__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
