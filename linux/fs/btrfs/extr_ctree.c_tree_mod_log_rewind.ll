; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_tree_mod_log_rewind.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_tree_mod_log_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.tree_mod_elem = type { i64, i64 }

@MOD_LOG_KEY_REMOVE_WHILE_FREEING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_buffer* (%struct.btrfs_fs_info*, %struct.btrfs_path*, %struct.extent_buffer*, i32)* @tree_mod_log_rewind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_buffer* @tree_mod_log_rewind(%struct.btrfs_fs_info* %0, %struct.btrfs_path* %1, %struct.extent_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca %struct.tree_mod_elem*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %7, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %15, %struct.extent_buffer** %5, align 8
  br label %111

16:                                               ; preds = %4
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %18 = call i64 @btrfs_header_level(%struct.extent_buffer* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %21, %struct.extent_buffer** %5, align 8
  br label %111

22:                                               ; preds = %16
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %25 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.tree_mod_elem* @tree_mod_log_search(%struct.btrfs_fs_info* %23, i32 %26, i32 %27)
  store %struct.tree_mod_elem* %28, %struct.tree_mod_elem** %11, align 8
  %29 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %11, align 8
  %30 = icmp ne %struct.tree_mod_elem* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %32, %struct.extent_buffer** %5, align 8
  br label %111

33:                                               ; preds = %22
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %35 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %34)
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %37 = call i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer* %36)
  %38 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %11, align 8
  %39 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MOD_LOG_KEY_REMOVE_WHILE_FREEING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %33
  %44 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %11, align 8
  %45 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %52 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.extent_buffer* @alloc_dummy_extent_buffer(%struct.btrfs_fs_info* %50, i32 %53)
  store %struct.extent_buffer* %54, %struct.extent_buffer** %10, align 8
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %56 = icmp ne %struct.extent_buffer* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %43
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %59 = call i32 @btrfs_tree_read_unlock_blocking(%struct.extent_buffer* %58)
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %61 = call i32 @free_extent_buffer(%struct.extent_buffer* %60)
  store %struct.extent_buffer* null, %struct.extent_buffer** %5, align 8
  br label %111

62:                                               ; preds = %43
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %65 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @btrfs_set_header_bytenr(%struct.extent_buffer* %63, i32 %66)
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %70 = call i32 @btrfs_header_backref_rev(%struct.extent_buffer* %69)
  %71 = call i32 @btrfs_set_header_backref_rev(%struct.extent_buffer* %68, i32 %70)
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %74 = call i32 @btrfs_header_owner(%struct.extent_buffer* %73)
  %75 = call i32 @btrfs_set_header_owner(%struct.extent_buffer* %72, i32 %74)
  %76 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %78 = call i64 @btrfs_header_level(%struct.extent_buffer* %77)
  %79 = call i32 @btrfs_set_header_level(%struct.extent_buffer* %76, i64 %78)
  br label %91

80:                                               ; preds = %33
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %82 = call %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer* %81)
  store %struct.extent_buffer* %82, %struct.extent_buffer** %10, align 8
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %84 = icmp ne %struct.extent_buffer* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %87 = call i32 @btrfs_tree_read_unlock_blocking(%struct.extent_buffer* %86)
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %89 = call i32 @free_extent_buffer(%struct.extent_buffer* %88)
  store %struct.extent_buffer* null, %struct.extent_buffer** %5, align 8
  br label %111

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %62
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %93 = call i32 @btrfs_tree_read_unlock_blocking(%struct.extent_buffer* %92)
  %94 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %95 = call i32 @free_extent_buffer(%struct.extent_buffer* %94)
  %96 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %97 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %96)
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %11, align 8
  %102 = call i32 @__tree_mod_log_rewind(%struct.btrfs_fs_info* %98, %struct.extent_buffer* %99, i32 %100, %struct.tree_mod_elem* %101)
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %104 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %103)
  %105 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %106 = call i64 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info* %105)
  %107 = icmp sgt i64 %104, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @WARN_ON(i32 %108)
  %110 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  store %struct.extent_buffer* %110, %struct.extent_buffer** %5, align 8
  br label %111

111:                                              ; preds = %91, %85, %57, %31, %20, %14
  %112 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  ret %struct.extent_buffer* %112
}

declare dso_local i64 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local %struct.tree_mod_elem* @tree_mod_log_search(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.extent_buffer* @alloc_dummy_extent_buffer(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_tree_read_unlock_blocking(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_bytenr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_backref_rev(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_header_backref_rev(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_owner(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_header_owner(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_level(%struct.extent_buffer*, i64) #1

declare dso_local %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @__tree_mod_log_rewind(%struct.btrfs_fs_info*, %struct.extent_buffer*, i32, %struct.tree_mod_elem*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i64 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
