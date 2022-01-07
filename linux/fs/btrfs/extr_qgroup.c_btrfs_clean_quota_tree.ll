; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_clean_quota_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_clean_quota_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32, i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*)* @btrfs_clean_quota_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_clean_quota_tree(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  store %struct.extent_buffer* null, %struct.extent_buffer** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %11, %struct.btrfs_path** %6, align 8
  %12 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %13 = icmp ne %struct.btrfs_path* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %63

17:                                               ; preds = %2
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %55
  %24 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %26 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %27 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %24, %struct.btrfs_root* %25, %struct.btrfs_key* %7, %struct.btrfs_path* %26, i32 -1, i32 1)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %59

31:                                               ; preds = %23
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %33 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %32, i32 0, i32 2
  %34 = load %struct.extent_buffer**, %struct.extent_buffer*** %33, align 8
  %35 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %34, i64 0
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %35, align 8
  store %struct.extent_buffer* %36, %struct.extent_buffer** %8, align 8
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %38 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %58

42:                                               ; preds = %31
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @btrfs_del_items(%struct.btrfs_trans_handle* %47, %struct.btrfs_root* %48, %struct.btrfs_path* %49, i32 0, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %42
  %56 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %57 = call i32 @btrfs_release_path(%struct.btrfs_path* %56)
  br label %23

58:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %54, %30
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %61 = call i32 @btrfs_free_path(%struct.btrfs_path* %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_del_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
