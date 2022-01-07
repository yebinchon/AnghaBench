; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_event_set_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_pmu.c_armpmu_event_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32, i32, i32 }
%struct.arm_pmu = type { i32 (%struct.perf_event*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armpmu_event_set_period(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arm_pmu*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.arm_pmu* @to_arm_pmu(i32 %11)
  store %struct.arm_pmu* %12, %struct.arm_pmu** %3, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  store %struct.hw_perf_event* %14, %struct.hw_perf_event** %4, align 8
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 3
  %17 = call i32 @local64_read(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %22 = call i32 @arm_pmu_event_max_period(%struct.perf_event* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp sle i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %32, i32 0, i32 3
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @local64_set(i32* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %38 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %30, %1
  %40 = load i32, i32* %5, align 4
  %41 = icmp sle i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %50 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %49, i32 0, i32 3
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @local64_set(i32* %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %55 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %45, %39
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 1
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %66 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %65, i32 0, i32 2
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 @local64_set(i32* %66, i32 %68)
  %70 = load %struct.arm_pmu*, %struct.arm_pmu** %3, align 8
  %71 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %70, i32 0, i32 0
  %72 = load i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)** %71, align 8
  %73 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 0, %74
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %75, %76
  %78 = call i32 %72(%struct.perf_event* %73, i32 %77)
  %79 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %80 = call i32 @perf_event_update_userpage(%struct.perf_event* %79)
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local %struct.arm_pmu* @to_arm_pmu(i32) #1

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @arm_pmu_event_max_period(%struct.perf_event*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
