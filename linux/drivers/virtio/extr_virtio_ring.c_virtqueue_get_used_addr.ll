; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_get_used_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_get_used_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { %struct.TYPE_6__, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @virtqueue_get_used_addr(%struct.virtqueue* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.vring_virtqueue*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  %5 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %6 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %5)
  store %struct.vring_virtqueue* %6, %struct.vring_virtqueue** %4, align 8
  %7 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %8 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %15 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %20 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %2, align 8
  br label %44

23:                                               ; preds = %1
  %24 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %25 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %29 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %35 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = ptrtoint i8* %33 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = add nsw i64 %27, %42
  store i64 %43, i64* %2, align 8
  br label %44

44:                                               ; preds = %23, %18
  %45 = load i64, i64* %2, align 8
  ret i64 %45
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
