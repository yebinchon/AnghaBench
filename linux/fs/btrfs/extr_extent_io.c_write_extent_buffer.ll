; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_write_extent_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_write_extent_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i64, i64, %struct.page** }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_extent_buffer(%struct.extent_buffer* %0, i8* %1, i64 %2, i64 %3) #0 {
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
  store %struct.extent_buffer* %0, %struct.extent_buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %13, align 8
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @offset_in_page(i64 %19)
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %33, %34
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %38, %41
  %43 = icmp ugt i64 %35, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %46, %47
  %49 = call i64 @offset_in_page(i64 %48)
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %53, %4
  %51 = load i64, i64* %8, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %50
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %54, i32 0, i32 2
  %56 = load %struct.page**, %struct.page*** %55, align 8
  %57 = load i64, i64* %15, align 8
  %58 = getelementptr inbounds %struct.page*, %struct.page** %56, i64 %57
  %59 = load %struct.page*, %struct.page** %58, align 8
  store %struct.page* %59, %struct.page** %11, align 8
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = call i32 @PageUptodate(%struct.page* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i64, i64* %10, align 8
  %69 = sub i64 %67, %68
  %70 = call i64 @min(i64 %66, i64 %69)
  store i64 %70, i64* %9, align 8
  %71 = load %struct.page*, %struct.page** %11, align 8
  %72 = call i8* @page_address(%struct.page* %71)
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8*, i8** %13, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @memcpy(i8* %75, i8* %76, i64 %77)
  %79 = load i64, i64* %9, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %13, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %85 = load i64, i64* %15, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %15, align 8
  br label %50

87:                                               ; preds = %50
  ret void
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
