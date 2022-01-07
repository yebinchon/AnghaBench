; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_memzero_extent_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_memzero_extent_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i64, i64, %struct.page** }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memzero_extent_buffer(%struct.extent_buffer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @offset_in_page(i64 %15)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %17, %18
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = lshr i64 %19, %20
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %29, %30
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  %39 = icmp ugt i64 %31, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %42, %43
  %45 = call i64 @offset_in_page(i64 %44)
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %49, %3
  %47 = load i64, i64* %6, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %50, i32 0, i32 2
  %52 = load %struct.page**, %struct.page*** %51, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds %struct.page*, %struct.page** %52, i64 %53
  %55 = load %struct.page*, %struct.page** %54, align 8
  store %struct.page* %55, %struct.page** %9, align 8
  %56 = load %struct.page*, %struct.page** %9, align 8
  %57 = call i32 @PageUptodate(%struct.page* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %63, %64
  %66 = call i64 @min(i64 %62, i64 %65)
  store i64 %66, i64* %7, align 8
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = call i8* @page_address(%struct.page* %67)
  store i8* %68, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @memset(i8* %71, i32 0, i64 %72)
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  br label %46

79:                                               ; preds = %46
  ret void
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
