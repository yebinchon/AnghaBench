; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dir-item.c_btrfs_insert_dir_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dir-item.c_btrfs_insert_dir_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_inode = type { %struct.btrfs_root* }
%struct.btrfs_root = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }
%struct.btrfs_key = type { i32, i32, i32 }
%struct.btrfs_path = type { i32, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@BTRFS_DIR_ITEM_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_dir_item(%struct.btrfs_trans_handle* %0, i8* %1, i32 %2, %struct.btrfs_inode* %3, %struct.btrfs_key* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_inode*, align 8
  %13 = alloca %struct.btrfs_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.btrfs_root*, align 8
  %19 = alloca %struct.btrfs_path*, align 8
  %20 = alloca %struct.btrfs_dir_item*, align 8
  %21 = alloca %struct.extent_buffer*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.btrfs_key, align 4
  %24 = alloca %struct.btrfs_disk_key, align 4
  %25 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.btrfs_inode* %3, %struct.btrfs_inode** %12, align 8
  store %struct.btrfs_key* %4, %struct.btrfs_key** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.btrfs_inode*, %struct.btrfs_inode** %12, align 8
  %27 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %26, i32 0, i32 0
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %27, align 8
  store %struct.btrfs_root* %28, %struct.btrfs_root** %18, align 8
  %29 = load %struct.btrfs_inode*, %struct.btrfs_inode** %12, align 8
  %30 = call i32 @btrfs_ino(%struct.btrfs_inode* %29)
  %31 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %23, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @BTRFS_DIR_ITEM_KEY, align 4
  %33 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %23, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @btrfs_name_hash(i8* %34, i32 %35)
  %37 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %23, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %38, %struct.btrfs_path** %19, align 8
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %19, align 8
  %40 = icmp ne %struct.btrfs_path* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %7
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %140

44:                                               ; preds = %7
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %19, align 8
  %46 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.btrfs_key*, %struct.btrfs_key** %13, align 8
  %48 = call i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key* %24, %struct.btrfs_key* %47)
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 4, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %25, align 4
  %53 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %19, align 8
  %56 = load i32, i32* %25, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.btrfs_dir_item* @insert_with_overflow(%struct.btrfs_trans_handle* %53, %struct.btrfs_root* %54, %struct.btrfs_path* %55, %struct.btrfs_key* %23, i32 %56, i8* %57, i32 %58)
  store %struct.btrfs_dir_item* %59, %struct.btrfs_dir_item** %20, align 8
  %60 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %20, align 8
  %61 = call i64 @IS_ERR(%struct.btrfs_dir_item* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %44
  %64 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %20, align 8
  %65 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @EEXIST, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %108

71:                                               ; preds = %63
  br label %127

72:                                               ; preds = %44
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %19, align 8
  %74 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %73, i32 0, i32 1
  %75 = load %struct.extent_buffer**, %struct.extent_buffer*** %74, align 8
  %76 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %75, i64 0
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %76, align 8
  store %struct.extent_buffer* %77, %struct.extent_buffer** %21, align 8
  %78 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %79 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %20, align 8
  %80 = call i32 @btrfs_set_dir_item_key(%struct.extent_buffer* %78, %struct.btrfs_dir_item* %79, %struct.btrfs_disk_key* %24)
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %82 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %20, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @btrfs_set_dir_type(%struct.extent_buffer* %81, %struct.btrfs_dir_item* %82, i32 %83)
  %85 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %86 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %20, align 8
  %87 = call i32 @btrfs_set_dir_data_len(%struct.extent_buffer* %85, %struct.btrfs_dir_item* %86, i32 0)
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %89 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %20, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @btrfs_set_dir_name_len(%struct.extent_buffer* %88, %struct.btrfs_dir_item* %89, i32 %90)
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %93 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %20, align 8
  %94 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %95 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @btrfs_set_dir_transid(%struct.extent_buffer* %92, %struct.btrfs_dir_item* %93, i32 %96)
  %98 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %20, align 8
  %99 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %98, i64 1
  %100 = ptrtoint %struct.btrfs_dir_item* %99 to i64
  store i64 %100, i64* %22, align 8
  %101 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i64, i64* %22, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @write_extent_buffer(%struct.extent_buffer* %101, i8* %102, i64 %103, i32 %104)
  %106 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %107 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %106)
  br label %108

108:                                              ; preds = %72, %70
  %109 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %110 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %111 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load %struct.btrfs_root*, %struct.btrfs_root** %113, align 8
  %115 = icmp eq %struct.btrfs_root* %109, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i32 0, i32* %16, align 4
  br label %127

117:                                              ; preds = %108
  %118 = load %struct.btrfs_path*, %struct.btrfs_path** %19, align 8
  %119 = call i32 @btrfs_release_path(%struct.btrfs_path* %118)
  %120 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.btrfs_inode*, %struct.btrfs_inode** %12, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @btrfs_insert_delayed_dir_index(%struct.btrfs_trans_handle* %120, i8* %121, i32 %122, %struct.btrfs_inode* %123, %struct.btrfs_disk_key* %24, i32 %124, i32 %125)
  store i32 %126, i32* %17, align 4
  br label %127

127:                                              ; preds = %117, %116, %71
  %128 = load %struct.btrfs_path*, %struct.btrfs_path** %19, align 8
  %129 = call i32 @btrfs_free_path(%struct.btrfs_path* %128)
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %8, align 4
  br label %140

134:                                              ; preds = %127
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %8, align 4
  br label %140

139:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %137, %132, %41
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i32 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @btrfs_name_hash(i8*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local %struct.btrfs_dir_item* @insert_with_overflow(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @btrfs_set_dir_item_key(%struct.extent_buffer*, %struct.btrfs_dir_item*, %struct.btrfs_disk_key*) #1

declare dso_local i32 @btrfs_set_dir_type(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_dir_data_len(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_dir_name_len(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_dir_transid(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, i8*, i64, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_insert_delayed_dir_index(%struct.btrfs_trans_handle*, i8*, i32, %struct.btrfs_inode*, %struct.btrfs_disk_key*, i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
