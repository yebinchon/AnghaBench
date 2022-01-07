; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i64 }
%struct.arm_spe_pmu = type { i32 }
%struct.perf_output_handle = type { i32 }

@SYS_PMSFCR_EL1 = common dso_local global i32 0, align 4
@SYS_PMSEVFR_EL1 = common dso_local global i32 0, align 4
@SYS_PMSLATFR_EL1 = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@SYS_PMSIRR_EL1 = common dso_local global i32 0, align 4
@SYS_PMSICR_EL1 = common dso_local global i32 0, align 4
@SYS_PMSCR_EL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @arm_spe_pmu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_spe_pmu_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.arm_spe_pmu*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca %struct.perf_output_handle*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.arm_spe_pmu* @to_spe_pmu(i32 %11)
  store %struct.arm_spe_pmu* %12, %struct.arm_spe_pmu** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  store %struct.hw_perf_event* %14, %struct.hw_perf_event** %7, align 8
  %15 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %6, align 8
  %16 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.perf_output_handle* @this_cpu_ptr(i32 %17)
  store %struct.perf_output_handle* %18, %struct.perf_output_handle** %8, align 8
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.perf_output_handle*, %struct.perf_output_handle** %8, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = call i32 @arm_spe_perf_aux_output_begin(%struct.perf_output_handle* %21, %struct.perf_event* %22)
  %24 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %25 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %69

29:                                               ; preds = %2
  %30 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %31 = call i32 @arm_spe_event_to_pmsfcr(%struct.perf_event* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SYS_PMSFCR_EL1, align 4
  %34 = call i32 @write_sysreg_s(i32 %32, i32 %33)
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = call i32 @arm_spe_event_to_pmsevfr(%struct.perf_event* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SYS_PMSEVFR_EL1, align 4
  %39 = call i32 @write_sysreg_s(i32 %37, i32 %38)
  %40 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %41 = call i32 @arm_spe_event_to_pmslatfr(%struct.perf_event* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SYS_PMSLATFR_EL1, align 4
  %44 = call i32 @write_sysreg_s(i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PERF_EF_RELOAD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %29
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = call i32 @arm_spe_event_to_pmsirr(%struct.perf_event* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SYS_PMSIRR_EL1, align 4
  %54 = call i32 @write_sysreg_s(i32 %52, i32 %53)
  %55 = call i32 (...) @isb()
  %56 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %57 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %56, i32 0, i32 0
  %58 = call i32 @local64_read(i32* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SYS_PMSICR_EL1, align 4
  %61 = call i32 @write_sysreg_s(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %29
  %63 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %64 = call i32 @arm_spe_event_to_pmscr(%struct.perf_event* %63)
  store i32 %64, i32* %5, align 4
  %65 = call i32 (...) @isb()
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SYS_PMSCR_EL1, align 4
  %68 = call i32 @write_sysreg_s(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %28
  ret void
}

declare dso_local %struct.arm_spe_pmu* @to_spe_pmu(i32) #1

declare dso_local %struct.perf_output_handle* @this_cpu_ptr(i32) #1

declare dso_local i32 @arm_spe_perf_aux_output_begin(%struct.perf_output_handle*, %struct.perf_event*) #1

declare dso_local i32 @arm_spe_event_to_pmsfcr(%struct.perf_event*) #1

declare dso_local i32 @write_sysreg_s(i32, i32) #1

declare dso_local i32 @arm_spe_event_to_pmsevfr(%struct.perf_event*) #1

declare dso_local i32 @arm_spe_event_to_pmslatfr(%struct.perf_event*) #1

declare dso_local i32 @arm_spe_event_to_pmsirr(%struct.perf_event*) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @arm_spe_event_to_pmscr(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
