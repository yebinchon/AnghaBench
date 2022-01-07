; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_swiotlb-xen.c_xen_swiotlb_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_swiotlb-xen.c_xen_swiotlb_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IO_TLB_SEGSIZE = common dso_local global i32 0, align 4
@IO_TLB_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MAX_DMA_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @xen_swiotlb_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_swiotlb_fixup(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @virt_to_phys(i8* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i32, i32* @IO_TLB_SEGSIZE, align 4
  %17 = load i32, i32* @IO_TLB_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = call i32 @get_order(i32 %18)
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %62, %3
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %23, %25
  %27 = load i32, i32* @IO_TLB_SEGSIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @min(i64 %26, i64 %28)
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %51, %22
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @IO_TLB_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @IO_TLB_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @get_order(i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @xen_create_contiguous_region(i64 %36, i32 %40, i32 %41, i32* %11)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @MAX_DMA_BITS, align 4
  %50 = icmp slt i32 %47, %49
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ %50, %46 ]
  br i1 %52, label %30, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %68

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %7, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %22, label %67

67:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @xen_create_contiguous_region(i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
