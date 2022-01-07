; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_hwpoison_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_hwpoison_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmem_device = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmem_device*, i32, i32)* @hwpoison_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwpoison_clear(%struct.pmem_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pmem_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.pmem_device* %0, %struct.pmem_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pmem_device*, %struct.pmem_device** %4, align 8
  %12 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @is_vmalloc_addr(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %42

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @PHYS_PFN(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @PHYS_PFN(i32 %21)
  %23 = add i64 %20, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %39, %17
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = call %struct.page* @pfn_to_page(i64 %30)
  store %struct.page* %31, %struct.page** %10, align 8
  %32 = load %struct.page*, %struct.page** %10, align 8
  %33 = call i64 @test_and_clear_pmem_poison(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @clear_mce_nospec(i64 %36)
  br label %38

38:                                               ; preds = %35, %29
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  br label %25

42:                                               ; preds = %16, %25
  ret void
}

declare dso_local i64 @is_vmalloc_addr(i32) #1

declare dso_local i64 @PHYS_PFN(i32) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @test_and_clear_pmem_poison(%struct.page*) #1

declare dso_local i32 @clear_mce_nospec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
