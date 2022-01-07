; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6586x-regulator.c_tps6586x_regulator_preinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6586x-regulator.c_tps6586x_regulator_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tps6586x_regulator = type { i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tps6586x_regulator*)* @tps6586x_regulator_preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6586x_regulator_preinit(%struct.device* %0, %struct.tps6586x_regulator* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tps6586x_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tps6586x_regulator* %1, %struct.tps6586x_regulator** %5, align 8
  %9 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %10 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %15 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %13, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %22 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %27 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %111

33:                                               ; preds = %20, %2
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %36 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @tps6586x_read(%struct.device* %34, i64 %39, i32* %6)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %111

45:                                               ; preds = %33
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %48 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @tps6586x_read(%struct.device* %46, i64 %51, i32* %7)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %111

57:                                               ; preds = %45
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %60 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 1, %63
  %65 = and i32 %58, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %111

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %71 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %69, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %68
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %81 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %86 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 1, %89
  %91 = call i32 @tps6586x_set_bits(%struct.device* %79, i64 %84, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %111

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %68
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %100 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.tps6586x_regulator*, %struct.tps6586x_regulator** %5, align 8
  %105 = getelementptr inbounds %struct.tps6586x_regulator, %struct.tps6586x_regulator* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 1, %108
  %110 = call i32 @tps6586x_clr_bits(%struct.device* %98, i64 %103, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %97, %94, %67, %55, %43, %32
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @tps6586x_read(%struct.device*, i64, i32*) #1

declare dso_local i32 @tps6586x_set_bits(%struct.device*, i64, i32) #1

declare dso_local i32 @tps6586x_clr_bits(%struct.device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
