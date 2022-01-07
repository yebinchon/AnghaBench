; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_perf_aux_output_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_perf_aux_output_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i64 }
%struct.arm_spe_pmu_buf = type { i64, i64 }

@SYS_PMBPTR_EL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_output_handle*)* @arm_spe_perf_aux_output_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_spe_perf_aux_output_end(%struct.perf_output_handle* %0) #0 {
  %2 = alloca %struct.perf_output_handle*, align 8
  %3 = alloca %struct.arm_spe_pmu_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %2, align 8
  %6 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %7 = call %struct.arm_spe_pmu_buf* @perf_get_aux(%struct.perf_output_handle* %6)
  store %struct.arm_spe_pmu_buf* %7, %struct.arm_spe_pmu_buf** %3, align 8
  %8 = load i32, i32* @SYS_PMBPTR_EL1, align 4
  %9 = call i64 @read_sysreg_s(i32 %8)
  %10 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %3, align 8
  %11 = getelementptr inbounds %struct.arm_spe_pmu_buf, %struct.arm_spe_pmu_buf* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %16 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %3, align 8
  %19 = call i64 @PERF_IDX2OFF(i64 %17, %struct.arm_spe_pmu_buf* %18)
  %20 = sub nsw i64 %14, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %3, align 8
  %22 = getelementptr inbounds %struct.arm_spe_pmu_buf, %struct.arm_spe_pmu_buf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %28 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @perf_aux_output_end(%struct.perf_output_handle* %30, i64 %31)
  ret void
}

declare dso_local %struct.arm_spe_pmu_buf* @perf_get_aux(%struct.perf_output_handle*) #1

declare dso_local i64 @read_sysreg_s(i32) #1

declare dso_local i64 @PERF_IDX2OFF(i64, %struct.arm_spe_pmu_buf*) #1

declare dso_local i32 @perf_aux_output_end(%struct.perf_output_handle*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
