; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_release_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_release_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i64, i32 }
%struct.nd_percpu_lane = type { i64, i32 }

@nr_cpu_ids = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd_region_release_lane(%struct.nd_region* %0, i32 %1) #0 {
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nd_percpu_lane*, align 8
  %7 = alloca %struct.nd_percpu_lane*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %9 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @nr_cpu_ids, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = call i32 (...) @get_cpu()
  store i32 %14, i32* %5, align 4
  %15 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %16 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.nd_percpu_lane* @per_cpu_ptr(i32 %17, i32 %18)
  store %struct.nd_percpu_lane* %19, %struct.nd_percpu_lane** %7, align 8
  %20 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %21 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.nd_percpu_lane* @per_cpu_ptr(i32 %22, i32 %23)
  store %struct.nd_percpu_lane* %24, %struct.nd_percpu_lane** %6, align 8
  %25 = load %struct.nd_percpu_lane*, %struct.nd_percpu_lane** %7, align 8
  %26 = getelementptr inbounds %struct.nd_percpu_lane, %struct.nd_percpu_lane* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %13
  %31 = load %struct.nd_percpu_lane*, %struct.nd_percpu_lane** %6, align 8
  %32 = getelementptr inbounds %struct.nd_percpu_lane, %struct.nd_percpu_lane* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %13
  %35 = call i32 (...) @put_cpu()
  br label %36

36:                                               ; preds = %34, %2
  %37 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.nd_percpu_lane* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
