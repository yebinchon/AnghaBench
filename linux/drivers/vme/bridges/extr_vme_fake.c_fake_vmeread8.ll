; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_vmeread8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_vmeread8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fake_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@FAKE_MAX_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fake_driver*, i64, i64, i64)* @fake_vmeread8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_vmeread8(%struct.fake_driver* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.fake_driver*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.fake_driver* %0, %struct.fake_driver** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 255, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %101, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @FAKE_MAX_SLAVE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %104

19:                                               ; preds = %15
  %20 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %21 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %29 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %37 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %35, %43
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %47 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %45, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %19
  br label %101

56:                                               ; preds = %19
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %59 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %57, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %101

68:                                               ; preds = %56
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %79 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %77, %85
  store i64 %86, i64* %13, align 8
  %87 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %88 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = add i64 %94, %95
  %97 = inttoptr i64 %96 to i32*
  store i32* %97, i32** %14, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %9, align 4
  br label %104

100:                                              ; preds = %72, %68
  br label %101

101:                                              ; preds = %100, %67, %55
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %15

104:                                              ; preds = %76, %15
  %105 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @fake_lm_check(%struct.fake_driver* %105, i64 %106, i64 %107, i64 %108)
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i32 @fake_lm_check(%struct.fake_driver*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
