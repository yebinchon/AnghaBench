; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_msr.c_rapl_cpu_down_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_msr.c_rapl_cpu_down_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_package = type { i32, i32 }

@rapl_msr_priv = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rapl_cpu_down_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_cpu_down_prep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rapl_package*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rapl_package* @rapl_find_package_domain(i32 %6, i32* @rapl_msr_priv)
  store %struct.rapl_package* %7, %struct.rapl_package** %4, align 8
  %8 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %9 = icmp ne %struct.rapl_package* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %14 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %13, i32 0, i32 1
  %15 = call i32 @cpumask_clear_cpu(i32 %12, i32* %14)
  %16 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %17 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %16, i32 0, i32 1
  %18 = call i32 @cpumask_first(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @nr_cpu_ids, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %24 = call i32 @rapl_remove_package(%struct.rapl_package* %23)
  br label %36

25:                                               ; preds = %11
  %26 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %27 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %34 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %25
  br label %36

36:                                               ; preds = %35, %22
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.rapl_package* @rapl_find_package_domain(i32, i32*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local i32 @rapl_remove_package(%struct.rapl_package*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
