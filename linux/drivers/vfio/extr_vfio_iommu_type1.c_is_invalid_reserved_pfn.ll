; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_is_invalid_reserved_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_is_invalid_reserved_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @is_invalid_reserved_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_invalid_reserved_pfn(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @pfn_valid(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call %struct.page* @pfn_to_page(i64 %11)
  store %struct.page* %12, %struct.page** %5, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call %struct.page* @compound_head(%struct.page* %13)
  store %struct.page* %14, %struct.page** %6, align 8
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = call i32 @PageReserved(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = icmp ne %struct.page* %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %10
  %25 = call i32 (...) @smp_rmb()
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i64 @PageTail(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %10
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i32 @PageReserved(%struct.page* %33)
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @PageReserved(%struct.page*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @PageTail(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
