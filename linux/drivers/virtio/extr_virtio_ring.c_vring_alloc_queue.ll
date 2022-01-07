; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.virtio_device*, i64, i64*, i32)* @vring_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vring_alloc_queue(%struct.virtio_device* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.virtio_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %13 = call i64 @vring_use_dma_api(%struct.virtio_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %17 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @dma_alloc_coherent(i32 %19, i64 %20, i64* %21, i32 %22)
  store i8* %23, i8** %5, align 8
  br label %51

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @PAGE_ALIGN(i64 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @alloc_pages_exact(i32 %26, i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @virt_to_phys(i8* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64*, i64** %8, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON_ONCE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @PAGE_ALIGN(i64 %45)
  %47 = call i32 @free_pages_exact(i8* %44, i32 %46)
  store i8* null, i8** %5, align 8
  br label %51

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i8*, i8** %10, align 8
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %49, %43, %15
  %52 = load i8*, i8** %5, align 8
  ret i8* %52
}

declare dso_local i64 @vring_use_dma_api(%struct.virtio_device*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i64*, i32) #1

declare dso_local i8* @alloc_pages_exact(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @free_pages_exact(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
