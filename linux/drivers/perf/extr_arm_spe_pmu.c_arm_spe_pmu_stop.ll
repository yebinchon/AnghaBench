; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.arm_spe_pmu = type { i32 }
%struct.perf_output_handle = type { i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@SPE_PMU_BUF_FAULT_ACT_SPURIOUS = common dso_local global i32 0, align 4
@SYS_PMBSR_EL1 = common dso_local global i32 0, align 4
@SYS_PMSICR_EL1 = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @arm_spe_pmu_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_spe_pmu_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_spe_pmu*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.perf_output_handle*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.arm_spe_pmu* @to_spe_pmu(i32 %11)
  store %struct.arm_spe_pmu* %12, %struct.arm_spe_pmu** %5, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  store %struct.hw_perf_event* %14, %struct.hw_perf_event** %6, align 8
  %15 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %16 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.perf_output_handle* @this_cpu_ptr(i32 %17)
  store %struct.perf_output_handle* %18, %struct.perf_output_handle** %7, align 8
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PERF_HES_STOPPED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %66

26:                                               ; preds = %2
  %27 = call i32 (...) @arm_spe_pmu_disable_and_drain_local()
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PERF_EF_UPDATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = load %struct.perf_output_handle*, %struct.perf_output_handle** %7, align 8
  %34 = call i64 @perf_get_aux(%struct.perf_output_handle* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.perf_output_handle*, %struct.perf_output_handle** %7, align 8
  %38 = call i32 @arm_spe_pmu_buf_get_fault_act(%struct.perf_output_handle* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SPE_PMU_BUF_FAULT_ACT_SPURIOUS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.perf_output_handle*, %struct.perf_output_handle** %7, align 8
  %44 = call i32 @arm_spe_perf_aux_output_end(%struct.perf_output_handle* %43)
  br label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @SYS_PMBSR_EL1, align 4
  %47 = call i32 @write_sysreg_s(i32 0, i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %51 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %50, i32 0, i32 1
  %52 = load i32, i32* @SYS_PMSICR_EL1, align 4
  %53 = call i32 @read_sysreg_s(i32 %52)
  %54 = call i32 @local64_set(i32* %51, i32 %53)
  %55 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %56 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %57 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %49, %26
  %61 = load i32, i32* @PERF_HES_STOPPED, align 4
  %62 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %25
  ret void
}

declare dso_local %struct.arm_spe_pmu* @to_spe_pmu(i32) #1

declare dso_local %struct.perf_output_handle* @this_cpu_ptr(i32) #1

declare dso_local i32 @arm_spe_pmu_disable_and_drain_local(...) #1

declare dso_local i64 @perf_get_aux(%struct.perf_output_handle*) #1

declare dso_local i32 @arm_spe_pmu_buf_get_fault_act(%struct.perf_output_handle*) #1

declare dso_local i32 @arm_spe_perf_aux_output_end(%struct.perf_output_handle*) #1

declare dso_local i32 @write_sysreg_s(i32, i32) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @read_sysreg_s(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
