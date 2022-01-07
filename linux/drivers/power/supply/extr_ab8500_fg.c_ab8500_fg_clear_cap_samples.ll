; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_clear_cap_samples.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_clear_cap_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { %struct.ab8500_fg_avg_cap }
%struct.ab8500_fg_avg_cap = type { i64*, i64*, i32, i64, i64, i64 }

@NBR_AVG_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_fg*)* @ab8500_fg_clear_cap_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_fg_clear_cap_samples(%struct.ab8500_fg* %0) #0 {
  %2 = alloca %struct.ab8500_fg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ab8500_fg_avg_cap*, align 8
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %2, align 8
  %5 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %6 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %5, i32 0, i32 0
  store %struct.ab8500_fg_avg_cap* %6, %struct.ab8500_fg_avg_cap** %4, align 8
  %7 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %4, align 8
  %8 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %4, align 8
  %10 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %4, align 8
  %12 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %4, align 8
  %14 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %13, i32 0, i32 2
  store i32 0, i32* %14, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NBR_AVG_SAMPLES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %4, align 8
  %21 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.ab8500_fg_avg_cap*, %struct.ab8500_fg_avg_cap** %4, align 8
  %27 = getelementptr inbounds %struct.ab8500_fg_avg_cap, %struct.ab8500_fg_avg_cap* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %15

35:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
