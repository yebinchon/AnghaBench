; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_ODM_CmnInfoHook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm.c_ODM_CmnInfoHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_CmnInfoHook(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %100 [
    i32 139, label %8
    i32 129, label %12
    i32 133, label %16
    i32 128, label %20
    i32 149, label %24
    i32 131, label %28
    i32 130, label %32
    i32 147, label %36
    i32 146, label %40
    i32 145, label %44
    i32 148, label %48
    i32 144, label %52
    i32 132, label %56
    i32 134, label %60
    i32 136, label %64
    i32 143, label %68
    i32 135, label %72
    i32 140, label %76
    i32 150, label %80
    i32 137, label %84
    i32 141, label %88
    i32 142, label %92
    i32 138, label %96
  ]

8:                                                ; preds = %3
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 22
  store i8* %9, i8** %11, align 8
  br label %101

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 21
  store i8* %13, i8** %15, align 8
  br label %101

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 20
  store i8* %17, i8** %19, align 8
  br label %101

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 19
  store i8* %21, i8** %23, align 8
  br label %101

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 18
  store i8* %25, i8** %27, align 8
  br label %101

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 17
  store i8* %29, i8** %31, align 8
  br label %101

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 16
  store i8* %33, i8** %35, align 8
  br label %101

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 15
  store i8* %37, i8** %39, align 8
  br label %101

40:                                               ; preds = %3
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 14
  store i8* %41, i8** %43, align 8
  br label %101

44:                                               ; preds = %3
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 13
  store i8* %45, i8** %47, align 8
  br label %101

48:                                               ; preds = %3
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 12
  store i8* %49, i8** %51, align 8
  br label %101

52:                                               ; preds = %3
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 11
  store i8* %53, i8** %55, align 8
  br label %101

56:                                               ; preds = %3
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 10
  store i8* %57, i8** %59, align 8
  br label %101

60:                                               ; preds = %3
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 9
  store i8* %61, i8** %63, align 8
  br label %101

64:                                               ; preds = %3
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 8
  store i8* %65, i8** %67, align 8
  br label %101

68:                                               ; preds = %3
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  br label %101

72:                                               ; preds = %3
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  br label %101

76:                                               ; preds = %3
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  br label %101

80:                                               ; preds = %3
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  br label %101

84:                                               ; preds = %3
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  br label %101

88:                                               ; preds = %3
  %89 = load i8*, i8** %6, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  br label %101

92:                                               ; preds = %3
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %101

96:                                               ; preds = %3
  %97 = load i8*, i8** %6, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %101

100:                                              ; preds = %3
  br label %101

101:                                              ; preds = %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
