; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu_acpi.c_arm_pmu_acpi_register_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu_acpi.c_arm_pmu_acpi_register_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_madt_generic_interrupt = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_MADT_PERFORMANCE_IRQ_MODE = common dso_local global i32 0, align 4
@ACPI_EDGE_SENSITIVE = common dso_local global i32 0, align 4
@ACPI_LEVEL_SENSITIVE = common dso_local global i32 0, align 4
@ACPI_ACTIVE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_pmu_acpi_register_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_pmu_acpi_register_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_madt_generic_interrupt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.acpi_madt_generic_interrupt* @acpi_cpu_get_madt_gicc(i32 %7)
  store %struct.acpi_madt_generic_interrupt* %8, %struct.acpi_madt_generic_interrupt** %4, align 8
  %9 = load %struct.acpi_madt_generic_interrupt*, %struct.acpi_madt_generic_interrupt** %4, align 8
  %10 = icmp ne %struct.acpi_madt_generic_interrupt* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.acpi_madt_generic_interrupt*, %struct.acpi_madt_generic_interrupt** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_madt_generic_interrupt, %struct.acpi_madt_generic_interrupt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %41

25:                                               ; preds = %18
  %26 = load %struct.acpi_madt_generic_interrupt*, %struct.acpi_madt_generic_interrupt** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_madt_generic_interrupt, %struct.acpi_madt_generic_interrupt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ACPI_MADT_PERFORMANCE_IRQ_MODE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ACPI_EDGE_SENSITIVE, align 4
  store i32 %33, i32* %6, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @ACPI_LEVEL_SENSITIVE, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ACPI_ACTIVE_HIGH, align 4
  %40 = call i32 @acpi_register_gsi(i32* null, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %24, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.acpi_madt_generic_interrupt* @acpi_cpu_get_madt_gicc(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @acpi_register_gsi(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
