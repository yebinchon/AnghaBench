; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_test_domain_fgsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_test_domain_fgsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_domain = type { i32, i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_domain*)* @vfio_test_domain_fgsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_test_domain_fgsp(%struct.vfio_domain* %0) #0 {
  %2 = alloca %struct.vfio_domain*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vfio_domain* %0, %struct.vfio_domain** %2, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = mul nsw i32 %7, 2
  %9 = call i32 @get_order(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* @__GFP_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.page* @alloc_pages(i32 %12, i32 %13)
  store %struct.page* %14, %struct.page** %3, align 8
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = icmp ne %struct.page* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %61

18:                                               ; preds = %1
  %19 = load %struct.vfio_domain*, %struct.vfio_domain** %2, align 8
  %20 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i32 @page_to_phys(%struct.page* %22)
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = mul nsw i32 %24, 2
  %26 = load i32, i32* @IOMMU_READ, align 4
  %27 = load i32, i32* @IOMMU_WRITE, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.vfio_domain*, %struct.vfio_domain** %2, align 8
  %30 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = call i32 @iommu_map(i32 %21, i32 0, i32 %23, i32 %25, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %18
  %37 = load %struct.vfio_domain*, %struct.vfio_domain** %2, align 8
  %38 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i64 @iommu_unmap(i32 %39, i32 0, i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.vfio_domain*, %struct.vfio_domain** %2, align 8
  %48 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i64 @iommu_unmap(i32 %49, i32 %50, i32 %51)
  br label %56

53:                                               ; preds = %36
  %54 = load %struct.vfio_domain*, %struct.vfio_domain** %2, align 8
  %55 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %46
  br label %57

57:                                               ; preds = %56, %18
  %58 = load %struct.page*, %struct.page** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @__free_pages(%struct.page* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %17
  ret void
}

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @iommu_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i64 @iommu_unmap(i32, i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
