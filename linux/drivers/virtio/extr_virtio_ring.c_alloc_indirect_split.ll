; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_alloc_indirect_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_alloc_indirect_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_desc = type { i32 }
%struct.virtqueue = type { i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vring_desc* (%struct.virtqueue*, i32, i32)* @alloc_indirect_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vring_desc* @alloc_indirect_split(%struct.virtqueue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vring_desc*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vring_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @__GFP_HIGHMEM, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.vring_desc* @kmalloc_array(i32 %14, i32 4, i32 %15)
  store %struct.vring_desc* %16, %struct.vring_desc** %8, align 8
  %17 = load %struct.vring_desc*, %struct.vring_desc** %8, align 8
  %18 = icmp ne %struct.vring_desc* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.vring_desc* null, %struct.vring_desc** %4, align 8
  br label %42

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %27 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %29, 1
  %31 = call i32 @cpu_to_virtio16(i32 %28, i32 %30)
  %32 = load %struct.vring_desc*, %struct.vring_desc** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %32, i64 %34
  %36 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load %struct.vring_desc*, %struct.vring_desc** %8, align 8
  store %struct.vring_desc* %41, %struct.vring_desc** %4, align 8
  br label %42

42:                                               ; preds = %40, %19
  %43 = load %struct.vring_desc*, %struct.vring_desc** %4, align 8
  ret %struct.vring_desc* %43
}

declare dso_local %struct.vring_desc* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @cpu_to_virtio16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
