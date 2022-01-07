; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_perf_aux_output_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_perf_aux_output_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.arm_spe_pmu_buf = type { i64, i64 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@SYS_PMBLIMITR_EL1_E_SHIFT = common dso_local global i32 0, align 4
@SYS_PMBPTR_EL1 = common dso_local global i32 0, align 4
@SYS_PMBLIMITR_EL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_output_handle*, %struct.perf_event*)* @arm_spe_perf_aux_output_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_spe_perf_aux_output_begin(%struct.perf_output_handle* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.perf_output_handle*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.arm_spe_pmu_buf*, align 8
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %8 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = call %struct.arm_spe_pmu_buf* @perf_aux_output_begin(%struct.perf_output_handle* %8, %struct.perf_event* %9)
  store %struct.arm_spe_pmu_buf* %10, %struct.arm_spe_pmu_buf** %7, align 8
  %11 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %7, align 8
  %12 = icmp ne %struct.arm_spe_pmu_buf* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @PERF_HES_STOPPED, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %7, align 8
  %22 = getelementptr inbounds %struct.arm_spe_pmu_buf, %struct.arm_spe_pmu_buf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %27 = call i32 @arm_spe_pmu_next_snapshot_off(%struct.perf_output_handle* %26)
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %30 = call i32 @arm_spe_pmu_next_off(%struct.perf_output_handle* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ %27, %25 ], [ %30, %28 ]
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @SYS_PMBLIMITR_EL1_E_SHIFT, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %7, align 8
  %42 = getelementptr inbounds %struct.arm_spe_pmu_buf, %struct.arm_spe_pmu_buf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %7, align 8
  %48 = getelementptr inbounds %struct.arm_spe_pmu_buf, %struct.arm_spe_pmu_buf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.perf_output_handle*, %struct.perf_output_handle** %3, align 8
  %52 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.arm_spe_pmu_buf*, %struct.arm_spe_pmu_buf** %7, align 8
  %55 = call i32 @PERF_IDX2OFF(i32 %53, %struct.arm_spe_pmu_buf* %54)
  %56 = add nsw i32 %50, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SYS_PMBPTR_EL1, align 4
  %59 = call i32 @write_sysreg_s(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %40, %13
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @SYS_PMBLIMITR_EL1, align 4
  %63 = call i32 @write_sysreg_s(i32 %61, i32 %62)
  ret void
}

declare dso_local %struct.arm_spe_pmu_buf* @perf_aux_output_begin(%struct.perf_output_handle*, %struct.perf_event*) #1

declare dso_local i32 @arm_spe_pmu_next_snapshot_off(%struct.perf_output_handle*) #1

declare dso_local i32 @arm_spe_pmu_next_off(%struct.perf_output_handle*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @PERF_IDX2OFF(i32, %struct.arm_spe_pmu_buf*) #1

declare dso_local i32 @write_sysreg_s(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
