; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c_arm_spe_pmu_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i32, %struct.perf_event* }
%struct.perf_event = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@SYS_PMBSR_EL1 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arm_spe_pmu_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_pmu_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.perf_output_handle*, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.perf_output_handle*
  store %struct.perf_output_handle* %10, %struct.perf_output_handle** %6, align 8
  %11 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %12 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %11, i32 0, i32 1
  %13 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  store %struct.perf_event* %13, %struct.perf_event** %7, align 8
  %14 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %15 = call i32 @perf_get_aux(%struct.perf_output_handle* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %21 = call i32 @arm_spe_pmu_buf_get_fault_act(%struct.perf_output_handle* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %19
  %27 = call i32 (...) @irq_work_run()
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %45 [
    i32 130, label %29
    i32 129, label %31
    i32 128, label %44
  ]

29:                                               ; preds = %26
  %30 = call i32 (...) @arm_spe_pmu_disable_and_drain_local()
  br label %45

31:                                               ; preds = %26
  %32 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %33 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %40 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %41 = call i32 @arm_spe_perf_aux_output_begin(%struct.perf_output_handle* %39, %struct.perf_event* %40)
  %42 = call i32 (...) @isb()
  br label %43

43:                                               ; preds = %38, %31
  br label %45

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %26, %44, %43, %29
  %46 = load i32, i32* @SYS_PMBSR_EL1, align 4
  %47 = call i32 @write_sysreg_s(i32 0, i32 %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %24, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @perf_get_aux(%struct.perf_output_handle*) #1

declare dso_local i32 @arm_spe_pmu_buf_get_fault_act(%struct.perf_output_handle*) #1

declare dso_local i32 @irq_work_run(...) #1

declare dso_local i32 @arm_spe_pmu_disable_and_drain_local(...) #1

declare dso_local i32 @arm_spe_perf_aux_output_begin(%struct.perf_output_handle*, %struct.perf_event*) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @write_sysreg_s(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
