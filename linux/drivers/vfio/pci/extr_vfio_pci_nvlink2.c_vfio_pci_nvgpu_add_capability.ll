; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_nvgpu_add_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_nvgpu_add_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32 }
%struct.vfio_pci_region = type { %struct.vfio_pci_nvgpu_data* }
%struct.vfio_pci_nvgpu_data = type { i32 }
%struct.vfio_info_cap = type { i32 }
%struct.vfio_region_info_cap_nvlink2_ssatgt = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@VFIO_REGION_INFO_CAP_NVLINK2_SSATGT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, %struct.vfio_pci_region*, %struct.vfio_info_cap*)* @vfio_pci_nvgpu_add_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_nvgpu_add_capability(%struct.vfio_pci_device* %0, %struct.vfio_pci_region* %1, %struct.vfio_info_cap* %2) #0 {
  %4 = alloca %struct.vfio_pci_device*, align 8
  %5 = alloca %struct.vfio_pci_region*, align 8
  %6 = alloca %struct.vfio_info_cap*, align 8
  %7 = alloca %struct.vfio_pci_nvgpu_data*, align 8
  %8 = alloca %struct.vfio_region_info_cap_nvlink2_ssatgt, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %4, align 8
  store %struct.vfio_pci_region* %1, %struct.vfio_pci_region** %5, align 8
  store %struct.vfio_info_cap* %2, %struct.vfio_info_cap** %6, align 8
  %9 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %5, align 8
  %10 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %9, i32 0, i32 0
  %11 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %10, align 8
  store %struct.vfio_pci_nvgpu_data* %11, %struct.vfio_pci_nvgpu_data** %7, align 8
  %12 = getelementptr inbounds %struct.vfio_region_info_cap_nvlink2_ssatgt, %struct.vfio_region_info_cap_nvlink2_ssatgt* %8, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %15 = load i32, i32* @VFIO_REGION_INFO_CAP_NVLINK2_SSATGT, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.vfio_region_info_cap_nvlink2_ssatgt, %struct.vfio_region_info_cap_nvlink2_ssatgt* %8, i32 0, i32 1
  %17 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %7, align 8
  %18 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %6, align 8
  %21 = getelementptr inbounds %struct.vfio_region_info_cap_nvlink2_ssatgt, %struct.vfio_region_info_cap_nvlink2_ssatgt* %8, i32 0, i32 0
  %22 = call i32 @vfio_info_add_capability(%struct.vfio_info_cap* %20, %struct.TYPE_2__* %21, i32 12)
  ret i32 %22
}

declare dso_local i32 @vfio_info_add_capability(%struct.vfio_info_cap*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
