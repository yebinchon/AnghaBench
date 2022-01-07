; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_full_send_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_full_send_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i64, i32, i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_COMPARE_TREE_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @full_send_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @full_send_tree(%struct.send_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.send_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_key, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %3, align 8
  %10 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %10, i32 0, i32 0
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_root* %12, %struct.btrfs_root** %5, align 8
  %13 = call %struct.btrfs_path* (...) @alloc_path_for_send()
  store %struct.btrfs_path* %13, %struct.btrfs_path** %7, align 8
  %14 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %15 = icmp ne %struct.btrfs_path* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %77

19:                                               ; preds = %1
  %20 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %23 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %6, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %26 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %27 = call i32 @btrfs_search_slot_for_read(%struct.btrfs_root* %25, %struct.btrfs_key* %6, %struct.btrfs_path* %26, i32 1, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %73

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %70

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %68
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %38 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %37, i32 0, i32 1
  %39 = load %struct.extent_buffer**, %struct.extent_buffer*** %38, align 8
  %40 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %39, i64 0
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %40, align 8
  store %struct.extent_buffer* %41, %struct.extent_buffer** %8, align 8
  %42 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %43 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %47, %struct.btrfs_key* %6, i32 %48)
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %51 = load i32, i32* @BTRFS_COMPARE_TREE_NEW, align 4
  %52 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %53 = call i32 @changed_cb(%struct.btrfs_path* %50, i32* null, %struct.btrfs_key* %6, i32 %51, %struct.send_ctx* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %36
  br label %73

57:                                               ; preds = %36
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %60 = call i32 @btrfs_next_item(%struct.btrfs_root* %58, %struct.btrfs_path* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %73

64:                                               ; preds = %57
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %69

68:                                               ; preds = %64
  br label %36

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %34
  %71 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %72 = call i32 @finish_inode_if_needed(%struct.send_ctx* %71, i32 1)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %63, %56, %30
  %74 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %75 = call i32 @btrfs_free_path(%struct.btrfs_path* %74)
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %16
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.btrfs_path* @alloc_path_for_send(...) #1

declare dso_local i32 @btrfs_search_slot_for_read(%struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @changed_cb(%struct.btrfs_path*, i32*, %struct.btrfs_key*, i32, %struct.send_ctx*) #1

declare dso_local i32 @btrfs_next_item(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @finish_inode_if_needed(%struct.send_ctx*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
