; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_cma_heap.c_ion_cma_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_cma_heap.c_ion_cma_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_heap = type { i32 }
%struct.ion_buffer = type { %struct.sg_table*, %struct.page* }
%struct.sg_table = type { i32 }
%struct.page = type { i32 }
%struct.ion_cma_heap = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@CONFIG_CMA_ALIGNMENT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ion_heap*, %struct.ion_buffer*, i64, i64)* @ion_cma_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ion_cma_allocate(%struct.ion_heap* %0, %struct.ion_buffer* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ion_heap*, align 8
  %7 = alloca %struct.ion_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ion_cma_heap*, align 8
  %11 = alloca %struct.sg_table*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i8*, align 8
  store %struct.ion_heap* %0, %struct.ion_heap** %6, align 8
  store %struct.ion_buffer* %1, %struct.ion_buffer** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.ion_heap*, %struct.ion_heap** %6, align 8
  %21 = call %struct.ion_cma_heap* @to_cma_heap(%struct.ion_heap* %20)
  store %struct.ion_cma_heap* %21, %struct.ion_cma_heap** %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @PAGE_ALIGN(i64 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %13, align 8
  %28 = call i64 @get_order(i64 %27)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @CONFIG_CMA_ALIGNMENT, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i64, i64* @CONFIG_CMA_ALIGNMENT, align 8
  store i64 %33, i64* %15, align 8
  br label %34

34:                                               ; preds = %32, %4
  %35 = load %struct.ion_cma_heap*, %struct.ion_cma_heap** %10, align 8
  %36 = getelementptr inbounds %struct.ion_cma_heap, %struct.ion_cma_heap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %15, align 8
  %40 = call %struct.page* @cma_alloc(i32 %37, i64 %38, i64 %39, i32 0)
  store %struct.page* %40, %struct.page** %12, align 8
  %41 = load %struct.page*, %struct.page** %12, align 8
  %42 = icmp ne %struct.page* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %112

46:                                               ; preds = %34
  %47 = load %struct.page*, %struct.page** %12, align 8
  %48 = call i64 @PageHighMem(%struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load i64, i64* %14, align 8
  store i64 %51, i64* %17, align 8
  %52 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %52, %struct.page** %18, align 8
  br label %53

53:                                               ; preds = %56, %50
  %54 = load i64, i64* %17, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.page*, %struct.page** %18, align 8
  %58 = call i8* @kmap_atomic(%struct.page* %57)
  store i8* %58, i8** %19, align 8
  %59 = load i8*, i8** %19, align 8
  %60 = load i64, i64* @PAGE_SIZE, align 8
  %61 = call i32 @memset(i8* %59, i32 0, i64 %60)
  %62 = load i8*, i8** %19, align 8
  %63 = call i32 @kunmap_atomic(i8* %62)
  %64 = load %struct.page*, %struct.page** %18, align 8
  %65 = getelementptr inbounds %struct.page, %struct.page* %64, i32 1
  store %struct.page* %65, %struct.page** %18, align 8
  %66 = load i64, i64* %17, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %17, align 8
  br label %53

68:                                               ; preds = %53
  br label %74

69:                                               ; preds = %46
  %70 = load %struct.page*, %struct.page** %12, align 8
  %71 = call i8* @page_address(%struct.page* %70)
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @memset(i8* %71, i32 0, i64 %72)
  br label %74

74:                                               ; preds = %69, %68
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.sg_table* @kmalloc(i32 4, i32 %75)
  store %struct.sg_table* %76, %struct.sg_table** %11, align 8
  %77 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %78 = icmp ne %struct.sg_table* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %103

80:                                               ; preds = %74
  %81 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32 @sg_alloc_table(%struct.sg_table* %81, i32 1, i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %100

87:                                               ; preds = %80
  %88 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %89 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.page*, %struct.page** %12, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @sg_set_page(i32 %90, %struct.page* %91, i64 %92, i32 0)
  %94 = load %struct.page*, %struct.page** %12, align 8
  %95 = load %struct.ion_buffer*, %struct.ion_buffer** %7, align 8
  %96 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %95, i32 0, i32 1
  store %struct.page* %94, %struct.page** %96, align 8
  %97 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %98 = load %struct.ion_buffer*, %struct.ion_buffer** %7, align 8
  %99 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %98, i32 0, i32 0
  store %struct.sg_table* %97, %struct.sg_table** %99, align 8
  store i32 0, i32* %5, align 4
  br label %112

100:                                              ; preds = %86
  %101 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %102 = call i32 @kfree(%struct.sg_table* %101)
  br label %103

103:                                              ; preds = %100, %79
  %104 = load %struct.ion_cma_heap*, %struct.ion_cma_heap** %10, align 8
  %105 = getelementptr inbounds %struct.ion_cma_heap, %struct.ion_cma_heap* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.page*, %struct.page** %12, align 8
  %108 = load i64, i64* %14, align 8
  %109 = call i32 @cma_release(i32 %106, %struct.page* %107, i64 %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %103, %87, %43
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.ion_cma_heap* @to_cma_heap(%struct.ion_heap*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local %struct.page* @cma_alloc(i32, i64, i64, i32) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.sg_table* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #1

declare dso_local i32 @sg_set_page(i32, %struct.page*, i64, i32) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

declare dso_local i32 @cma_release(i32, %struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
