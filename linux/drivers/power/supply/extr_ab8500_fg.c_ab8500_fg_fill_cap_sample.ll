; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_fill_cap_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_fill_cap_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { %struct.ab8500_fg_avg_cap }
%struct.ab8500_fg_avg_cap = type { i32*, i32, i32, i32, i64, i32* }

@NBR_AVG_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_fg*, i32)* @ab8500_fg_fill_cap_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_fg_fill_cap_sample(%struct.ab8500_fg* %0, i32 %1) #0 {
  %3 = alloca %struct.ab8500_fg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ab8500_fg_avg_cap*, align 8
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %9 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %8, i32 0, i32 0
  store %struct.ab8500_fg_avg_cap* %9, %struct.ab8500_fg_avg_cap** %7, align 8
  %10 = call i32 (...) @ktime_get_boottime_seconds()
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NBR_AVG_SAMPLES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %7, align 8
  %18 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %16, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %7, align 8
  %25 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %7, align 8
  %35 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @NBR_AVG_SAMPLES, align 4
  %37 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %7, align 8
  %38 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @NBR_AVG_SAMPLES, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %7, align 8
  %43 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %7, align 8
  %46 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  ret void
}

declare dso_local i32 @ktime_get_boottime_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
