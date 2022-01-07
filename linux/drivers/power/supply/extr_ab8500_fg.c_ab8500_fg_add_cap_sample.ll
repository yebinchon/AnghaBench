; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_add_cap_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_add_cap_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { %struct.ab8500_fg_avg_cap }
%struct.ab8500_fg_avg_cap = type { i64*, i64, i32, i32*, i32, i32 }

@NBR_AVG_SAMPLES = common dso_local global i32 0, align 4
@VALID_CAPACITY_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_fg*, i32)* @ab8500_fg_add_cap_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_add_cap_sample(%struct.ab8500_fg* %0, i32 %1) #0 {
  %3 = alloca %struct.ab8500_fg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ab8500_fg_avg_cap*, align 8
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i64 (...) @ktime_get_boottime_seconds()
  store i64 %7, i64* %5, align 8
  %8 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %9 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %8, i32 0, i32 0
  store %struct.ab8500_fg_avg_cap* %9, %struct.ab8500_fg_avg_cap** %6, align 8
  br label %10

10:                                               ; preds = %66, %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %13 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %16 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %11, %19
  %21 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %22 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %27 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %30 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %25, i32* %32, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %35 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %38 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  store i64 %33, i64* %40, align 8
  %41 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %42 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %46 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @NBR_AVG_SAMPLES, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %10
  %52 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %53 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %10
  %55 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %56 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NBR_AVG_SAMPLES, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %62 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %54
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @VALID_CAPACITY_SEC, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %71 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %74 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %69, %77
  br i1 %78, label %10, label %79

79:                                               ; preds = %66
  %80 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %81 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %84 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %82, %85
  %87 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %88 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %6, align 8
  %90 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  ret i32 %91
}

declare dso_local i64 @ktime_get_boottime_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
