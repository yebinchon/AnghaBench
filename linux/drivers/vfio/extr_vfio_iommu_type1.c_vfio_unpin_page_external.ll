; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_unpin_page_external.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_unpin_page_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_dma = type { i32 }
%struct.vfio_pfn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_dma*, i32, i32)* @vfio_unpin_page_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_unpin_page_external(%struct.vfio_dma* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfio_pfn*, align 8
  store %struct.vfio_dma* %0, %struct.vfio_dma** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.vfio_pfn* @vfio_find_vpfn(%struct.vfio_dma* %10, i32 %11)
  store %struct.vfio_pfn* %12, %struct.vfio_pfn** %9, align 8
  %13 = load %struct.vfio_pfn*, %struct.vfio_pfn** %9, align 8
  %14 = icmp ne %struct.vfio_pfn* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %18 = load %struct.vfio_pfn*, %struct.vfio_pfn** %9, align 8
  %19 = call i32 @vfio_iova_put_vfio_pfn(%struct.vfio_dma* %17, %struct.vfio_pfn* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @vfio_lock_acct(%struct.vfio_dma* %23, i32 %25, i32 1)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.vfio_pfn* @vfio_find_vpfn(%struct.vfio_dma*, i32) #1

declare dso_local i32 @vfio_iova_put_vfio_pfn(%struct.vfio_dma*, %struct.vfio_pfn*) #1

declare dso_local i32 @vfio_lock_acct(%struct.vfio_dma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
