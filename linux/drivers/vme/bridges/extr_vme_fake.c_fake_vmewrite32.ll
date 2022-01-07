; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_vmewrite32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_vmewrite32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fake_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@FAKE_MAX_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fake_driver*, i64*, i64, i64, i64)* @fake_vmewrite32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fake_vmewrite32(%struct.fake_driver* %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.fake_driver*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  store %struct.fake_driver* %0, %struct.fake_driver** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %105, %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @FAKE_MAX_SLAVE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %108

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.fake_driver*, %struct.fake_driver** %6, align 8
  %23 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %21, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %105

32:                                               ; preds = %20
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.fake_driver*, %struct.fake_driver** %6, align 8
  %35 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %33, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %105

44:                                               ; preds = %32
  %45 = load %struct.fake_driver*, %struct.fake_driver** %6, align 8
  %46 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load %struct.fake_driver*, %struct.fake_driver** %6, align 8
  %54 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fake_driver*, %struct.fake_driver** %6, align 8
  %62 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %60, %68
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %44
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 3
  %76 = load i64, i64* %13, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %73
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.fake_driver*, %struct.fake_driver** %6, align 8
  %81 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %79, %87
  store i64 %88, i64* %14, align 8
  %89 = load %struct.fake_driver*, %struct.fake_driver** %6, align 8
  %90 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr i8, i8* %97, i64 %98
  %100 = bitcast i8* %99 to i64*
  store i64* %100, i64** %15, align 8
  %101 = load i64*, i64** %7, align 8
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %15, align 8
  store i64 %102, i64* %103, align 8
  br label %108

104:                                              ; preds = %73, %44
  br label %105

105:                                              ; preds = %104, %43, %31
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %16

108:                                              ; preds = %78, %16
  %109 = load %struct.fake_driver*, %struct.fake_driver** %6, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @fake_lm_check(%struct.fake_driver* %109, i64 %110, i64 %111, i64 %112)
  ret void
}

declare dso_local i32 @fake_lm_check(%struct.fake_driver*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
