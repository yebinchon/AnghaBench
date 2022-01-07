; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_nvgpu_mmap_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_nvgpu_mmap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32, %struct.vfio_pci_region* }
%struct.vfio_pci_region = type { %struct.vfio_pci_nvgpu_data* }
%struct.vfio_pci_nvgpu_data = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@VFIO_PCI_OFFSET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @vfio_pci_nvgpu_mmap_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_nvgpu_mmap_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vfio_pci_region*, align 8
  %6 = alloca %struct.vfio_pci_nvgpu_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %11 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %11, i32 0, i32 1
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  store %struct.vm_area_struct* %13, %struct.vm_area_struct** %4, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 2
  %16 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %15, align 8
  store %struct.vfio_pci_region* %16, %struct.vfio_pci_region** %5, align 8
  %17 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %5, align 8
  %18 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %17, i32 0, i32 0
  %19 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %18, align 8
  store %struct.vfio_pci_nvgpu_data* %19, %struct.vfio_pci_nvgpu_data** %6, align 8
  %20 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %22, %25
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = lshr i32 %26, %27
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %6, align 8
  %31 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = lshr i32 %32, %33
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %8, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VFIO_PCI_OFFSET_SHIFT, align 4
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = sub i32 %39, %40
  %42 = shl i32 1, %41
  %43 = sub i32 %42, 1
  %44 = and i32 %38, %43
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %46, %47
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %10, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %52 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %53 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @vmf_insert_pfn(%struct.vm_area_struct* %51, i32 %54, i64 %55)
  store i32 %56, i32* %3, align 4
  %57 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %6, align 8
  %58 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = zext i32 %61 to i64
  %63 = shl i64 %60, %62
  %64 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %65 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @trace_vfio_pci_nvgpu_mmap_fault(i32 %59, i64 %63, i32 %66, i32 %67)
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @vmf_insert_pfn(%struct.vm_area_struct*, i32, i64) #1

declare dso_local i32 @trace_vfio_pci_nvgpu_mmap_fault(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
