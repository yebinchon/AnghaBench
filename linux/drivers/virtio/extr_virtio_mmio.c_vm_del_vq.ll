; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_vm_del_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_vm_del_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, %struct.virtio_mmio_vq_info*, i32 }
%struct.virtio_mmio_vq_info = type { i32 }
%struct.virtio_mmio_device = type { i32, i64, i32 }

@VIRTIO_MMIO_QUEUE_SEL = common dso_local global i64 0, align 8
@VIRTIO_MMIO_QUEUE_PFN = common dso_local global i64 0, align 8
@VIRTIO_MMIO_QUEUE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @vm_del_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_del_vq(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_mmio_device*, align 8
  %4 = alloca %struct.virtio_mmio_vq_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %8 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.virtio_mmio_device* @to_virtio_mmio_device(i32 %9)
  store %struct.virtio_mmio_device* %10, %struct.virtio_mmio_device** %3, align 8
  %11 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %12 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %11, i32 0, i32 1
  %13 = load %struct.virtio_mmio_vq_info*, %struct.virtio_mmio_vq_info** %12, align 8
  store %struct.virtio_mmio_vq_info* %13, %struct.virtio_mmio_vq_info** %4, align 8
  %14 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %15 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %3, align 8
  %18 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %17, i32 0, i32 2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.virtio_mmio_vq_info*, %struct.virtio_mmio_vq_info** %4, align 8
  %22 = getelementptr inbounds %struct.virtio_mmio_vq_info, %struct.virtio_mmio_vq_info* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %3, align 8
  %25 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %24, i32 0, i32 2
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %3, align 8
  %30 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VIRTIO_MMIO_QUEUE_SEL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %3, align 8
  %36 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %3, align 8
  %41 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VIRTIO_MMIO_QUEUE_PFN, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 0, i64 %44)
  br label %60

46:                                               ; preds = %1
  %47 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %3, align 8
  %48 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VIRTIO_MMIO_QUEUE_READY, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 0, i64 %51)
  %53 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %3, align 8
  %54 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VIRTIO_MMIO_QUEUE_READY, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = call i32 @WARN_ON(i32 %58)
  br label %60

60:                                               ; preds = %46, %39
  %61 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %62 = call i32 @vring_del_virtqueue(%struct.virtqueue* %61)
  %63 = load %struct.virtio_mmio_vq_info*, %struct.virtio_mmio_vq_info** %4, align 8
  %64 = call i32 @kfree(%struct.virtio_mmio_vq_info* %63)
  ret void
}

declare dso_local %struct.virtio_mmio_device* @to_virtio_mmio_device(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

declare dso_local i32 @kfree(%struct.virtio_mmio_vq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
