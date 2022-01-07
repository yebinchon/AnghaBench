; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_extent_buffer_bitmap_clear.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_extent_buffer_bitmap_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { %struct.page** }
%struct.page = type { i32 }

@BITS_PER_BYTE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extent_buffer_bitmap_clear(%struct.extent_buffer* %0, i64 %1, i64 %2, i64 %3) #0 {
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

46:                                               ; preds = %88, %4
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp uge i64 %47, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %46
  %52 = load i32, i32* %15, align 4
  %53 = xor i32 %52, -1
  %54 = load i32*, i32** %9, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* @BITS_PER_BYTE, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %51
  %70 = load i64, i64* %8, align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  store i64 0, i64* %12, align 8
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %73, i32 0, i32 0
  %75 = load %struct.page**, %struct.page*** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %11, align 8
  %78 = getelementptr inbounds %struct.page*, %struct.page** %75, i64 %77
  %79 = load %struct.page*, %struct.page** %78, align 8
  store %struct.page* %79, %struct.page** %10, align 8
  %80 = load %struct.page*, %struct.page** %10, align 8
  %81 = call i32 @PageUptodate(%struct.page* %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @WARN_ON(i32 %84)
  %86 = load %struct.page*, %struct.page** %10, align 8
  %87 = call i32* @page_address(%struct.page* %86)
  store i32* %87, i32** %9, align 8
  br label %88

88:                                               ; preds = %72, %69, %51
  br label %46

89:                                               ; preds = %46
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @BITMAP_LAST_BYTE_MASK(i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = xor i32 %97, -1
  %99 = load i32*, i32** %9, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %98
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %92, %89
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
