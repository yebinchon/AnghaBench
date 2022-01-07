; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_package_power_limit_irq_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_package_power_limit_irq_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_package = type { i32 }

@X86_FEATURE_PTS = common dso_local global i32 0, align 4
@X86_FEATURE_PLN = common dso_local global i32 0, align 4
@power_limit_irq_save_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rapl_package*)* @package_power_limit_irq_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @package_power_limit_irq_save(%struct.rapl_package* %0) #0 {
  %2 = alloca %struct.rapl_package*, align 8
  store %struct.rapl_package* %0, %struct.rapl_package** %2, align 8
  %3 = load i32, i32* @X86_FEATURE_PTS, align 4
  %4 = call i32 @boot_cpu_has(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @X86_FEATURE_PLN, align 4
  %8 = call i32 @boot_cpu_has(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  br label %18

11:                                               ; preds = %6
  %12 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %13 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @power_limit_irq_save_cpu, align 4
  %16 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %17 = call i32 @smp_call_function_single(i32 %14, i32 %15, %struct.rapl_package* %16, i32 1)
  br label %18

18:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.rapl_package*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
