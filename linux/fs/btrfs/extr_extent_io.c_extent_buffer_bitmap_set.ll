; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_extent_buffer_bitmap_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_extent_buffer_bitmap_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { %struct.page** }
%struct.page = type { i32 }

@BITS_PER_BYTE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extent_buffer_bitmap_set(%struct.extent_buffer* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load i64, i64* @BITS_PER_BYTE, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @BITS_PER_BYTE, align 8
  %23 = urem i64 %21, %22
  %24 = sub i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @BITMAP_FIRST_BYTE_MASK(i64 %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @eb_bitmap_offset(%struct.extent_buffer* %28, i64 %29, i64 %30, i64* %11, i64* %12)
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %32, i32 0, i32 0
  %34 = load %struct.page**, %struct.page*** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.page*, %struct.page** %34, i64 %35
  %37 = load %struct.page*, %struct.page** %36, align 8
  store %struct.page* %37, %struct.page** %10, align 8
  %38 = load %struct.page*, %struct.page** %10, align 8
  %39 = call i32 @PageUptodate(%struct.page* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load %struct.page*, %struct.page** %10, align 8
  %45 = call i32* @page_address(%struct.page* %44)
  store i32* %45, i32** %9, align 8
  br label %46

46:                                               ; preds = %87, %4
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp uge i64 %47, %49
  br i1 %50, label %51, label %88

51:                                               ; preds = %46
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* @BITS_PER_BYTE, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* @PAGE_SIZE, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %51
  %69 = load i64, i64* %8, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  store i64 0, i64* %12, align 8
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %73 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %72, i32 0, i32 0
  %74 = load %struct.page**, %struct.page*** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %11, align 8
  %77 = getelementptr inbounds %struct.page*, %struct.page** %74, i64 %76
  %78 = load %struct.page*, %struct.page** %77, align 8
  store %struct.page* %78, %struct.page** %10, align 8
  %79 = load %struct.page*, %struct.page** %10, align 8
  %80 = call i32 @PageUptodate(%struct.page* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON(i32 %83)
  %85 = load %struct.page*, %struct.page** %10, align 8
  %86 = call i32* @page_address(%struct.page* %85)
  store i32* %86, i32** %9, align 8
  br label %87

87:                                               ; preds = %71, %68, %51
  br label %46

88:                                               ; preds = %46
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @BITMAP_LAST_BYTE_MASK(i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %91, %88
  ret void
}

declare dso_local i32 @BITMAP_FIRST_BYTE_MASK(i64) #1

declare dso_local i32 @eb_bitmap_offset(%struct.extent_buffer*, i64, i64, i64*, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @BITMAP_LAST_BYTE_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
