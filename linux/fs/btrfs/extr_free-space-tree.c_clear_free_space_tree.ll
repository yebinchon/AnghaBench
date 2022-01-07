; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_clear_free_space_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_clear_free_space_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32, i64*, i32* }
%struct.btrfs_key = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*)* @clear_free_space_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_free_space_tree(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  %10 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %10, %struct.btrfs_path** %6, align 8
  %11 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %12 = icmp ne %struct.btrfs_path* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %16, %53
  %23 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %26 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %23, %struct.btrfs_root* %24, %struct.btrfs_key* %7, %struct.btrfs_path* %25, i32 -1, i32 1)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %57

30:                                               ; preds = %22
  %31 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %32 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @btrfs_header_nritems(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %56

40:                                               ; preds = %30
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @btrfs_del_items(%struct.btrfs_trans_handle* %45, %struct.btrfs_root* %46, %struct.btrfs_path* %47, i32 0, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %57

53:                                               ; preds = %40
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %55 = call i32 @btrfs_release_path(%struct.btrfs_path* %54)
  br label %22

56:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %52, %29
  %58 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %59 = call i32 @btrfs_free_path(%struct.btrfs_path* %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(i32) #1

declare dso_local i32 @btrfs_del_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
