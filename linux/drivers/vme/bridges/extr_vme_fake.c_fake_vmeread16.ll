; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_vmeread16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_fake.c_fake_vmeread16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fake_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@FAKE_MAX_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fake_driver*, i64, i64, i64)* @fake_vmeread16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fake_vmeread16(%struct.fake_driver* %0, i64 %1, i64 %2, i64 %3) #0 {
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
  store i32 65535, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %102, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @FAKE_MAX_SLAVE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %105

19:                                               ; preds = %15
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %22 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %20, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %102

31:                                               ; preds = %19
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %34 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %32, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %102

43:                                               ; preds = %31
  %44 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %45 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %11, align 8
  %52 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %53 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %61 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %59, %67
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %43
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  %75 = load i64, i64* %12, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %72
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %80 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %78, %86
  store i64 %87, i64* %13, align 8
  %88 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %89 = getelementptr inbounds %struct.fake_driver, %struct.fake_driver* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %13, align 8
  %97 = add i64 %95, %96
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %14, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %9, align 4
  br label %105

101:                                              ; preds = %72, %43
  br label %102

102:                                              ; preds = %101, %42, %30
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %15

105:                                              ; preds = %77, %15
  %106 = load %struct.fake_driver*, %struct.fake_driver** %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @fake_lm_check(%struct.fake_driver* %106, i64 %107, i64 %108, i64 %109)
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local i32 @fake_lm_check(%struct.fake_driver*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
