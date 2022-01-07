; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_copy_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_copy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.page*, i64, i64, i64)* @copy_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_pages(%struct.page* %0, %struct.page* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = call i8* @page_address(%struct.page* %14)
  store i8* %15, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = icmp ne %struct.page* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.page*, %struct.page** %7, align 8
  %21 = call i8* @page_address(%struct.page* %20)
  store i8* %21, i8** %12, align 8
  br label %31

22:                                               ; preds = %5
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @areas_overlap(i64 %24, i64 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %13, align 4
  br label %30

30:                                               ; preds = %29, %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @memmove(i8* %37, i8* %40, i64 %41)
  br label %52

43:                                               ; preds = %31
  %44 = load i8*, i8** %11, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @memcpy(i8* %46, i8* %49, i64 %50)
  br label %52

52:                                               ; preds = %43, %34
  ret void
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i64 @areas_overlap(i64, i64, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
