; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_next_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_next_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.arm_spe_pmu_buf = type { i32 }
%struct.arm_spe_pmu = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.perf_output_handle*)* @arm_spe_pmu_next_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_spe_pmu_next_off(%struct.perf_output_handle* %0) #0 {
  %2 = alloca %struct.perf_output_handle*, align 8
  %3 = alloca %struct.arm_spe_pmu_buf*, align 8
  %4 = alloca %struct.arm_spe_pmu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %2, align 8
  %7 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %8 = call %struct.arm_spe_pmu_buf* @perf_get_aux(%struct.perf_output_handle* %7)
  store %struct.arm_spe_pmu_buf* %8, %struct.arm_spe_pmu_buf** %3, align 8
  %9 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %10 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.arm_spe_pmu* @to_spe_pmu(i32 %13)
  store %struct.arm_spe_pmu* %14, %struct.arm_spe_pmu** %4, align 8
  %15 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %16 = call i64 @__arm_spe_pmu_next_off(%struct.perf_output_handle* %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %18 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %3, align 8
  %21 = call i64 @PERF_IDX2OFF(i32 %19, %struct.arm_spe_pmu_buf* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %4, align 8
  %29 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 %34, %35
  %37 = call i32 @arm_spe_pmu_pad_buf(%struct.perf_output_handle* %33, i64 %36)
  %38 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %39 = call i64 @__arm_spe_pmu_next_off(%struct.perf_output_handle* %38)
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %32, %24, %1
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local %struct.arm_spe_pmu_buf* @perf_get_aux(%struct.perf_output_handle*) #1

declare dso_local %struct.arm_spe_pmu* @to_spe_pmu(i32) #1

declare dso_local i64 @__arm_spe_pmu_next_off(%struct.perf_output_handle*) #1

declare dso_local i64 @PERF_IDX2OFF(i32, %struct.arm_spe_pmu_buf*) #1

declare dso_local i32 @arm_spe_pmu_pad_buf(%struct.perf_output_handle*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
