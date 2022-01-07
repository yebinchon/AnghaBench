; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_ab_task_create_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_ab_task_create_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab_task = type { i32, i64, i32*, i32, i32, %struct.kmem_cache* }
%struct.kmem_cache = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ab_task* (%struct.kmem_cache*, i32)* @ab_task_create_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ab_task* @ab_task_create_get(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.ab_task*, align 8
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ab_task*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ab_task* @kmem_cache_alloc(%struct.kmem_cache* %7, i32 %8)
  store %struct.ab_task* %9, %struct.ab_task** %6, align 8
  %10 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  %11 = icmp ne %struct.ab_task* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.ab_task* null, %struct.ab_task** %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %15 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  %16 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %15, i32 0, i32 5
  store %struct.kmem_cache* %14, %struct.kmem_cache** %16, align 8
  %17 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  %18 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %17, i32 0, i32 4
  %19 = call i32 @kref_init(i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  %22 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  %24 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  %26 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  %28 = getelementptr inbounds %struct.ab_task, %struct.ab_task* %27, i32 0, i32 0
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  store %struct.ab_task* %30, %struct.ab_task** %3, align 8
  br label %31

31:                                               ; preds = %13, %12
  %32 = load %struct.ab_task*, %struct.ab_task** %3, align 8
  ret %struct.ab_task* %32
}

declare dso_local %struct.ab_task* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
