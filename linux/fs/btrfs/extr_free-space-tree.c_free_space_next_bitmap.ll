; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_free_space_next_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_free_space_next_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i64*, i32* }
%struct.btrfs_key = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*)* @free_space_next_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_space_next_bitmap(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_key, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %7, align 8
  %9 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %10 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @btrfs_header_nritems(i32 %19)
  %21 = icmp slt i64 %14, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %24 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  store i32 0, i32* %4, align 4
  br label %56

29:                                               ; preds = %3
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %31 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %36 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @btrfs_item_key_to_cpu(i32 %34, %struct.btrfs_key* %8, i64 %39)
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %42 = call i32 @btrfs_release_path(%struct.btrfs_path* %41)
  %43 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %44
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  store i64 -1, i64* %50, align 8
  %51 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  store i64 -1, i64* %51, align 8
  %52 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %55 = call i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle* %52, %struct.btrfs_root* %53, %struct.btrfs_key* %8, %struct.btrfs_path* %54, i32 0, i32 1)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %29, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @btrfs_header_nritems(i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i64) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
