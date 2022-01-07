; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu_platform.c_probe_current_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu_platform.c_probe_current_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_pmu = type { i32 }
%struct.pmu_probe_info = type { i32 (%struct.arm_pmu.0*)*, i32, i32 }
%struct.arm_pmu.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"probing PMU on CPU %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_pmu*, %struct.pmu_probe_info*)* @probe_current_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_current_pmu(%struct.arm_pmu* %0, %struct.pmu_probe_info* %1) #0 {
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca %struct.pmu_probe_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arm_pmu* %0, %struct.arm_pmu** %3, align 8
  store %struct.pmu_probe_info* %1, %struct.pmu_probe_info** %4, align 8
  %8 = call i32 (...) @get_cpu()
  store i32 %8, i32* %5, align 4
  %9 = call i32 (...) @read_cpuid_id()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %37, %2
  %15 = load %struct.pmu_probe_info*, %struct.pmu_probe_info** %4, align 8
  %16 = getelementptr inbounds %struct.pmu_probe_info, %struct.pmu_probe_info* %15, i32 0, i32 0
  %17 = load i32 (%struct.arm_pmu.0*)*, i32 (%struct.arm_pmu.0*)** %16, align 8
  %18 = icmp ne i32 (%struct.arm_pmu.0*)* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pmu_probe_info*, %struct.pmu_probe_info** %4, align 8
  %22 = getelementptr inbounds %struct.pmu_probe_info, %struct.pmu_probe_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  %25 = load %struct.pmu_probe_info*, %struct.pmu_probe_info** %4, align 8
  %26 = getelementptr inbounds %struct.pmu_probe_info, %struct.pmu_probe_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %37

30:                                               ; preds = %19
  %31 = load %struct.pmu_probe_info*, %struct.pmu_probe_info** %4, align 8
  %32 = getelementptr inbounds %struct.pmu_probe_info, %struct.pmu_probe_info* %31, i32 0, i32 0
  %33 = load i32 (%struct.arm_pmu.0*)*, i32 (%struct.arm_pmu.0*)** %32, align 8
  %34 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %35 = bitcast %struct.arm_pmu* %34 to %struct.arm_pmu.0*
  %36 = call i32 %33(%struct.arm_pmu.0* %35)
  store i32 %36, i32* %7, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load %struct.pmu_probe_info*, %struct.pmu_probe_info** %4, align 8
  %39 = getelementptr inbounds %struct.pmu_probe_info, %struct.pmu_probe_info* %38, i32 1
  store %struct.pmu_probe_info* %39, %struct.pmu_probe_info** %4, align 8
  br label %14

40:                                               ; preds = %30, %14
  %41 = call i32 (...) @put_cpu()
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @read_cpuid_id(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
