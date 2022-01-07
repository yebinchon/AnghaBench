; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_insert_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_insert_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, i32 }
%struct.btrfs_path = type { %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@MOD_LOG_KEY_ADD = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.btrfs_path*, %struct.btrfs_disk_key*, i32, i32, i32)* @insert_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_ptr(%struct.btrfs_trans_handle* %0, %struct.btrfs_path* %1, %struct.btrfs_disk_key* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_disk_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %8, align 8
  store %struct.btrfs_disk_key* %2, %struct.btrfs_disk_key** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %17 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %16, i32 0, i32 0
  %18 = load %struct.extent_buffer**, %struct.extent_buffer*** %17, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %18, i64 %20
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %23 = icmp ne %struct.extent_buffer* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %28 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %27, i32 0, i32 0
  %29 = load %struct.extent_buffer**, %struct.extent_buffer*** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %29, i64 %31
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %32, align 8
  %34 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %33)
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %36 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %35, i32 0, i32 0
  %37 = load %struct.extent_buffer**, %struct.extent_buffer*** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %37, i64 %39
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %40, align 8
  store %struct.extent_buffer* %41, %struct.extent_buffer** %13, align 8
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %43 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp sgt i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %51 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BTRFS_NODEPTRS_PER_BLOCK(i32 %52)
  %54 = icmp eq i32 %49, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %6
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @tree_mod_log_insert_move(%struct.extent_buffer* %64, i32 %66, i32 %67, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  br label %76

76:                                               ; preds = %63, %60
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @btrfs_node_key_ptr_offset(i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @btrfs_node_key_ptr_offset(i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %77, i32 %80, i32 %82, i32 %88)
  br label %90

90:                                               ; preds = %76, %6
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @MOD_LOG_KEY_ADD, align 4
  %97 = load i32, i32* @GFP_NOFS, align 4
  %98 = call i32 @tree_mod_log_insert_key(%struct.extent_buffer* %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUG_ON(i32 %101)
  br label %103

103:                                              ; preds = %93, %90
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %105 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @btrfs_set_node_key(%struct.extent_buffer* %104, %struct.btrfs_disk_key* %105, i32 %106)
  %108 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @btrfs_set_node_blockptr(%struct.extent_buffer* %108, i32 %109, i32 %110)
  %112 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %113 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @WARN_ON(i32 %116)
  %118 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %121 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @btrfs_set_node_ptr_generation(%struct.extent_buffer* %118, i32 %119, i32 %122)
  %124 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 @btrfs_set_header_nritems(%struct.extent_buffer* %124, i32 %126)
  %128 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %129 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %128)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @BTRFS_NODEPTRS_PER_BLOCK(i32) #1

declare dso_local i32 @tree_mod_log_insert_move(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_node_key_ptr_offset(i32) #1

declare dso_local i32 @tree_mod_log_insert_key(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_set_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_set_node_blockptr(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_set_node_ptr_generation(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @btrfs_set_header_nritems(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
