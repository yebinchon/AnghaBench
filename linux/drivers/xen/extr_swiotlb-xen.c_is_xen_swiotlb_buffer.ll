; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_swiotlb-xen.c_is_xen_swiotlb_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_swiotlb-xen.c_is_xen_swiotlb_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xen_io_tlb_start = common dso_local global i32 0, align 4
@xen_io_tlb_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_xen_swiotlb_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_xen_swiotlb_buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @XEN_PFN_DOWN(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @bfn_to_local_pfn(i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @XEN_PFN_PHYS(i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @PFN_DOWN(i64 %13)
  %15 = call i64 @pfn_valid(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @xen_io_tlb_start, align 4
  %20 = call i64 @virt_to_phys(i32 %19)
  %21 = icmp sge i64 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @xen_io_tlb_end, align 4
  %25 = call i64 @virt_to_phys(i32 %24)
  %26 = icmp slt i64 %23, %25
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @XEN_PFN_DOWN(i32) #1

declare dso_local i64 @bfn_to_local_pfn(i64) #1

declare dso_local i64 @XEN_PFN_PHYS(i64) #1

declare dso_local i64 @pfn_valid(i32) #1

declare dso_local i32 @PFN_DOWN(i64) #1

declare dso_local i64 @virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
