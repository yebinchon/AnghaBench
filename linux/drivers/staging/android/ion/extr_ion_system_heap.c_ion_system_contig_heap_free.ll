; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c_ion_system_contig_heap_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c_ion_system_contig_heap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_buffer = type { i32, %struct.sg_table* }
%struct.sg_table = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ion_buffer*)* @ion_system_contig_heap_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ion_system_contig_heap_free(%struct.ion_buffer* %0) #0 {
  %2 = alloca %struct.ion_buffer*, align 8
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ion_buffer* %0, %struct.ion_buffer** %2, align 8
  %7 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %7, i32 0, i32 1
  %9 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  store %struct.sg_table* %9, %struct.sg_table** %3, align 8
  %10 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  %11 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.page* @sg_page(i32 %12)
  store %struct.page* %13, %struct.page** %4, align 8
  %14 = load %struct.ion_buffer*, %struct.ion_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @PAGE_ALIGN(i32 %16)
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %29, %1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %25, i64 %26
  %28 = call i32 @__free_page(%struct.page* %27)
  br label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %20

32:                                               ; preds = %20
  %33 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  %34 = call i32 @sg_free_table(%struct.sg_table* %33)
  %35 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  %36 = call i32 @kfree(%struct.sg_table* %35)
  ret void
}

declare dso_local %struct.page* @sg_page(i32) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
