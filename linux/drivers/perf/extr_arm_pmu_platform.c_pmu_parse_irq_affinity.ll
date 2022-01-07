; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu_platform.c_pmu_parse_irq_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu_platform.c_pmu_parse_irq_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"interrupt-affinity\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to parse interrupt-affinity[%d] for %pOFn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to find logical CPU for %pOFn\0A\00", align 1
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32)* @pmu_parse_irq_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_parse_irq_affinity(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = call i32 @pmu_has_irq_affinity(%struct.device_node* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %20, %struct.device_node* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %13
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i32 @of_cpu_node_to_id(%struct.device_node* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = ptrtoint %struct.device_node* %31 to i32
  %33 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @nr_cpu_ids, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = call i32 @of_node_put(%struct.device_node* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %19, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @pmu_has_irq_affinity(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @of_cpu_node_to_id(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
