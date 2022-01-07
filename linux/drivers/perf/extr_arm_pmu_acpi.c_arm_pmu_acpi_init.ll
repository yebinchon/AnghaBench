; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu_acpi.c_arm_pmu_acpi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu_acpi.c_arm_pmu_acpi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_disabled = common dso_local global i64 0, align 8
@CPUHP_AP_PERF_ARM_ACPI_STARTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"perf/arm/pmu_acpi:starting\00", align 1
@arm_pmu_acpi_cpu_starting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @arm_pmu_acpi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_pmu_acpi_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @acpi_disabled, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %18

6:                                                ; preds = %0
  %7 = call i32 (...) @arm_spe_acpi_register_device()
  %8 = call i32 (...) @arm_pmu_acpi_parse_irqs()
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %1, align 4
  br label %18

13:                                               ; preds = %6
  %14 = load i32, i32* @CPUHP_AP_PERF_ARM_ACPI_STARTING, align 4
  %15 = load i32, i32* @arm_pmu_acpi_cpu_starting, align 4
  %16 = call i32 @cpuhp_setup_state(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15, i32* null)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %13, %11, %5
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @arm_spe_acpi_register_device(...) #1

declare dso_local i32 @arm_pmu_acpi_parse_irqs(...) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
