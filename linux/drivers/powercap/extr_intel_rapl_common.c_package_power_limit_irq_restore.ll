; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_package_power_limit_irq_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_package_power_limit_irq_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_package = type { i32 }

@X86_FEATURE_PTS = common dso_local global i32 0, align 4
@X86_FEATURE_PLN = common dso_local global i32 0, align 4
@PACKAGE_PLN_INT_SAVED = common dso_local global i32 0, align 4
@MSR_IA32_PACKAGE_THERM_INTERRUPT = common dso_local global i32 0, align 4
@PACKAGE_THERM_INT_PLN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rapl_package*)* @package_power_limit_irq_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @package_power_limit_irq_restore(%struct.rapl_package* %0) #0 {
  %2 = alloca %struct.rapl_package*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rapl_package* %0, %struct.rapl_package** %2, align 8
  %5 = load i32, i32* @X86_FEATURE_PTS, align 4
  %6 = call i32 @boot_cpu_has(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @X86_FEATURE_PLN, align 4
  %10 = call i32 @boot_cpu_has(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %1
  br label %44

13:                                               ; preds = %8
  %14 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %15 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PACKAGE_PLN_INT_SAVED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %44

21:                                               ; preds = %13
  %22 = load i32, i32* @MSR_IA32_PACKAGE_THERM_INTERRUPT, align 4
  %23 = call i32 @rdmsr_safe(i32 %22, i32* %3, i32* %4)
  %24 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %25 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PACKAGE_THERM_INT_PLN_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @PACKAGE_THERM_INT_PLN_ENABLE, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %21
  %35 = load i32, i32* @PACKAGE_THERM_INT_PLN_ENABLE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* @MSR_IA32_PACKAGE_THERM_INTERRUPT, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @wrmsr_safe(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %20, %12
  ret void
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @rdmsr_safe(i32, i32*, i32*) #1

declare dso_local i32 @wrmsr_safe(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
