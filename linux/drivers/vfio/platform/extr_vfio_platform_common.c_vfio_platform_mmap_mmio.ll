; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_mmap_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_mmap_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.vfio_platform_region = type { i64, i64 }

@VFIO_PLATFORM_OFFSET_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.vm_area_struct*)* @vfio_platform_mmap_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_mmap_mmio(i64 %0, i64 %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_platform_region, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = bitcast %struct.vfio_platform_region* %5 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %6, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VFIO_PLATFORM_OFFSET_SHIFT, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = sub nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = sub i32 %28, 1
  %30 = and i32 %22, %29
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = shl i64 %32, %33
  store i64 %34, i64* %9, align 8
  %35 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %3
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %40, %41
  %43 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %77

49:                                               ; preds = %39
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pgprot_noncached(i32 %52)
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %5, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = ashr i64 %57, %58
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @remap_pfn_range(%struct.vm_area_struct* %65, i64 %68, i32 %71, i64 %72, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %49, %46
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
