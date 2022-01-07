; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_npu2_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_npu2_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32 }
%struct.vfio_pci_region = type { %struct.vfio_pci_npu2_data* }
%struct.vfio_pci_npu2_data = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, %struct.vfio_pci_region*, %struct.vm_area_struct*)* @vfio_pci_npu2_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_npu2_mmap(%struct.vfio_pci_device* %0, %struct.vfio_pci_region* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_pci_device*, align 8
  %6 = alloca %struct.vfio_pci_region*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfio_pci_npu2_data*, align 8
  %10 = alloca i64, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %5, align 8
  store %struct.vfio_pci_region* %1, %struct.vfio_pci_region** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %11 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %6, align 8
  %12 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %11, i32 0, i32 0
  %13 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %12, align 8
  store %struct.vfio_pci_npu2_data* %13, %struct.vfio_pci_npu2_data** %9, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %72

27:                                               ; preds = %3
  %28 = load i32, i32* @VM_PFNMAP, align 4
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pgprot_noncached(i32 %35)
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %9, align 8
  %44 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @remap_pfn_range(%struct.vm_area_struct* %39, i64 %42, i32 %47, i64 %48, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %54 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %9, align 8
  %57 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %64, %67
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @trace_vfio_pci_npu2_mmap(i32 %55, i32 %58, i64 %61, i64 %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %27, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

declare dso_local i32 @trace_vfio_pci_npu2_mmap(i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
