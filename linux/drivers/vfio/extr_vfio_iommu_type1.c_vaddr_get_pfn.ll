; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vaddr_get_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vaddr_get_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64 }

@IOMMU_WRITE = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@FOLL_LONGTERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i32, i64*)* @vaddr_get_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vaddr_get_pfn(%struct.mm_struct* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca [1 x %struct.page*], align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca [1 x %struct.vm_area_struct*], align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IOMMU_WRITE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @FOLL_WRITE, align 4
  %21 = load i32, i32* %13, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %19, %4
  %24 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 0
  %26 = call i32 @down_read(i32* %25)
  %27 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.mm_struct*, %struct.mm_struct** %29, align 8
  %31 = icmp eq %struct.mm_struct* %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @FOLL_LONGTERM, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %10, i64 0, i64 0
  %38 = getelementptr inbounds [1 x %struct.vm_area_struct*], [1 x %struct.vm_area_struct*]* %12, i64 0, i64 0
  %39 = call i32 @get_user_pages(i64 %33, i32 1, i32 %36, %struct.page** %37, %struct.vm_area_struct** %38)
  store i32 %39, i32* %14, align 4
  br label %61

40:                                               ; preds = %23
  %41 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %10, i64 0, i64 0
  %45 = getelementptr inbounds [1 x %struct.vm_area_struct*], [1 x %struct.vm_area_struct*]* %12, i64 0, i64 0
  %46 = call i32 @get_user_pages_remote(i32* null, %struct.mm_struct* %41, i64 %42, i32 1, i32 %43, %struct.page** %44, %struct.vm_area_struct** %45, i32* null)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = getelementptr inbounds [1 x %struct.vm_area_struct*], [1 x %struct.vm_area_struct*]* %12, i64 0, i64 0
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %50, align 8
  %52 = call i64 @vma_is_fsdax(%struct.vm_area_struct* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  %57 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %10, i64 0, i64 0
  %58 = load %struct.page*, %struct.page** %57, align 8
  %59 = call i32 @put_page(%struct.page* %58)
  br label %60

60:                                               ; preds = %54, %49, %40
  br label %61

61:                                               ; preds = %60, %32
  %62 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %63 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %62, i32 0, i32 0
  %64 = call i32 @up_read(i32* %63)
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %10, i64 0, i64 0
  %69 = load %struct.page*, %struct.page** %68, align 8
  %70 = call i64 @page_to_pfn(%struct.page* %69)
  %71 = load i64*, i64** %9, align 8
  store i64 %70, i64* %71, align 8
  store i32 0, i32* %5, align 4
  br label %116

72:                                               ; preds = %61
  %73 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %74 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %73, i32 0, i32 0
  %75 = call i32 @down_read(i32* %74)
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @untagged_addr(i64 %76)
  store i64 %77, i64* %7, align 8
  %78 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 1
  %82 = call %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* %78, i64 %79, i64 %81)
  store %struct.vm_area_struct* %82, %struct.vm_area_struct** %11, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %84 = icmp ne %struct.vm_area_struct* %83, null
  br i1 %84, label %85, label %111

85:                                               ; preds = %72
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @VM_PFNMAP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %85
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %95 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %93, %96
  %98 = load i64, i64* @PAGE_SHIFT, align 8
  %99 = lshr i64 %97, %98
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %99, %102
  %104 = load i64*, i64** %9, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i64*, i64** %9, align 8
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @is_invalid_reserved_pfn(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %109, %92
  br label %111

111:                                              ; preds = %110, %85, %72
  %112 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %113 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %112, i32 0, i32 0
  %114 = call i32 @up_read(i32* %113)
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %111, %67
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @get_user_pages(i64, i32, i32, %struct.page**, %struct.vm_area_struct**) #1

declare dso_local i32 @get_user_pages_remote(i32*, %struct.mm_struct*, i64, i32, i32, %struct.page**, %struct.vm_area_struct**, i32*) #1

declare dso_local i64 @vma_is_fsdax(%struct.vm_area_struct*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i64 @untagged_addr(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @is_invalid_reserved_pfn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
