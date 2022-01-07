; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_pmu_probe_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l2_pmu.c_l2_cache_pmu_probe_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device* }
%struct.platform_device = type { i32 }
%struct.l2cache_pmu = type { i32, i32 }
%struct.cluster_pmu = type { i64, i32, i32, i32, %struct.l2cache_pmu*, i32 }
%struct.acpi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to read ACPI uid\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@l2_cache_handle_irq = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"l2-cache-pmu\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Unable to request IRQ%d for L2 PMU counters\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Registered L2 cache PMU cluster %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @l2_cache_pmu_probe_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2_cache_pmu_probe_cluster(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.l2cache_pmu*, align 8
  %9 = alloca %struct.cluster_pmu*, align 8
  %10 = alloca %struct.acpi_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  %17 = call %struct.platform_device* @to_platform_device(%struct.device* %16)
  store %struct.platform_device* %17, %struct.platform_device** %6, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.platform_device* @to_platform_device(%struct.device* %18)
  store %struct.platform_device* %19, %struct.platform_device** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.l2cache_pmu*
  store %struct.l2cache_pmu* %21, %struct.l2cache_pmu** %8, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @ACPI_HANDLE(%struct.device* %22)
  %24 = call i64 @acpi_bus_get_device(i32 %23, %struct.acpi_device** %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %111

29:                                               ; preds = %2
  %30 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @kstrtoul(i32 %33, i32 10, i64* %11)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %111

42:                                               ; preds = %29
  %43 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.cluster_pmu* @devm_kzalloc(i32* %44, i32 40, i32 %45)
  store %struct.cluster_pmu* %46, %struct.cluster_pmu** %9, align 8
  %47 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %48 = icmp ne %struct.cluster_pmu* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %111

52:                                               ; preds = %42
  %53 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %54 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %53, i32 0, i32 5
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %57 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %56, i32 0, i32 5
  %58 = load %struct.l2cache_pmu*, %struct.l2cache_pmu** %8, align 8
  %59 = getelementptr inbounds %struct.l2cache_pmu, %struct.l2cache_pmu* %58, i32 0, i32 1
  %60 = call i32 @list_add(i32* %57, i32* %59)
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %63 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %65 = call i32 @platform_get_irq(%struct.platform_device* %64, i32 0)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %3, align 4
  br label %111

70:                                               ; preds = %52
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %73 = call i32 @irq_set_status_flags(i32 %71, i32 %72)
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %76 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.l2cache_pmu*, %struct.l2cache_pmu** %8, align 8
  %78 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %79 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %78, i32 0, i32 4
  store %struct.l2cache_pmu* %77, %struct.l2cache_pmu** %79, align 8
  %80 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %81 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %80, i32 0, i32 2
  store i32 -1, i32* %81, align 4
  %82 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @l2_cache_handle_irq, align 4
  %86 = load i32, i32* @IRQF_NOBALANCING, align 4
  %87 = load i32, i32* @IRQF_NO_THREAD, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %90 = call i32 @devm_request_irq(i32* %83, i32 %84, i32 %85, i32 %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.cluster_pmu* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %70
  %94 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32, i32* %13, align 4
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %3, align 4
  br label %111

99:                                               ; preds = %70
  %100 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @dev_info(i32* %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %102)
  %104 = load %struct.cluster_pmu*, %struct.cluster_pmu** %9, align 8
  %105 = getelementptr inbounds %struct.cluster_pmu, %struct.cluster_pmu* %104, i32 0, i32 3
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.l2cache_pmu*, %struct.l2cache_pmu** %8, align 8
  %108 = getelementptr inbounds %struct.l2cache_pmu, %struct.l2cache_pmu* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %99, %93, %68, %49, %36, %26
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i64 @kstrtoul(i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.cluster_pmu* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.cluster_pmu*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
