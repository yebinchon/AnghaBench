; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..ctree.h_btrfs_next_old_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..ctree.h_btrfs_next_old_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_path*, i32)* @btrfs_next_old_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_next_old_item(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %9 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %15 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @btrfs_header_nritems(i32 %23)
  %25 = icmp sge i64 %18, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @btrfs_next_old_leaf(%struct.btrfs_root* %27, %struct.btrfs_path* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @btrfs_header_nritems(i32) #1

declare dso_local i32 @btrfs_next_old_leaf(%struct.btrfs_root*, %struct.btrfs_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
