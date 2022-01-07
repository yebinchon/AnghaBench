; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_eb_bitmap_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_eb_bitmap_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_buffer*, i64, i64, i64*, i64*)* @eb_bitmap_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eb_bitmap_offset(%struct.extent_buffer* %0, i64 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @offset_in_page(i64 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @BIT_BYTE(i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* %12, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @offset_in_page(i64 %29)
  %31 = load i64*, i64** %10, align 8
  store i64 %30, i64* %31, align 8
  ret void
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i64 @BIT_BYTE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
