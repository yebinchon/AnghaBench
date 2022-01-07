; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_probe_pmu_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_probe_pmu_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_pmu = type { i32 }
%struct.platform_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_pmu*, %struct.platform_device*)* @xgene_pmu_probe_pmu_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_pmu_probe_pmu_dev(%struct.xgene_pmu* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_pmu*, align 8
  %5 = alloca %struct.platform_device*, align 8
  store %struct.xgene_pmu* %0, %struct.xgene_pmu** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i64 @has_acpi_companion(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = call i32 @acpi_pmu_probe_pmu_dev(%struct.xgene_pmu* %11, %struct.platform_device* %12)
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = call i32 @fdt_pmu_probe_pmu_dev(%struct.xgene_pmu* %15, %struct.platform_device* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @has_acpi_companion(i32*) #1

declare dso_local i32 @acpi_pmu_probe_pmu_dev(%struct.xgene_pmu*, %struct.platform_device*) #1

declare dso_local i32 @fdt_pmu_probe_pmu_dev(%struct.xgene_pmu*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
