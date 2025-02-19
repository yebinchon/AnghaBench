; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_of_cpufreq_cooling_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_cpu_cooling.c_of_cpufreq_cooling_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { i32 }
%struct.cpufreq_policy = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"cpu_cooling: OF node not available for cpu%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#cooling-cells\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"dynamic-power-coefficient\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"cpu_cooling: cpu%d failed to register as cooling device: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thermal_cooling_device* @of_cpufreq_cooling_register(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.thermal_cooling_device*, align 8
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device_node* @of_get_cpu_node(i32 %9, i32* null)
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  store %struct.thermal_cooling_device* null, %struct.thermal_cooling_device** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.thermal_cooling_device* null, %struct.thermal_cooling_device** %2, align 8
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i64 @of_find_property(%struct.device_node* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call i32 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.thermal_cooling_device* @__cpufreq_cooling_register(%struct.device_node* %25, %struct.cpufreq_policy* %26, i32 %27)
  store %struct.thermal_cooling_device* %28, %struct.thermal_cooling_device** %5, align 8
  %29 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %30 = call i64 @IS_ERR(%struct.thermal_cooling_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %34 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %37 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %36)
  %38 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32 %37)
  store %struct.thermal_cooling_device* null, %struct.thermal_cooling_device** %5, align 8
  br label %39

39:                                               ; preds = %32, %22
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = call i32 @of_node_put(%struct.device_node* %41)
  %43 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  store %struct.thermal_cooling_device* %43, %struct.thermal_cooling_device** %2, align 8
  br label %44

44:                                               ; preds = %40, %13
  %45 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %2, align 8
  ret %struct.thermal_cooling_device* %45
}

declare dso_local %struct.device_node* @of_get_cpu_node(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.thermal_cooling_device* @__cpufreq_cooling_register(%struct.device_node*, %struct.cpufreq_policy*, i32) #1

declare dso_local i64 @IS_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
