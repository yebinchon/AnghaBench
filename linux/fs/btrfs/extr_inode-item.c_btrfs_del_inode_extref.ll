; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_del_inode_extref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_del_inode_extref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32, i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32, i32, i32 }
%struct.btrfs_inode_extref = type { i32 }

@BTRFS_INODE_EXTREF_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, i8*, i32, i32, i32, i32*)* @btrfs_del_inode_extref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_del_inode_extref(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.btrfs_path*, align 8
  %17 = alloca %struct.btrfs_key, align 4
  %18 = alloca %struct.btrfs_inode_extref*, align 8
  %19 = alloca %struct.extent_buffer*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %21, align 4
  %29 = load i32, i32* %13, align 4
  %30 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @BTRFS_INODE_EXTREF_KEY, align 4
  %32 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @btrfs_extref_hash(i32 %33, i8* %34, i32 %35)
  %37 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %38, %struct.btrfs_path** %16, align 8
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %40 = icmp ne %struct.btrfs_path* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %7
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %151

44:                                               ; preds = %7
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %46 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %50 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %47, %struct.btrfs_root* %48, %struct.btrfs_key* %17, %struct.btrfs_path* %49, i32 -1, i32 1)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %20, align 4
  br label %56

56:                                               ; preds = %53, %44
  %57 = load i32, i32* %20, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %147

60:                                               ; preds = %56
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %62 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %61, i32 0, i32 2
  %63 = load %struct.extent_buffer**, %struct.extent_buffer*** %62, align 8
  %64 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %63, i64 0
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %64, align 8
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %67 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call %struct.btrfs_inode_extref* @btrfs_find_name_in_ext_backref(%struct.extent_buffer* %65, i32 %70, i32 %71, i8* %72, i32 %73)
  store %struct.btrfs_inode_extref* %74, %struct.btrfs_inode_extref** %18, align 8
  %75 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %18, align 8
  %76 = icmp ne %struct.btrfs_inode_extref* %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %60
  %78 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %79 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  %83 = call i32 @btrfs_handle_fs_error(i32 %80, i32 %82, i32* null)
  %84 = load i32, i32* @EROFS, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %20, align 4
  br label %147

86:                                               ; preds = %60
  %87 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %88 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %87, i32 0, i32 2
  %89 = load %struct.extent_buffer**, %struct.extent_buffer*** %88, align 8
  %90 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %89, i64 0
  %91 = load %struct.extent_buffer*, %struct.extent_buffer** %90, align 8
  store %struct.extent_buffer* %91, %struct.extent_buffer** %19, align 8
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %93 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %94 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @btrfs_item_size_nr(%struct.extent_buffer* %92, i32 %97)
  store i32 %98, i32* %24, align 4
  %99 = load i32*, i32** %15, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %86
  %102 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %103 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %18, align 8
  %104 = call i32 @btrfs_inode_extref_index(%struct.extent_buffer* %102, %struct.btrfs_inode_extref* %103)
  %105 = load i32*, i32** %15, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %86
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %24, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %112 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %113 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %114 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %111, %struct.btrfs_root* %112, %struct.btrfs_path* %113)
  store i32 %114, i32* %20, align 4
  br label %147

115:                                              ; preds = %106
  %116 = load %struct.btrfs_inode_extref*, %struct.btrfs_inode_extref** %18, align 8
  %117 = ptrtoint %struct.btrfs_inode_extref* %116 to i64
  store i64 %117, i64* %22, align 8
  %118 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %119 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %120 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %118, i32 %123)
  store i64 %124, i64* %23, align 8
  %125 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %126 = load i64, i64* %22, align 8
  %127 = load i64, i64* %22, align 8
  %128 = load i32, i32* %21, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %127, %129
  %131 = load i32, i32* %24, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %22, align 8
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %133, %135
  %137 = load i64, i64* %23, align 8
  %138 = sub i64 %136, %137
  %139 = sub i64 %132, %138
  %140 = trunc i64 %139 to i32
  %141 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %125, i64 %126, i64 %130, i32 %140)
  %142 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %143 = load i32, i32* %24, align 4
  %144 = load i32, i32* %21, align 4
  %145 = sub nsw i32 %143, %144
  %146 = call i32 @btrfs_truncate_item(%struct.btrfs_path* %142, i32 %145, i32 1)
  br label %147

147:                                              ; preds = %115, %110, %77, %59
  %148 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %149 = call i32 @btrfs_free_path(%struct.btrfs_path* %148)
  %150 = load i32, i32* %20, align 4
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %147, %41
  %152 = load i32, i32* %8, align 4
  ret i32 %152
}

declare dso_local i32 @btrfs_extref_hash(i32, i8*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.btrfs_inode_extref* @btrfs_find_name_in_ext_backref(%struct.extent_buffer*, i32, i32, i8*, i32) #1

declare dso_local i32 @btrfs_handle_fs_error(i32, i32, i32*) #1

declare dso_local i32 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_inode_extref_index(%struct.extent_buffer*, %struct.btrfs_inode_extref*) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i64, i64, i32) #1

declare dso_local i32 @btrfs_truncate_item(%struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
