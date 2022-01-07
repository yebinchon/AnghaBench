; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_page_is_contained.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_page_is_contained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i32)* @tce_page_is_contained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tce_page_is_contained(%struct.mm_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @mm_iommu_is_devmem(%struct.mm_struct* %10, i64 %11, i32 %12, i64* %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = shl i64 1, %18
  %20 = icmp eq i64 %16, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  %26 = call %struct.page* @pfn_to_page(i64 %25)
  store %struct.page* %26, %struct.page** %8, align 8
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = call i32 @compound_head(%struct.page* %27)
  %29 = call i32 @page_shift(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp uge i32 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %22, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @mm_iommu_is_devmem(%struct.mm_struct*, i64, i32, i64*) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @page_shift(i32) #1

declare dso_local i32 @compound_head(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
