; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-cci.c_cci_pmu_offline_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-cci.c_cci_pmu_offline_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@g_cci_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cci_pmu_offline_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cci_pmu_offline_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_cci_pmu, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_cci_pmu, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %7
  %15 = load i32, i32* @cpu_online_mask, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @cpumask_any_but(i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @nr_cpu_ids, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %31

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_cci_pmu, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @perf_pmu_migrate_context(i32* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_cci_pmu, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %21, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @cpumask_any_but(i32, i32) #1

declare dso_local i32 @perf_pmu_migrate_context(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
