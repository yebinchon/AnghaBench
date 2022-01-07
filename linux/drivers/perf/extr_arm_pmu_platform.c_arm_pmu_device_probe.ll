; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu_platform.c_arm_pmu_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu_platform.c_arm_pmu_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 (%struct.arm_pmu*)* }
%struct.arm_pmu = type opaque
%struct.pmu_probe_info = type { i32 }
%struct.arm_pmu.0 = type { i32, i32, %struct.platform_device* }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"secure-reg-access\00", align 1
@CONFIG_ARM64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ignoring \22secure-reg-access\22 property for arm64\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%pOF: failed to probe PMU!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%pOF: failed to register PMU devices!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_pmu_device_probe(%struct.platform_device* %0, %struct.of_device_id* %1, %struct.pmu_probe_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.pmu_probe_info*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i32 (%struct.arm_pmu.0*)*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.arm_pmu.0*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %6, align 8
  store %struct.pmu_probe_info* %2, %struct.pmu_probe_info** %7, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %10, align 8
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = call %struct.arm_pmu.0* (...) @armpmu_alloc()
  store %struct.arm_pmu.0* %19, %struct.arm_pmu.0** %11, align 8
  %20 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %21 = icmp ne %struct.arm_pmu.0* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %112

25:                                               ; preds = %3
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %28 = getelementptr inbounds %struct.arm_pmu.0, %struct.arm_pmu.0* %27, i32 0, i32 2
  store %struct.platform_device* %26, %struct.platform_device** %28, align 8
  %29 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %30 = call i32 @pmu_parse_irqs(%struct.arm_pmu.0* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %106

34:                                               ; preds = %25
  %35 = load %struct.device_node*, %struct.device_node** %10, align 8
  %36 = icmp ne %struct.device_node* %35, null
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.device_node*, %struct.device_node** %41, align 8
  %43 = call %struct.of_device_id* @of_match_node(%struct.of_device_id* %38, %struct.device_node* %42)
  store %struct.of_device_id* %43, %struct.of_device_id** %8, align 8
  %44 = icmp ne %struct.of_device_id* %43, null
  br i1 %44, label %45, label %73

45:                                               ; preds = %37
  %46 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %47 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %46, i32 0, i32 0
  %48 = load i32 (%struct.arm_pmu*)*, i32 (%struct.arm_pmu*)** %47, align 8
  %49 = bitcast i32 (%struct.arm_pmu*)* %48 to i32 (%struct.arm_pmu.0*)*
  store i32 (%struct.arm_pmu.0*)* %49, i32 (%struct.arm_pmu.0*)** %9, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.device_node*, %struct.device_node** %52, align 8
  %54 = call i32 @of_property_read_bool(%struct.device_node* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %56 = getelementptr inbounds %struct.arm_pmu.0, %struct.arm_pmu.0* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @CONFIG_ARM64, align 4
  %58 = call i64 @IS_ENABLED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %45
  %61 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %62 = getelementptr inbounds %struct.arm_pmu.0, %struct.arm_pmu.0* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %68 = getelementptr inbounds %struct.arm_pmu.0, %struct.arm_pmu.0* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %60, %45
  %70 = load i32 (%struct.arm_pmu.0*)*, i32 (%struct.arm_pmu.0*)** %9, align 8
  %71 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %72 = call i32 %70(%struct.arm_pmu.0* %71)
  store i32 %72, i32* %12, align 4
  br label %84

73:                                               ; preds = %37, %34
  %74 = load %struct.pmu_probe_info*, %struct.pmu_probe_info** %7, align 8
  %75 = icmp ne %struct.pmu_probe_info* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %78 = getelementptr inbounds %struct.arm_pmu.0, %struct.arm_pmu.0* %77, i32 0, i32 1
  %79 = call i32 @cpumask_setall(i32* %78)
  %80 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %81 = load %struct.pmu_probe_info*, %struct.pmu_probe_info** %7, align 8
  %82 = call i32 @probe_current_pmu(%struct.arm_pmu.0* %80, %struct.pmu_probe_info* %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %76, %73
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.device_node*, %struct.device_node** %10, align 8
  %89 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %88)
  br label %106

90:                                               ; preds = %84
  %91 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %92 = call i32 @armpmu_request_irqs(%struct.arm_pmu.0* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %103

96:                                               ; preds = %90
  %97 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %98 = call i32 @armpmu_register(%struct.arm_pmu.0* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %106

102:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %112

103:                                              ; preds = %95
  %104 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %105 = call i32 @armpmu_free_irqs(%struct.arm_pmu.0* %104)
  br label %106

106:                                              ; preds = %103, %101, %87, %33
  %107 = load %struct.device_node*, %struct.device_node** %10, align 8
  %108 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %107)
  %109 = load %struct.arm_pmu.0*, %struct.arm_pmu.0** %11, align 8
  %110 = call i32 @armpmu_free(%struct.arm_pmu.0* %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %102, %22
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.arm_pmu.0* @armpmu_alloc(...) #1

declare dso_local i32 @pmu_parse_irqs(%struct.arm_pmu.0*) #1

declare dso_local %struct.of_device_id* @of_match_node(%struct.of_device_id*, %struct.device_node*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @cpumask_setall(i32*) #1

declare dso_local i32 @probe_current_pmu(%struct.arm_pmu.0*, %struct.pmu_probe_info*) #1

declare dso_local i32 @pr_info(i8*, %struct.device_node*) #1

declare dso_local i32 @armpmu_request_irqs(%struct.arm_pmu.0*) #1

declare dso_local i32 @armpmu_register(%struct.arm_pmu.0*) #1

declare dso_local i32 @armpmu_free_irqs(%struct.arm_pmu.0*) #1

declare dso_local i32 @armpmu_free(%struct.arm_pmu.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
