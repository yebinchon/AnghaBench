; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-cci.c_cci_pmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-cci.c_cci_pmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cci_pmu = type { i32*, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__, i64, %struct.cci_pmu* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"In-correct number of interrupts: %d, should be %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@g_cci_pmu = common dso_local global %struct.cci_pmu* null, align 8
@CPUHP_AP_PERF_ARM_CCI_ONLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"perf/arm/cci:online\00", align 1
@cci_pmu_offline_cpu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ARM %s PMU driver probed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cci_pmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cci_pmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.cci_pmu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.cci_pmu* @cci_pmu_alloc(i32* %10)
  store %struct.cci_pmu* %11, %struct.cci_pmu** %5, align 8
  %12 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %13 = call i64 @IS_ERR(%struct.cci_pmu* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %17 = call i32 @PTR_ERR(%struct.cci_pmu* %16)
  store i32 %17, i32* %2, align 4
  br label %130

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %4, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = call %struct.cci_pmu* @devm_ioremap_resource(i32* %23, %struct.resource* %24)
  %26 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %27 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %26, i32 0, i32 7
  store %struct.cci_pmu* %25, %struct.cci_pmu** %27, align 8
  %28 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %29 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %28, i32 0, i32 7
  %30 = load %struct.cci_pmu*, %struct.cci_pmu** %29, align 8
  %31 = call i64 @IS_ERR(%struct.cci_pmu* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %130

36:                                               ; preds = %18
  %37 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %38 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %74, %36
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %42 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @CCI_PMU_MAX_HW_CNTRS(%struct.TYPE_4__* %43)
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %39
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @platform_get_irq(%struct.platform_device* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %77

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %56 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %59 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @is_duplicate_irq(i32 %54, i32* %57, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %74

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %67 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %70 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %65, i32* %73, align 4
  br label %74

74:                                               ; preds = %64, %63
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %39

77:                                               ; preds = %52, %39
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %80 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i32 @CCI_PMU_MAX_HW_CNTRS(%struct.TYPE_4__* %81)
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %89 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = call i32 @CCI_PMU_MAX_HW_CNTRS(%struct.TYPE_4__* %90)
  %92 = call i32 @dev_warn(i32* %86, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %130

95:                                               ; preds = %77
  %96 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %97 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = call i32 @raw_spin_lock_init(i32* %98)
  %100 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %101 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %100, i32 0, i32 4
  %102 = call i32 @mutex_init(i32* %101)
  %103 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %104 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %103, i32 0, i32 3
  %105 = call i32 @atomic_set(i32* %104, i32 0)
  %106 = call i32 (...) @raw_smp_processor_id()
  %107 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %108 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  store %struct.cci_pmu* %109, %struct.cci_pmu** @g_cci_pmu, align 8
  %110 = load i32, i32* @CPUHP_AP_PERF_ARM_CCI_ONLINE, align 4
  %111 = load i32, i32* @cci_pmu_offline_cpu, align 4
  %112 = call i32 @cpuhp_setup_state_nocalls(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %111)
  %113 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = call i32 @cci_pmu_init(%struct.cci_pmu* %113, %struct.platform_device* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %95
  br label %126

119:                                              ; preds = %95
  %120 = load %struct.cci_pmu*, %struct.cci_pmu** %5, align 8
  %121 = getelementptr inbounds %struct.cci_pmu, %struct.cci_pmu* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  store i32 0, i32* %2, align 4
  br label %130

126:                                              ; preds = %118
  %127 = load i32, i32* @CPUHP_AP_PERF_ARM_CCI_ONLINE, align 4
  %128 = call i32 @cpuhp_remove_state(i32 %127)
  store %struct.cci_pmu* null, %struct.cci_pmu** @g_cci_pmu, align 8
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %119, %84, %33, %15
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.cci_pmu* @cci_pmu_alloc(i32*) #1

declare dso_local i64 @IS_ERR(%struct.cci_pmu*) #1

declare dso_local i32 @PTR_ERR(%struct.cci_pmu*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.cci_pmu* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @CCI_PMU_MAX_HW_CNTRS(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @is_duplicate_irq(i32, i32*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpuhp_setup_state_nocalls(i32, i8*, i32*, i32) #1

declare dso_local i32 @cci_pmu_init(%struct.cci_pmu*, %struct.platform_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @cpuhp_remove_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
