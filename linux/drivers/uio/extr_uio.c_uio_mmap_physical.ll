; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_mmap_physical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_mmap_physical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32, i32*, %struct.uio_device* }
%struct.uio_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uio_mem* }
%struct.uio_mem = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@uio_physical_vm_ops = common dso_local global i32 0, align 4
@UIO_MEM_PHYS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*)* @uio_mmap_physical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_mmap_physical(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.uio_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uio_mem*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 4
  %9 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  store %struct.uio_device* %9, %struct.uio_device** %4, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %11 = call i32 @uio_find_mem_index(%struct.vm_area_struct* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %94

17:                                               ; preds = %1
  %18 = load %struct.uio_device*, %struct.uio_device** %4, align 8
  %19 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.uio_mem*, %struct.uio_mem** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %22, i64 %24
  store %struct.uio_mem* %25, %struct.uio_mem** %6, align 8
  %26 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %27 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PAGE_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %94

36:                                               ; preds = %17
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %45 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %94

51:                                               ; preds = %36
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 3
  store i32* @uio_physical_vm_ops, i32** %53, align 8
  %54 = load %struct.uio_device*, %struct.uio_device** %4, align 8
  %55 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.uio_mem*, %struct.uio_mem** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %58, i64 %60
  %62 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UIO_MEM_PHYS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %51
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pgprot_noncached(i32 %69)
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %66, %51
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %79 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PAGE_SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @remap_pfn_range(%struct.vm_area_struct* %74, i64 %77, i32 %82, i64 %89, i32 %92)
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %73, %48, %33, %14
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @uio_find_mem_index(%struct.vm_area_struct*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
