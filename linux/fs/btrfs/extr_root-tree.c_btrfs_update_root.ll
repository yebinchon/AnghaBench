; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_update_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_update_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i32, i32, i32 }
%struct.btrfs_root_item = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"unable to find root key (%llu %u %llu) in tree %llu\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_update_root(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_key* %2, %struct.btrfs_root_item* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_key*, align 8
  %9 = alloca %struct.btrfs_root_item*, align 8
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %8, align 8
  store %struct.btrfs_root_item* %3, %struct.btrfs_root_item** %9, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 1
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %10, align 8
  %20 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %20, %struct.btrfs_path** %11, align 8
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %22 = icmp ne %struct.btrfs_path* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %151

26:                                               ; preds = %4
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %29 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %31 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %27, %struct.btrfs_root* %28, %struct.btrfs_key* %29, %struct.btrfs_path* %30, i32 0, i32 1)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %147

35:                                               ; preds = %26
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %40 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %41 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %47 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @btrfs_crit(%struct.btrfs_fs_info* %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %52)
  %54 = load i32, i32* @EUCLEAN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  %56 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %56, i32 %57)
  br label %147

59:                                               ; preds = %35
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %61 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %60, i32 0, i32 1
  %62 = load %struct.extent_buffer**, %struct.extent_buffer*** %61, align 8
  %63 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %62, i64 0
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %63, align 8
  store %struct.extent_buffer* %64, %struct.extent_buffer** %12, align 8
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %66 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %14, align 4
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %70, i32 %71)
  store i64 %72, i64* %15, align 8
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @btrfs_item_size_nr(%struct.extent_buffer* %73, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 4
  br i1 %78, label %79, label %132

79:                                               ; preds = %59
  %80 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %81 = call i32 @btrfs_release_path(%struct.btrfs_path* %80)
  %82 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %84 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %85 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %86 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %82, %struct.btrfs_root* %83, %struct.btrfs_key* %84, %struct.btrfs_path* %85, i32 -1, i32 1)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %90, i32 %91)
  br label %147

93:                                               ; preds = %79
  %94 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %95 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %96 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %97 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %94, %struct.btrfs_root* %95, %struct.btrfs_path* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %101, i32 %102)
  br label %147

104:                                              ; preds = %93
  %105 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %106 = call i32 @btrfs_release_path(%struct.btrfs_path* %105)
  %107 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %108 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %109 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %110 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %111 = call i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle* %107, %struct.btrfs_root* %108, %struct.btrfs_path* %109, %struct.btrfs_key* %110, i32 4)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %115, i32 %116)
  br label %147

118:                                              ; preds = %104
  %119 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %120 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %119, i32 0, i32 1
  %121 = load %struct.extent_buffer**, %struct.extent_buffer*** %120, align 8
  %122 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %121, i64 0
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %122, align 8
  store %struct.extent_buffer* %123, %struct.extent_buffer** %12, align 8
  %124 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %125 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %14, align 4
  %129 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %129, i32 %130)
  store i64 %131, i64* %15, align 8
  br label %132

132:                                              ; preds = %118, %59
  %133 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %134 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %135 = call i32 @btrfs_root_generation(%struct.btrfs_root_item* %134)
  %136 = call i32 @btrfs_set_root_generation_v2(%struct.btrfs_root_item* %133, i32 %135)
  %137 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %138 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %139 = load i64, i64* %15, align 8
  %140 = call i32 @write_extent_buffer(%struct.extent_buffer* %137, %struct.btrfs_root_item* %138, i64 %139, i32 4)
  %141 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %142 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %141, i32 0, i32 1
  %143 = load %struct.extent_buffer**, %struct.extent_buffer*** %142, align 8
  %144 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %143, i64 0
  %145 = load %struct.extent_buffer*, %struct.extent_buffer** %144, align 8
  %146 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %145)
  br label %147

147:                                              ; preds = %132, %114, %100, %89, %38, %34
  %148 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %149 = call i32 @btrfs_free_path(%struct.btrfs_path* %148)
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %147, %23
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_crit(%struct.btrfs_fs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_set_root_generation_v2(%struct.btrfs_root_item*, i32) #1

declare dso_local i32 @btrfs_root_generation(%struct.btrfs_root_item*) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, %struct.btrfs_root_item*, i64, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
