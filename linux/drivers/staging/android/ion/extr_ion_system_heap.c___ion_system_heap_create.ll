; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c___ion_system_heap_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c___ion_system_heap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_heap = type { i32, i32, i32* }
%struct.ion_system_heap = type { %struct.ion_heap, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@system_heap_ops = common dso_local global i32 0, align 4
@ION_HEAP_TYPE_SYSTEM = common dso_local global i32 0, align 4
@ION_HEAP_FLAG_DEFER_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ion_heap* ()* @__ion_system_heap_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ion_heap* @__ion_system_heap_create() #0 {
  %1 = alloca %struct.ion_heap*, align 8
  %2 = alloca %struct.ion_system_heap*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.ion_system_heap* @kzalloc(i32 24, i32 %3)
  store %struct.ion_system_heap* %4, %struct.ion_system_heap** %2, align 8
  %5 = load %struct.ion_system_heap*, %struct.ion_system_heap** %2, align 8
  %6 = icmp ne %struct.ion_system_heap* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.ion_heap* @ERR_PTR(i32 %9)
  store %struct.ion_heap* %10, %struct.ion_heap** %1, align 8
  br label %38

11:                                               ; preds = %0
  %12 = load %struct.ion_system_heap*, %struct.ion_system_heap** %2, align 8
  %13 = getelementptr inbounds %struct.ion_system_heap, %struct.ion_system_heap* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %13, i32 0, i32 2
  store i32* @system_heap_ops, i32** %14, align 8
  %15 = load i32, i32* @ION_HEAP_TYPE_SYSTEM, align 4
  %16 = load %struct.ion_system_heap*, %struct.ion_system_heap** %2, align 8
  %17 = getelementptr inbounds %struct.ion_system_heap, %struct.ion_system_heap* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @ION_HEAP_FLAG_DEFER_FREE, align 4
  %20 = load %struct.ion_system_heap*, %struct.ion_system_heap** %2, align 8
  %21 = getelementptr inbounds %struct.ion_system_heap, %struct.ion_system_heap* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.ion_heap, %struct.ion_heap* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ion_system_heap*, %struct.ion_system_heap** %2, align 8
  %24 = getelementptr inbounds %struct.ion_system_heap, %struct.ion_system_heap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ion_system_heap_create_pools(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %11
  br label %32

29:                                               ; preds = %11
  %30 = load %struct.ion_system_heap*, %struct.ion_system_heap** %2, align 8
  %31 = getelementptr inbounds %struct.ion_system_heap, %struct.ion_system_heap* %30, i32 0, i32 0
  store %struct.ion_heap* %31, %struct.ion_heap** %1, align 8
  br label %38

32:                                               ; preds = %28
  %33 = load %struct.ion_system_heap*, %struct.ion_system_heap** %2, align 8
  %34 = call i32 @kfree(%struct.ion_system_heap* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.ion_heap* @ERR_PTR(i32 %36)
  store %struct.ion_heap* %37, %struct.ion_heap** %1, align 8
  br label %38

38:                                               ; preds = %32, %29, %7
  %39 = load %struct.ion_heap*, %struct.ion_heap** %1, align 8
  ret %struct.ion_heap* %39
}

declare dso_local %struct.ion_system_heap* @kzalloc(i32, i32) #1

declare dso_local %struct.ion_heap* @ERR_PTR(i32) #1

declare dso_local i64 @ion_system_heap_create_pools(i32) #1

declare dso_local i32 @kfree(%struct.ion_system_heap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
