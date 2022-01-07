; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_unpin_pages_remote.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_unpin_pages_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_dma = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vfio_dma*, i32, i64, i64, i32)* @vfio_unpin_pages_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vfio_unpin_pages_remote(%struct.vfio_dma* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.vfio_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.vfio_dma* %0, %struct.vfio_dma** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %39, %5
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %8, align 8
  %21 = trunc i64 %19 to i32
  %22 = load %struct.vfio_dma*, %struct.vfio_dma** %6, align 8
  %23 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @put_pfn(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i64, i64* %11, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %11, align 8
  %30 = load %struct.vfio_dma*, %struct.vfio_dma** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @vfio_find_vpfn(%struct.vfio_dma* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i64, i64* %12, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %34, %27
  br label %38

38:                                               ; preds = %37, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %13, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  br label %14

47:                                               ; preds = %14
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.vfio_dma*, %struct.vfio_dma** %6, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %11, align 8
  %54 = sub nsw i64 %52, %53
  %55 = call i32 @vfio_lock_acct(%struct.vfio_dma* %51, i64 %54, i32 1)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i64, i64* %11, align 8
  ret i64 %57
}

declare dso_local i64 @put_pfn(i32, i32) #1

declare dso_local i64 @vfio_find_vpfn(%struct.vfio_dma*, i32) #1

declare dso_local i32 @vfio_lock_acct(%struct.vfio_dma*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
