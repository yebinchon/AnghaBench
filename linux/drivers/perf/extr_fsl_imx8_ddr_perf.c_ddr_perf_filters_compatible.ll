; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_filters_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_filters_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.perf_event*)* @ddr_perf_filters_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddr_perf_filters_compatible(%struct.perf_event* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %7 = call i32 @ddr_perf_is_filtered(%struct.perf_event* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

10:                                               ; preds = %2
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = call i32 @ddr_perf_is_filtered(%struct.perf_event* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %22

15:                                               ; preds = %10
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = call i64 @ddr_perf_filter_val(%struct.perf_event* %16)
  %18 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %19 = call i64 @ddr_perf_filter_val(%struct.perf_event* %18)
  %20 = icmp eq i64 %17, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %14, %9
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @ddr_perf_is_filtered(%struct.perf_event*) #1

declare dso_local i64 @ddr_perf_filter_val(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
