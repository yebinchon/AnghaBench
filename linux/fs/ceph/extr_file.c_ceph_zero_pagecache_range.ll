; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_zero_pagecache_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_zero_pagecache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64, i64)* @ceph_zero_pagecache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_zero_pagecache_range(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = call i64 @round_up(i64 %10, i64 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %23, %16
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @ceph_zero_partial_page(%struct.inode* %26, i64 %27, i64 %28)
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %25, %3
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = call i64 @round_down(i64 %41, i64 %42)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %46, %47
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @truncate_pagecache_range(%struct.inode* %44, i64 %45, i64 %49)
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %40, %36
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @ceph_zero_partial_page(%struct.inode* %61, i64 %62, i64 %63)
  br label %65

65:                                               ; preds = %60, %57
  ret void
}

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i32 @ceph_zero_partial_page(%struct.inode*, i64, i64) #1

declare dso_local i64 @round_down(i64, i64) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
