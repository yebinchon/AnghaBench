; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_nvgpu_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_nvgpu_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32 }
%struct.vfio_pci_region = type { %struct.vfio_pci_nvgpu_data* }
%struct.vfio_pci_nvgpu_data = type { %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@VFIO_GROUP_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_pci_device*, %struct.vfio_pci_region*)* @vfio_pci_nvgpu_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_pci_nvgpu_release(%struct.vfio_pci_device* %0, %struct.vfio_pci_region* %1) #0 {
  %3 = alloca %struct.vfio_pci_device*, align 8
  %4 = alloca %struct.vfio_pci_region*, align 8
  %5 = alloca %struct.vfio_pci_nvgpu_data*, align 8
  %6 = alloca i64, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %3, align 8
  store %struct.vfio_pci_region* %1, %struct.vfio_pci_region** %4, align 8
  %7 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %4, align 8
  %8 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %7, i32 0, i32 0
  %9 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %8, align 8
  store %struct.vfio_pci_nvgpu_data* %9, %struct.vfio_pci_nvgpu_data** %5, align 8
  %10 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %5, align 8
  %11 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %5, align 8
  %16 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %5, align 8
  %19 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @mm_iommu_put(i64 %17, i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @WARN_ON(i64 %22)
  %24 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %5, align 8
  %25 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @mmdrop(i64 %26)
  br label %28

28:                                               ; preds = %14, %2
  %29 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %5, align 8
  %30 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @VFIO_GROUP_NOTIFY, align 4
  %34 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %5, align 8
  %35 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %34, i32 0, i32 1
  %36 = call i32 @vfio_unregister_notifier(i32* %32, i32 %33, i32* %35)
  %37 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %5, align 8
  %38 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @pnv_npu2_unmap_lpar_dev(%struct.TYPE_2__* %39)
  %41 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %5, align 8
  %42 = call i32 @kfree(%struct.vfio_pci_nvgpu_data* %41)
  ret void
}

declare dso_local i64 @mm_iommu_put(i64, i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @mmdrop(i64) #1

declare dso_local i32 @vfio_unregister_notifier(i32*, i32, i32*) #1

declare dso_local i32 @pnv_npu2_unmap_lpar_dev(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.vfio_pci_nvgpu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
