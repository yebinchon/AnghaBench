; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_btrfs_build_ref_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_btrfs_build_ref_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_path = type { i32*, i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

@REF_VERIFY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK_BLOCKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_build_ref_tree(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_path*, align 8
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %11 = load i32, i32* @REF_VERIFY, align 4
  %12 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

15:                                               ; preds = %1
  %16 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %16, %struct.btrfs_path** %4, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %18 = icmp ne %struct.btrfs_path* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %87

22:                                               ; preds = %15
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.extent_buffer* @btrfs_read_lock_root_node(i32 %25)
  store %struct.extent_buffer* %26, %struct.extent_buffer** %5, align 8
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %28 = call i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer* %27)
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %30 = call i32 @btrfs_header_level(%struct.extent_buffer* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %33 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %32, i32 0, i32 2
  %34 = load %struct.extent_buffer**, %struct.extent_buffer*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %34, i64 %36
  store %struct.extent_buffer* %31, %struct.extent_buffer** %37, align 8
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @BTRFS_READ_LOCK_BLOCKING, align 4
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %22, %71
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %53 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @walk_down_tree(i32 %54, %struct.btrfs_path* %55, i32 %56, i32* %6, i32* %7)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %72

61:                                               ; preds = %51
  %62 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %63 = call i32 @walk_up_tree(%struct.btrfs_path* %62, i32* %9)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %72

71:                                               ; preds = %67
  br label %51

72:                                               ; preds = %70, %66, %60
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %77 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @REF_VERIFY, align 4
  %80 = call i32 @btrfs_clear_opt(i32 %78, i32 %79)
  %81 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %82 = call i32 @btrfs_free_ref_cache(%struct.btrfs_fs_info* %81)
  br label %83

83:                                               ; preds = %75, %72
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %85 = call i32 @btrfs_free_path(%struct.btrfs_path* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %19, %14
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.extent_buffer* @btrfs_read_lock_root_node(i32) #1

declare dso_local i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @walk_down_tree(i32, %struct.btrfs_path*, i32, i32*, i32*) #1

declare dso_local i32 @walk_up_tree(%struct.btrfs_path*, i32*) #1

declare dso_local i32 @btrfs_clear_opt(i32, i32) #1

declare dso_local i32 @btrfs_free_ref_cache(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
