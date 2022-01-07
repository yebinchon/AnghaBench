; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_uuid-tree.c_btrfs_uuid_tree_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_uuid-tree.c_btrfs_uuid_tree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"insert uuid item failed %d (0x%016llx, 0x%016llx) type %u!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_uuid_tree_add(%struct.btrfs_trans_handle* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_path*, align 8
  %14 = alloca %struct.btrfs_key, align 8
  %15 = alloca %struct.extent_buffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %19, i32 0, i32 0
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %20, align 8
  store %struct.btrfs_fs_info* %21, %struct.btrfs_fs_info** %10, align 8
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %22, i32 0, i32 0
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %23, align 8
  store %struct.btrfs_root* %24, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_path* null, %struct.btrfs_path** %13, align 8
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @btrfs_uuid_tree_lookup(%struct.btrfs_root* %25, i32* %26, i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %127

36:                                               ; preds = %4
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %38 = icmp ne %struct.btrfs_root* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON_ONCE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  br label %123

46:                                               ; preds = %36
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @btrfs_uuid_to_key(i32* %47, i32 %48, %struct.btrfs_key* %14)
  %50 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %50, %struct.btrfs_path** %13, align 8
  %51 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %52 = icmp ne %struct.btrfs_path* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %123

56:                                               ; preds = %46
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %60 = call i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle* %57, %struct.btrfs_root* %58, %struct.btrfs_path* %59, %struct.btrfs_key* %14, i32 4)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %65 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %64, i32 0, i32 1
  %66 = load %struct.extent_buffer**, %struct.extent_buffer*** %65, align 8
  %67 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %66, i64 0
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %67, align 8
  store %struct.extent_buffer* %68, %struct.extent_buffer** %15, align 8
  %69 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %70 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %16, align 4
  %74 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %74, i32 %75)
  store i64 %76, i64* %17, align 8
  br label %115

77:                                               ; preds = %56
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @EEXIST, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %77
  %83 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %84 = call i32 @btrfs_extend_item(%struct.btrfs_path* %83, i32 4)
  %85 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %86 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %85, i32 0, i32 1
  %87 = load %struct.extent_buffer**, %struct.extent_buffer*** %86, align 8
  %88 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %87, i64 0
  %89 = load %struct.extent_buffer*, %struct.extent_buffer** %88, align 8
  store %struct.extent_buffer* %89, %struct.extent_buffer** %15, align 8
  %90 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %91 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %16, align 4
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %95, i32 %96)
  store i64 %97, i64* %17, align 8
  %98 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @btrfs_item_size_nr(%struct.extent_buffer* %98, i32 %99)
  %101 = sext i32 %100 to i64
  %102 = sub i64 %101, 4
  %103 = load i64, i64* %17, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %17, align 8
  br label %114

105:                                              ; preds = %77
  %106 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %107 = load i32, i32* %12, align 4
  %108 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %106, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %107, i64 %109, i64 %111, i32 %112)
  br label %123

114:                                              ; preds = %82
  br label %115

115:                                              ; preds = %114, %63
  store i32 0, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @cpu_to_le64(i32 %116)
  store i32 %117, i32* %18, align 4
  %118 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %119 = load i64, i64* %17, align 8
  %120 = call i32 @write_extent_buffer(%struct.extent_buffer* %118, i32* %18, i64 %119, i32 4)
  %121 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %122 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %121)
  br label %123

123:                                              ; preds = %115, %105, %53, %43
  %124 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %125 = call i32 @btrfs_free_path(%struct.btrfs_path* %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %123, %34
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @btrfs_uuid_tree_lookup(%struct.btrfs_root*, i32*, i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @btrfs_uuid_to_key(i32*, i32, %struct.btrfs_key*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_extend_item(%struct.btrfs_path*, i32) #1

declare dso_local i32 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, i32*, i64, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
