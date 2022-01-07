; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_set_inode_index_count.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_set_inode_index_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { i32, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i64, i64, i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

@BTRFS_DIR_INDEX_KEY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_inode*)* @btrfs_set_inode_index_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_set_inode_index_count(%struct.btrfs_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_inode*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_key, align 8
  %6 = alloca %struct.btrfs_key, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %3, align 8
  %10 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %10, i32 0, i32 1
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_root* %12, %struct.btrfs_root** %4, align 8
  %13 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %14 = call i64 @btrfs_ino(%struct.btrfs_inode* %13)
  %15 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i64, i64* @BTRFS_DIR_INDEX_KEY, align 8
  %17 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 2
  store i32 -1, i32* %18, align 8
  %19 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %19, %struct.btrfs_path** %7, align 8
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %21 = icmp ne %struct.btrfs_path* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %88

25:                                               ; preds = %1
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %27 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %28 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %26, %struct.btrfs_key* %5, %struct.btrfs_path* %27, i32 0, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %84

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %84

36:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %38 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %45 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %44, i32 0, i32 0
  store i32 2, i32* %45, align 8
  br label %84

46:                                               ; preds = %36
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %48 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %54 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %53, i32 0, i32 1
  %55 = load %struct.extent_buffer**, %struct.extent_buffer*** %54, align 8
  %56 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %55, i64 0
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %56, align 8
  store %struct.extent_buffer* %57, %struct.extent_buffer** %8, align 8
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %60 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %58, %struct.btrfs_key* %6, i64 %63)
  %65 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %68 = call i64 @btrfs_ino(%struct.btrfs_inode* %67)
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %46
  %71 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BTRFS_DIR_INDEX_KEY, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70, %46
  %76 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %77 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %76, i32 0, i32 0
  store i32 2, i32* %77, align 8
  br label %84

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  %82 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %83 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %78, %75, %43, %35, %31
  %85 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %86 = call i32 @btrfs_free_path(%struct.btrfs_path* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %22
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i64) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
