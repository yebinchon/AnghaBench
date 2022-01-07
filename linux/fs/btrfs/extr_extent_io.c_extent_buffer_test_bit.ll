; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_extent_buffer_test_bit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_extent_buffer_test_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { %struct.page** }
%struct.page = type { i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extent_buffer_test_bit(%struct.extent_buffer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @eb_bitmap_offset(%struct.extent_buffer* %11, i64 %12, i64 %13, i64* %9, i64* %10)
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %15, i32 0, i32 0
  %17 = load %struct.page**, %struct.page*** %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.page*, %struct.page** %17, i64 %18
  %20 = load %struct.page*, %struct.page** %19, align 8
  store %struct.page* %20, %struct.page** %8, align 8
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = call i32 @PageUptodate(%struct.page* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = call i64* @page_address(%struct.page* %27)
  store i64* %28, i64** %7, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @BITS_PER_BYTE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = and i64 %33, %36
  %38 = lshr i64 %32, %37
  %39 = and i64 1, %38
  %40 = trunc i64 %39 to i32
  ret i32 %40
}

declare dso_local i32 @eb_bitmap_offset(%struct.extent_buffer*, i64, i64, i64*, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
