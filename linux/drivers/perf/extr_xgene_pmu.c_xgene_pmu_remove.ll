; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xgene_pmu = type { i32, i32, i32, i32, i32 }

@CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_pmu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_pmu_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xgene_pmu*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.xgene_pmu* @dev_get_drvdata(i32* %5)
  store %struct.xgene_pmu* %6, %struct.xgene_pmu** %3, align 8
  %7 = load %struct.xgene_pmu*, %struct.xgene_pmu** %3, align 8
  %8 = load %struct.xgene_pmu*, %struct.xgene_pmu** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %8, i32 0, i32 4
  %10 = call i32 @xgene_pmu_dev_cleanup(%struct.xgene_pmu* %7, i32* %9)
  %11 = load %struct.xgene_pmu*, %struct.xgene_pmu** %3, align 8
  %12 = load %struct.xgene_pmu*, %struct.xgene_pmu** %3, align 8
  %13 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %12, i32 0, i32 3
  %14 = call i32 @xgene_pmu_dev_cleanup(%struct.xgene_pmu* %11, i32* %13)
  %15 = load %struct.xgene_pmu*, %struct.xgene_pmu** %3, align 8
  %16 = load %struct.xgene_pmu*, %struct.xgene_pmu** %3, align 8
  %17 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %16, i32 0, i32 2
  %18 = call i32 @xgene_pmu_dev_cleanup(%struct.xgene_pmu* %15, i32* %17)
  %19 = load %struct.xgene_pmu*, %struct.xgene_pmu** %3, align 8
  %20 = load %struct.xgene_pmu*, %struct.xgene_pmu** %3, align 8
  %21 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %20, i32 0, i32 1
  %22 = call i32 @xgene_pmu_dev_cleanup(%struct.xgene_pmu* %19, i32* %21)
  %23 = load i32, i32* @CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE, align 4
  %24 = load %struct.xgene_pmu*, %struct.xgene_pmu** %3, align 8
  %25 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %24, i32 0, i32 0
  %26 = call i32 @cpuhp_state_remove_instance(i32 %23, i32* %25)
  ret i32 0
}

declare dso_local %struct.xgene_pmu* @dev_get_drvdata(i32*) #1

declare dso_local i32 @xgene_pmu_dev_cleanup(%struct.xgene_pmu*, i32*) #1

declare dso_local i32 @cpuhp_state_remove_instance(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
