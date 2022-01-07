; ModuleID = '/home/carl/AnghaBench/linux/fs/efs/extr_inode.c_efs_extent_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/efs/extr_inode.c_efs_extent_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.efs_sb_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, %struct.efs_sb_info*)* @efs_extent_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efs_extent_check(%struct.TYPE_5__* %0, i64 %1, %struct.efs_sb_info* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.efs_sb_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.efs_sb_info* %2, %struct.efs_sb_info** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add nsw i64 %28, %29
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.efs_sb_info*, %struct.efs_sb_info** %7, align 8
  %34 = getelementptr inbounds %struct.efs_sb_info, %struct.efs_sb_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %10, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %4, align 8
  br label %43

42:                                               ; preds = %26, %3
  store i64 0, i64* %4, align 8
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
