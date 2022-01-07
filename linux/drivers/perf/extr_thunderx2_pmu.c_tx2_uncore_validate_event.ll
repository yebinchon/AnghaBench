; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_validate_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_validate_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.perf_event = type { %struct.pmu* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu*, %struct.perf_event*, i32*)* @tx2_uncore_validate_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx2_uncore_validate_event(%struct.pmu* %0, %struct.perf_event* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmu*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i32*, align 8
  store %struct.pmu* %0, %struct.pmu** %5, align 8
  store %struct.perf_event* %1, %struct.perf_event** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %9 = call i64 @is_software_event(%struct.perf_event* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %24

12:                                               ; preds = %3
  %13 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = load %struct.pmu*, %struct.pmu** %14, align 8
  %16 = load %struct.pmu*, %struct.pmu** %5, align 8
  %17 = icmp ne %struct.pmu* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %24

19:                                               ; preds = %12
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  store i32 1, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %18, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i64 @is_software_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
