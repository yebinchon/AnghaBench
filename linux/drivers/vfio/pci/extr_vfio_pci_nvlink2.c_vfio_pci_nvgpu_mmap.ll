; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_nvgpu_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_nvgpu_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vfio_pci_device = type { i32 }
%struct.vfio_pci_region = type { %struct.vfio_pci_nvgpu_data* }
%struct.vfio_pci_nvgpu_data = type { i64, i64, i32, i32, %struct.TYPE_3__* }
%struct.vm_area_struct = type { i64, i64, i32*, i32, %struct.vfio_pci_region* }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@vfio_pci_nvgpu_mmap_vmops = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, %struct.vfio_pci_region*, %struct.vm_area_struct*)* @vfio_pci_nvgpu_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_nvgpu_mmap(%struct.vfio_pci_device* %0, %struct.vfio_pci_region* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_pci_device*, align 8
  %6 = alloca %struct.vfio_pci_region*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfio_pci_nvgpu_data*, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %5, align 8
  store %struct.vfio_pci_region* %1, %struct.vfio_pci_region** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %10 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %6, align 8
  %11 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %10, i32 0, i32 0
  %12 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %11, align 8
  store %struct.vfio_pci_nvgpu_data* %12, %struct.vfio_pci_nvgpu_data** %9, align 8
  %13 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %14 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %95

20:                                               ; preds = %3
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %29 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %95

35:                                               ; preds = %20
  %36 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %6, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 4
  store %struct.vfio_pci_region* %36, %struct.vfio_pci_region** %38, align 8
  %39 = load i32, i32* @VM_PFNMAP, align 4
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 2
  store i32* @vfio_pci_nvgpu_mmap_vmops, i32** %45, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %50 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %55 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %54, i32 0, i32 4
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %55, align 8
  %56 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %57 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %56, i32 0, i32 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @atomic_inc(i32* %59)
  %61 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %62 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %65 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %68 = call i32 @vma_pages(%struct.vm_area_struct* %67)
  %69 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %70 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %73 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %72, i32 0, i32 3
  %74 = call i64 @mm_iommu_newdev(%struct.TYPE_3__* %63, i64 %66, i32 %68, i32 %71, i32* %73)
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %77 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %80 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.vfio_pci_nvgpu_data*, %struct.vfio_pci_nvgpu_data** %9, align 8
  %83 = getelementptr inbounds %struct.vfio_pci_nvgpu_data, %struct.vfio_pci_nvgpu_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @trace_vfio_pci_nvgpu_mmap(i32 %78, i32 %81, i64 %84, i64 %91, i32 %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %35, %32, %17
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @mm_iommu_newdev(%struct.TYPE_3__*, i64, i32, i32, i32*) #1

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @trace_vfio_pci_nvgpu_mmap(i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
