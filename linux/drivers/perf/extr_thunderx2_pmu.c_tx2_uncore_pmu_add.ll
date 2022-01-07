; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx2_uncore_pmu = type { i32 }
%struct.acpi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@PMU_TYPE_INVALID = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @tx2_uncore_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx2_uncore_pmu_add(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.tx2_uncore_pmu*, align 8
  %11 = alloca %struct.acpi_device*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @acpi_bus_get_device(i32 %13, %struct.acpi_device** %11)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @AE_OK, align 4
  store i32 %17, i32* %5, align 4
  br label %57

18:                                               ; preds = %4
  %19 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %20 = call i64 @acpi_bus_get_status(%struct.acpi_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22, %18
  %29 = load i32, i32* @AE_OK, align 4
  store i32 %29, i32* %5, align 4
  br label %57

30:                                               ; preds = %22
  %31 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %32 = call i32 @get_tx2_pmu_type(%struct.acpi_device* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @PMU_TYPE_INVALID, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @AE_OK, align 4
  store i32 %37, i32* %5, align 4
  br label %57

38:                                               ; preds = %30
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to %struct.device*
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call %struct.tx2_uncore_pmu* @tx2_uncore_pmu_init_dev(%struct.device* %40, i32 %41, %struct.acpi_device* %42, i32 %43)
  store %struct.tx2_uncore_pmu* %44, %struct.tx2_uncore_pmu** %10, align 8
  %45 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %10, align 8
  %46 = icmp ne %struct.tx2_uncore_pmu* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @AE_ERROR, align 4
  store i32 %48, i32* %5, align 4
  br label %57

49:                                               ; preds = %38
  %50 = load %struct.tx2_uncore_pmu*, %struct.tx2_uncore_pmu** %10, align 8
  %51 = call i64 @tx2_uncore_pmu_add_dev(%struct.tx2_uncore_pmu* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @AE_ERROR, align 4
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @AE_OK, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %53, %47, %36, %28, %16
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i64 @acpi_bus_get_status(%struct.acpi_device*) #1

declare dso_local i32 @get_tx2_pmu_type(%struct.acpi_device*) #1

declare dso_local %struct.tx2_uncore_pmu* @tx2_uncore_pmu_init_dev(%struct.device*, i32, %struct.acpi_device*, i32) #1

declare dso_local i64 @tx2_uncore_pmu_add_dev(%struct.tx2_uncore_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
