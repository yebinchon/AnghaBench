; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_setup_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_setup_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.virtio_device = type { i32 }
%struct.virtio_pci_device = type { %struct.virtio_pci_vq_info**, i32, i32, %struct.virtqueue* (%struct.virtio_pci_device*, %struct.virtio_pci_vq_info*, i32, void (%struct.virtqueue*)*, i8*, i32, i32)* }
%struct.virtio_pci_vq_info = type { i32, %struct.virtqueue* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtqueue* (%struct.virtio_device*, i32, void (%struct.virtqueue*)*, i8*, i32, i32)* @vp_setup_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtqueue* @vp_setup_vq(%struct.virtio_device* %0, i32 %1, void (%struct.virtqueue*)* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.virtqueue*, align 8
  %8 = alloca %struct.virtio_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.virtqueue*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.virtio_pci_device*, align 8
  %15 = alloca %struct.virtio_pci_vq_info*, align 8
  %16 = alloca %struct.virtqueue*, align 8
  %17 = alloca i64, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store void (%struct.virtqueue*)* %2, void (%struct.virtqueue*)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %19 = call %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device* %18)
  store %struct.virtio_pci_device* %19, %struct.virtio_pci_device** %14, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.virtio_pci_vq_info* @kmalloc(i32 16, i32 %20)
  store %struct.virtio_pci_vq_info* %21, %struct.virtio_pci_vq_info** %15, align 8
  %22 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %15, align 8
  %23 = icmp ne %struct.virtio_pci_vq_info* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.virtqueue* @ERR_PTR(i32 %26)
  store %struct.virtqueue* %27, %struct.virtqueue** %7, align 8
  br label %81

28:                                               ; preds = %6
  %29 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %14, align 8
  %30 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %29, i32 0, i32 3
  %31 = load %struct.virtqueue* (%struct.virtio_pci_device*, %struct.virtio_pci_vq_info*, i32, void (%struct.virtqueue*)*, i8*, i32, i32)*, %struct.virtqueue* (%struct.virtio_pci_device*, %struct.virtio_pci_vq_info*, i32, void (%struct.virtqueue*)*, i8*, i32, i32)** %30, align 8
  %32 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %14, align 8
  %33 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %15, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call %struct.virtqueue* %31(%struct.virtio_pci_device* %32, %struct.virtio_pci_vq_info* %33, i32 %34, void (%struct.virtqueue*)* %35, i8* %36, i32 %37, i32 %38)
  store %struct.virtqueue* %39, %struct.virtqueue** %16, align 8
  %40 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %41 = call i64 @IS_ERR(%struct.virtqueue* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %77

44:                                               ; preds = %28
  %45 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %46 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %15, align 8
  %47 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %46, i32 0, i32 1
  store %struct.virtqueue* %45, %struct.virtqueue** %47, align 8
  %48 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %10, align 8
  %49 = icmp ne void (%struct.virtqueue*)* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %14, align 8
  %52 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %51, i32 0, i32 1
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %15, align 8
  %56 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %55, i32 0, i32 0
  %57 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %14, align 8
  %58 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %57, i32 0, i32 2
  %59 = call i32 @list_add(i32* %56, i32* %58)
  %60 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %14, align 8
  %61 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %60, i32 0, i32 1
  %62 = load i64, i64* %17, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %68

64:                                               ; preds = %44
  %65 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %15, align 8
  %66 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %65, i32 0, i32 0
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  br label %68

68:                                               ; preds = %64, %50
  %69 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %15, align 8
  %70 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %14, align 8
  %71 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %70, i32 0, i32 0
  %72 = load %struct.virtio_pci_vq_info**, %struct.virtio_pci_vq_info*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %72, i64 %74
  store %struct.virtio_pci_vq_info* %69, %struct.virtio_pci_vq_info** %75, align 8
  %76 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  store %struct.virtqueue* %76, %struct.virtqueue** %7, align 8
  br label %81

77:                                               ; preds = %43
  %78 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %15, align 8
  %79 = call i32 @kfree(%struct.virtio_pci_vq_info* %78)
  %80 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  store %struct.virtqueue* %80, %struct.virtqueue** %7, align 8
  br label %81

81:                                               ; preds = %77, %68, %24
  %82 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  ret %struct.virtqueue* %82
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device*) #1

declare dso_local %struct.virtio_pci_vq_info* @kmalloc(i32, i32) #1

declare dso_local %struct.virtqueue* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.virtqueue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.virtio_pci_vq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
