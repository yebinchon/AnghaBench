; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_acquire_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_acquire_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, i32 }
%struct.nd_percpu_lane = type { i32, i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_region_acquire_lane(%struct.nd_region* %0) #0 {
  %2 = alloca %struct.nd_region*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_percpu_lane*, align 8
  %6 = alloca %struct.nd_percpu_lane*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %2, align 8
  %7 = call i32 (...) @get_cpu()
  store i32 %7, i32* %3, align 4
  %8 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %9 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %16 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = urem i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %20 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.nd_percpu_lane* @per_cpu_ptr(i32 %21, i32 %22)
  store %struct.nd_percpu_lane* %23, %struct.nd_percpu_lane** %6, align 8
  %24 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %25 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.nd_percpu_lane* @per_cpu_ptr(i32 %26, i32 %27)
  store %struct.nd_percpu_lane* %28, %struct.nd_percpu_lane** %5, align 8
  %29 = load %struct.nd_percpu_lane*, %struct.nd_percpu_lane** %6, align 8
  %30 = getelementptr inbounds %struct.nd_percpu_lane, %struct.nd_percpu_lane* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %13
  %35 = load %struct.nd_percpu_lane*, %struct.nd_percpu_lane** %5, align 8
  %36 = getelementptr inbounds %struct.nd_percpu_lane, %struct.nd_percpu_lane* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  br label %38

38:                                               ; preds = %34, %13
  br label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.nd_percpu_lane* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
