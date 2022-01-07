; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_copy_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_copy_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { i64, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@BTRFS_ROOT_REF_COWS = common dso_local global i32 0, align 4
@BTRFS_MIXED_BACKREF_REV = common dso_local global i32 0, align 4
@BTRFS_HEADER_FLAG_WRITTEN = common dso_local global i32 0, align 4
@BTRFS_HEADER_FLAG_RELOC = common dso_local global i32 0, align 4
@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_copy_root(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.extent_buffer* %2, %struct.extent_buffer** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.extent_buffer**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_disk_key, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %9, align 8
  store %struct.extent_buffer** %3, %struct.extent_buffer*** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 2
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* @BTRFS_ROOT_REF_COWS, align 4
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %5
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %27 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %28, %33
  br label %35

35:                                               ; preds = %25, %5
  %36 = phi i1 [ false, %5 ], [ %34, %25 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load i32, i32* @BTRFS_ROOT_REF_COWS, align 4
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 1
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %46 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %49 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br label %52

52:                                               ; preds = %44, %35
  %53 = phi i1 [ false, %35 ], [ %51, %44 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %57 = call i32 @btrfs_header_level(%struct.extent_buffer* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %62 = call i32 @btrfs_item_key(%struct.extent_buffer* %61, %struct.btrfs_disk_key* %16, i32 0)
  br label %66

63:                                               ; preds = %52
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %65 = call i32 @btrfs_node_key(%struct.extent_buffer* %64, %struct.btrfs_disk_key* %16, i32 0)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %68 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %72 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.extent_buffer* @btrfs_alloc_tree_block(%struct.btrfs_trans_handle* %67, %struct.btrfs_root* %68, i32 0, i32 %69, %struct.btrfs_disk_key* %16, i32 %70, i32 %73, i32 0)
  store %struct.extent_buffer* %74, %struct.extent_buffer** %13, align 8
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %76 = call i64 @IS_ERR(%struct.extent_buffer* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %80 = call i32 @PTR_ERR(%struct.extent_buffer* %79)
  store i32 %80, i32* %6, align 4
  br label %153

81:                                               ; preds = %66
  %82 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %84 = call i32 @copy_extent_buffer_full(%struct.extent_buffer* %82, %struct.extent_buffer* %83)
  %85 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %87 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @btrfs_set_header_bytenr(%struct.extent_buffer* %85, i32 %88)
  %90 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %91 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %92 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @btrfs_set_header_generation(%struct.extent_buffer* %90, i64 %93)
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %96 = load i32, i32* @BTRFS_MIXED_BACKREF_REV, align 4
  %97 = call i32 @btrfs_set_header_backref_rev(%struct.extent_buffer* %95, i32 %96)
  %98 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %99 = load i32, i32* @BTRFS_HEADER_FLAG_WRITTEN, align 4
  %100 = load i32, i32* @BTRFS_HEADER_FLAG_RELOC, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @btrfs_clear_header_flag(%struct.extent_buffer* %98, i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @BTRFS_TREE_RELOC_OBJECTID, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %81
  %107 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %108 = load i32, i32* @BTRFS_HEADER_FLAG_RELOC, align 4
  %109 = call i32 @btrfs_set_header_flag(%struct.extent_buffer* %107, i32 %108)
  br label %114

110:                                              ; preds = %81
  %111 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @btrfs_set_header_owner(%struct.extent_buffer* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %116 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %117 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @write_extent_buffer_fsid(%struct.extent_buffer* %115, i32 %120)
  %122 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %123 = call i64 @btrfs_header_generation(%struct.extent_buffer* %122)
  %124 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %125 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %123, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @WARN_ON(i32 %128)
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @BTRFS_TREE_RELOC_OBJECTID, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %114
  %134 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %135 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %136 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %137 = call i32 @btrfs_inc_ref(%struct.btrfs_trans_handle* %134, %struct.btrfs_root* %135, %struct.extent_buffer* %136, i32 1)
  store i32 %137, i32* %14, align 4
  br label %143

138:                                              ; preds = %114
  %139 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %140 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %141 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %142 = call i32 @btrfs_inc_ref(%struct.btrfs_trans_handle* %139, %struct.btrfs_root* %140, %struct.extent_buffer* %141, i32 0)
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %6, align 4
  br label %153

148:                                              ; preds = %143
  %149 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %150 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %149)
  %151 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %152 = load %struct.extent_buffer**, %struct.extent_buffer*** %10, align 8
  store %struct.extent_buffer* %151, %struct.extent_buffer** %152, align 8
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %148, %146, %78
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_item_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local %struct.extent_buffer* @btrfs_alloc_tree_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32, %struct.btrfs_disk_key*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @copy_extent_buffer_full(%struct.extent_buffer*, %struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_bytenr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_generation(%struct.extent_buffer*, i64) #1

declare dso_local i32 @btrfs_set_header_backref_rev(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_clear_header_flag(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_flag(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_owner(%struct.extent_buffer*, i32) #1

declare dso_local i32 @write_extent_buffer_fsid(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_inc_ref(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
