; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_set_vq_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_set_vq_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i64, i32, %struct.virtio_device* }
%struct.virtio_device = type { i32 }
%struct.cpumask = type { i32 }
%struct.virtio_pci_device = type { i32, %struct.cpumask**, i64, %struct.virtio_pci_vq_info** }
%struct.virtio_pci_vq_info = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vp_set_vq_affinity(%struct.virtqueue* %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca %struct.virtio_device*, align 8
  %7 = alloca %struct.virtio_pci_device*, align 8
  %8 = alloca %struct.virtio_pci_vq_info*, align 8
  %9 = alloca %struct.cpumask*, align 8
  %10 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %11 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %12 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %11, i32 0, i32 2
  %13 = load %struct.virtio_device*, %struct.virtio_device** %12, align 8
  store %struct.virtio_device* %13, %struct.virtio_device** %6, align 8
  %14 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %15 = call %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device* %14)
  store %struct.virtio_pci_device* %15, %struct.virtio_pci_device** %7, align 8
  %16 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %7, align 8
  %17 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %16, i32 0, i32 3
  %18 = load %struct.virtio_pci_vq_info**, %struct.virtio_pci_vq_info*** %17, align 8
  %19 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %20 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %18, i64 %21
  %23 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %22, align 8
  store %struct.virtio_pci_vq_info* %23, %struct.virtio_pci_vq_info** %8, align 8
  %24 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %25 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %66

31:                                               ; preds = %2
  %32 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %7, align 8
  %33 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %7, align 8
  %38 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %37, i32 0, i32 1
  %39 = load %struct.cpumask**, %struct.cpumask*** %38, align 8
  %40 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %8, align 8
  %41 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.cpumask*, %struct.cpumask** %39, i64 %42
  %44 = load %struct.cpumask*, %struct.cpumask** %43, align 8
  store %struct.cpumask* %44, %struct.cpumask** %9, align 8
  %45 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %7, align 8
  %46 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %8, align 8
  %49 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pci_irq_vector(i32 %47, i64 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %53 = icmp ne %struct.cpumask* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %36
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @irq_set_affinity_hint(i32 %55, %struct.cpumask* null)
  br label %64

57:                                               ; preds = %36
  %58 = load %struct.cpumask*, %struct.cpumask** %9, align 8
  %59 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %60 = call i32 @cpumask_copy(%struct.cpumask* %58, %struct.cpumask* %59)
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.cpumask*, %struct.cpumask** %9, align 8
  %63 = call i32 @irq_set_affinity_hint(i32 %61, %struct.cpumask* %62)
  br label %64

64:                                               ; preds = %57, %54
  br label %65

65:                                               ; preds = %64, %31
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %28
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device*) #1

declare dso_local i32 @pci_irq_vector(i32, i64) #1

declare dso_local i32 @irq_set_affinity_hint(i32, %struct.cpumask*) #1

declare dso_local i32 @cpumask_copy(%struct.cpumask*, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
