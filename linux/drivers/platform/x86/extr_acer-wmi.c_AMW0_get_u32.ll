; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_AMW0_get_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_AMW0_get_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @AMW0_get_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AMW0_get_u32(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %104 [
    i32 129, label %9
    i32 128, label %25
    i32 131, label %74
    i32 130, label %90
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %13 [
  ]

13:                                               ; preds = %9
  %14 = call i32 @ec_read(i32 10, i32* %7)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @AE_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %106

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 7
  %22 = and i32 %21, 1
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @AE_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %106

25:                                               ; preds = %2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %62 [
    i32 1, label %29
    i32 2, label %40
    i32 3, label %51
  ]

29:                                               ; preds = %25
  %30 = call i32 @ec_read(i32 123, i32* %7)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @AE_ERROR, align 4
  store i32 %34, i32* %3, align 4
  br label %106

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 1
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @AE_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %106

40:                                               ; preds = %25
  %41 = call i32 @ec_read(i32 113, i32* %7)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @AE_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %106

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 1
  %49 = load i32*, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @AE_OK, align 4
  store i32 %50, i32* %3, align 4
  br label %106

51:                                               ; preds = %25
  %52 = call i32 @ec_read(i32 120, i32* %7)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @AE_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %106

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 1
  %60 = load i32*, i32** %4, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @AE_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %106

62:                                               ; preds = %25
  %63 = call i32 @ec_read(i32 10, i32* %7)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @AE_ERROR, align 4
  store i32 %67, i32* %3, align 4
  br label %106

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 2
  %71 = and i32 %70, 1
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @AE_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %106

74:                                               ; preds = %2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %78 [
  ]

78:                                               ; preds = %74
  %79 = call i32 @ec_read(i32 10, i32* %7)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @AE_ERROR, align 4
  store i32 %83, i32* %3, align 4
  br label %106

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = ashr i32 %85, 4
  %87 = and i32 %86, 1
  %88 = load i32*, i32** %4, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @AE_OK, align 4
  store i32 %89, i32* %3, align 4
  br label %106

90:                                               ; preds = %2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %94 [
  ]

94:                                               ; preds = %90
  %95 = call i32 @ec_read(i32 131, i32* %7)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @AE_ERROR, align 4
  store i32 %99, i32* %3, align 4
  br label %106

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %4, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @AE_OK, align 4
  store i32 %103, i32* %3, align 4
  br label %106

104:                                              ; preds = %2
  %105 = load i32, i32* @AE_ERROR, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %100, %98, %84, %82, %68, %66, %57, %55, %46, %44, %35, %33, %19, %17
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ec_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
