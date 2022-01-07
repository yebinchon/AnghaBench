; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_del_inode_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_del_inode_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32, i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32, i8*, i8* }
%struct.btrfs_inode_ref = type { i32 }

@BTRFS_INODE_REF_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_del_inode_ref(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i8* %2, i32 %3, i8* %4, i8* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.btrfs_path*, align 8
  %17 = alloca %struct.btrfs_key, align 8
  %18 = alloca %struct.btrfs_inode_ref*, align 8
  %19 = alloca %struct.extent_buffer*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %25, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @BTRFS_INODE_REF_KEY, align 4
  %36 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %37, %struct.btrfs_path** %16, align 8
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %39 = icmp ne %struct.btrfs_path* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %7
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %159

43:                                               ; preds = %7
  %44 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %45 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %49 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %46, %struct.btrfs_root* %47, %struct.btrfs_key* %17, %struct.btrfs_path* %48, i32 -1, i32 1)
  store i32 %49, i32* %24, align 4
  %50 = load i32, i32* %24, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %24, align 4
  store i32 1, i32* %25, align 4
  br label %143

55:                                               ; preds = %43
  %56 = load i32, i32* %24, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %143

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59
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
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call %struct.btrfs_inode_ref* @btrfs_find_name_in_backref(%struct.extent_buffer* %65, i32 %70, i8* %71, i32 %72)
  store %struct.btrfs_inode_ref* %73, %struct.btrfs_inode_ref** %18, align 8
  %74 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %18, align 8
  %75 = icmp ne %struct.btrfs_inode_ref* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %60
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %24, align 4
  store i32 1, i32* %25, align 4
  br label %143

79:                                               ; preds = %60
  %80 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %81 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %80, i32 0, i32 2
  %82 = load %struct.extent_buffer**, %struct.extent_buffer*** %81, align 8
  %83 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %82, i64 0
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %83, align 8
  store %struct.extent_buffer* %84, %struct.extent_buffer** %19, align 8
  %85 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %86 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %87 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @btrfs_item_size_nr(%struct.extent_buffer* %85, i32 %90)
  store i32 %91, i32* %22, align 4
  %92 = load i8**, i8*** %15, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %79
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %96 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %18, align 8
  %97 = call i8* @btrfs_inode_ref_index(%struct.extent_buffer* %95, %struct.btrfs_inode_ref* %96)
  %98 = load i8**, i8*** %15, align 8
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %94, %79
  %100 = load i32, i32* %26, align 4
  %101 = load i32, i32* %22, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %105 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %106 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %107 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %104, %struct.btrfs_root* %105, %struct.btrfs_path* %106)
  store i32 %107, i32* %24, align 4
  br label %143

108:                                              ; preds = %99
  %109 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %18, align 8
  %110 = ptrtoint %struct.btrfs_inode_ref* %109 to i64
  store i64 %110, i64* %20, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, 4
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %23, align 4
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %116 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %117 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %115, i32 %120)
  store i64 %121, i64* %21, align 8
  %122 = load %struct.extent_buffer*, %struct.extent_buffer** %19, align 8
  %123 = load i64, i64* %20, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i32, i32* %23, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %124, %126
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %20, align 8
  %131 = load i32, i32* %23, align 4
  %132 = sext i32 %131 to i64
  %133 = add i64 %130, %132
  %134 = load i64, i64* %21, align 8
  %135 = sub i64 %133, %134
  %136 = sub i64 %129, %135
  %137 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %122, i64 %123, i64 %127, i64 %136)
  %138 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %23, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call i32 @btrfs_truncate_item(%struct.btrfs_path* %138, i32 %141, i32 1)
  br label %143

143:                                              ; preds = %108, %103, %76, %58, %52
  %144 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %145 = call i32 @btrfs_free_path(%struct.btrfs_path* %144)
  %146 = load i32, i32* %25, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %150 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i8*, i8** %13, align 8
  %154 = load i8*, i8** %14, align 8
  %155 = load i8**, i8*** %15, align 8
  %156 = call i32 @btrfs_del_inode_extref(%struct.btrfs_trans_handle* %149, %struct.btrfs_root* %150, i8* %151, i32 %152, i8* %153, i8* %154, i8** %155)
  store i32 %156, i32* %8, align 4
  br label %159

157:                                              ; preds = %143
  %158 = load i32, i32* %24, align 4
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %157, %148, %40
  %160 = load i32, i32* %8, align 4
  ret i32 %160
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.btrfs_inode_ref* @btrfs_find_name_in_backref(%struct.extent_buffer*, i32, i8*, i32) #1

declare dso_local i32 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i8* @btrfs_inode_ref_index(%struct.extent_buffer*, %struct.btrfs_inode_ref*) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i64, i64, i64) #1

declare dso_local i32 @btrfs_truncate_item(%struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_del_inode_extref(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i8*, i32, i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
