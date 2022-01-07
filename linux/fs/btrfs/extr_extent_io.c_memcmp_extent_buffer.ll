; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_memcmp_extent_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_memcmp_extent_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i64, i64, %struct.page** }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcmp_extent_buffer(%struct.extent_buffer* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %13, align 8
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @offset_in_page(i64 %20)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = icmp ugt i64 %36, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %47, %48
  %50 = call i64 @offset_in_page(i64 %49)
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %77, %4
  %52 = load i64, i64* %8, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %56 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %55, i32 0, i32 2
  %57 = load %struct.page**, %struct.page*** %56, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds %struct.page*, %struct.page** %57, i64 %58
  %60 = load %struct.page*, %struct.page** %59, align 8
  store %struct.page* %60, %struct.page** %11, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub i64 %62, %63
  %65 = call i64 @min(i64 %61, i64 %64)
  store i64 %65, i64* %9, align 8
  %66 = load %struct.page*, %struct.page** %11, align 8
  %67 = call i8* @page_address(%struct.page* %66)
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @memcmp(i8* %68, i8* %71, i64 %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %54
  br label %86

77:                                               ; preds = %54
  %78 = load i64, i64* %9, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** %13, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %15, align 8
  br label %51

86:                                               ; preds = %76, %51
  %87 = load i32, i32* %16, align 4
  ret i32 %87
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
