; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_copy_extent_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_copy_extent_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i64, i64, %struct.page** }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_extent_buffer(%struct.extent_buffer* %0, %struct.extent_buffer* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %6, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @offset_in_page(i64 %23)
  store i64 %24, i64* %16, align 8
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %25, %26
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = lshr i64 %27, %28
  store i64 %29, i64* %17, align 8
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %31 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %37, %38
  %40 = call i64 @offset_in_page(i64 %39)
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %44, %5
  %42 = load i64, i64* %10, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %41
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %45, i32 0, i32 2
  %47 = load %struct.page**, %struct.page*** %46, align 8
  %48 = load i64, i64* %17, align 8
  %49 = getelementptr inbounds %struct.page*, %struct.page** %47, i64 %48
  %50 = load %struct.page*, %struct.page** %49, align 8
  store %struct.page* %50, %struct.page** %14, align 8
  %51 = load %struct.page*, %struct.page** %14, align 8
  %52 = call i32 @PageUptodate(%struct.page* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @WARN_ON(i32 %55)
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i64, i64* %13, align 8
  %60 = sub i64 %58, %59
  %61 = call i64 @min(i64 %57, i64 %60)
  store i64 %61, i64* %12, align 8
  %62 = load %struct.page*, %struct.page** %14, align 8
  %63 = call i8* @page_address(%struct.page* %62)
  store i8* %63, i8** %15, align 8
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @read_extent_buffer(%struct.extent_buffer* %64, i8* %67, i64 %68, i64 %69)
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %10, align 8
  store i64 0, i64* %13, align 8
  %77 = load i64, i64* %17, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %17, align 8
  br label %41

79:                                               ; preds = %41
  ret void
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
