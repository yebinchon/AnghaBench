; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dir-item.c_btrfs_insert_xattr_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dir-item.c_btrfs_insert_xattr_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_key = type { i32, i32, i32 }
%struct.btrfs_disk_key = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_XATTR_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_FT_XATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_xattr_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32 %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.btrfs_dir_item*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.btrfs_key, align 4
  %23 = alloca %struct.btrfs_key, align 4
  %24 = alloca %struct.btrfs_disk_key, align 4
  %25 = alloca %struct.extent_buffer*, align 8
  %26 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %10, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* %17, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @BTRFS_MAX_XATTR_SIZE(i32 %32)
  %34 = icmp sgt i64 %29, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %8
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %118

38:                                               ; preds = %8
  %39 = load i32, i32* %13, align 4
  %40 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %22, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @BTRFS_XATTR_ITEM_KEY, align 4
  %42 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %22, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i8*, i8** %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @btrfs_name_hash(i8* %43, i64 %44)
  %46 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %22, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i64, i64* %15, align 8
  %48 = add i64 4, %47
  %49 = load i64, i64* %17, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %26, align 8
  %51 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %54 = load i64, i64* %26, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call %struct.btrfs_dir_item* @insert_with_overflow(%struct.btrfs_trans_handle* %51, %struct.btrfs_root* %52, %struct.btrfs_path* %53, %struct.btrfs_key* %22, i64 %54, i8* %55, i64 %56)
  store %struct.btrfs_dir_item* %57, %struct.btrfs_dir_item** %19, align 8
  %58 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %59 = call i64 @IS_ERR(%struct.btrfs_dir_item* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %38
  %62 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %63 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %62)
  store i32 %63, i32* %9, align 4
  br label %118

64:                                               ; preds = %38
  %65 = call i32 @memset(%struct.btrfs_key* %23, i32 0, i32 12)
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %67 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %66, i32 0, i32 0
  %68 = load %struct.extent_buffer**, %struct.extent_buffer*** %67, align 8
  %69 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %68, i64 0
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %69, align 8
  store %struct.extent_buffer* %70, %struct.extent_buffer** %25, align 8
  %71 = call i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key* %24, %struct.btrfs_key* %23)
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %73 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %74 = call i32 @btrfs_set_dir_item_key(%struct.extent_buffer* %72, %struct.btrfs_dir_item* %73, %struct.btrfs_disk_key* %24)
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %76 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %77 = load i32, i32* @BTRFS_FT_XATTR, align 4
  %78 = call i32 @btrfs_set_dir_type(%struct.extent_buffer* %75, %struct.btrfs_dir_item* %76, i32 %77)
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %80 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @btrfs_set_dir_name_len(%struct.extent_buffer* %79, %struct.btrfs_dir_item* %80, i64 %81)
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %84 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %85 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %86 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @btrfs_set_dir_transid(%struct.extent_buffer* %83, %struct.btrfs_dir_item* %84, i32 %87)
  %89 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %90 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %91 = load i64, i64* %17, align 8
  %92 = call i32 @btrfs_set_dir_data_len(%struct.extent_buffer* %89, %struct.btrfs_dir_item* %90, i64 %91)
  %93 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %19, align 8
  %94 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %93, i64 1
  %95 = ptrtoint %struct.btrfs_dir_item* %94 to i64
  store i64 %95, i64* %20, align 8
  %96 = load i64, i64* %20, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = ptrtoint i8* %99 to i64
  store i64 %100, i64* %21, align 8
  %101 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = load i64, i64* %20, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @write_extent_buffer(%struct.extent_buffer* %101, i8* %102, i64 %103, i64 %104)
  %106 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %17, align 8
  %110 = call i32 @write_extent_buffer(%struct.extent_buffer* %106, i8* %107, i64 %108, i64 %109)
  %111 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %112 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %111, i32 0, i32 0
  %113 = load %struct.extent_buffer**, %struct.extent_buffer*** %112, align 8
  %114 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %113, i64 0
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %114, align 8
  %116 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %115)
  %117 = load i32, i32* %18, align 4
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %64, %61, %35
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local i64 @BTRFS_MAX_XATTR_SIZE(i32) #1

declare dso_local i32 @btrfs_name_hash(i8*, i64) #1

declare dso_local %struct.btrfs_dir_item* @insert_with_overflow(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i64, i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @memset(%struct.btrfs_key*, i32, i32) #1

declare dso_local i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_set_dir_item_key(%struct.extent_buffer*, %struct.btrfs_dir_item*, %struct.btrfs_disk_key*) #1

declare dso_local i32 @btrfs_set_dir_type(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_dir_name_len(%struct.extent_buffer*, %struct.btrfs_dir_item*, i64) #1

declare dso_local i32 @btrfs_set_dir_transid(%struct.extent_buffer*, %struct.btrfs_dir_item*, i32) #1

declare dso_local i32 @btrfs_set_dir_data_len(%struct.extent_buffer*, %struct.btrfs_dir_item*, i64) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, i8*, i64, i64) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
