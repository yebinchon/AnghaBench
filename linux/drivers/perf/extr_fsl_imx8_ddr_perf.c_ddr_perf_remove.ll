; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ddr_pmu = type { i32, i32, i32, i32, i32 }

@ddr_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ddr_perf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddr_perf_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ddr_pmu*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ddr_pmu* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ddr_pmu* %5, %struct.ddr_pmu** %3, align 8
  %6 = load %struct.ddr_pmu*, %struct.ddr_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ddr_pmu*, %struct.ddr_pmu** %3, align 8
  %10 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %9, i32 0, i32 3
  %11 = call i32 @cpuhp_state_remove_instance_nocalls(i32 %8, i32* %10)
  %12 = load %struct.ddr_pmu*, %struct.ddr_pmu** %3, align 8
  %13 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @irq_set_affinity_hint(i32 %14, i32* null)
  %16 = load %struct.ddr_pmu*, %struct.ddr_pmu** %3, align 8
  %17 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %16, i32 0, i32 1
  %18 = call i32 @perf_pmu_unregister(i32* %17)
  %19 = load %struct.ddr_pmu*, %struct.ddr_pmu** %3, align 8
  %20 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ida_simple_remove(i32* @ddr_ida, i32 %21)
  ret i32 0
}

declare dso_local %struct.ddr_pmu* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cpuhp_state_remove_instance_nocalls(i32, i32*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @perf_pmu_unregister(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
