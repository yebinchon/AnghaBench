; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_uuid-tree.c_btrfs_uuid_tree_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_uuid-tree.c_btrfs_uuid_tree_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"error %d while searching for uuid item!\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"uuid item with illegal size %lu!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_uuid_tree_remove(%struct.btrfs_trans_handle* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca %struct.btrfs_key, align 4
  %14 = alloca %struct.extent_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %22 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %22, i32 0, i32 0
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %23, align 8
  store %struct.btrfs_fs_info* %24, %struct.btrfs_fs_info** %9, align 8
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %25, i32 0, i32 0
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %26, align 8
  store %struct.btrfs_root* %27, %struct.btrfs_root** %10, align 8
  store %struct.btrfs_path* null, %struct.btrfs_path** %12, align 8
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %29 = icmp ne %struct.btrfs_root* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %153

37:                                               ; preds = %4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @btrfs_uuid_to_key(i32* %38, i32 %39, %struct.btrfs_key* %13)
  %41 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %41, %struct.btrfs_path** %12, align 8
  %42 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %43 = icmp ne %struct.btrfs_path* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %153

47:                                               ; preds = %37
  %48 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %51 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %48, %struct.btrfs_root* %49, %struct.btrfs_key* %13, %struct.btrfs_path* %50, i32 -1, i32 1)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %153

59:                                               ; preds = %47
  %60 = load i32, i32* %11, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %153

65:                                               ; preds = %59
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %67 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %66, i32 0, i32 1
  %68 = load %struct.extent_buffer**, %struct.extent_buffer*** %67, align 8
  %69 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %68, i64 0
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %69, align 8
  store %struct.extent_buffer* %70, %struct.extent_buffer** %14, align 8
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %72 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %15, align 4
  %76 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %76, i32 %77)
  store i64 %78, i64* %16, align 8
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @btrfs_item_size_nr(%struct.extent_buffer* %79, i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @IS_ALIGNED(i32 %82, i32 8)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %65
  %86 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @ENOENT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %11, align 4
  br label %153

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %105, %92
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %93
  %97 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %98 = load i64, i64* %16, align 8
  %99 = call i32 @read_extent_buffer(%struct.extent_buffer* %97, i32* %21, i64 %98, i32 4)
  %100 = load i32, i32* %21, align 4
  %101 = call i64 @le64_to_cpu(i32 %100)
  %102 = load i64, i64* %8, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %112

105:                                              ; preds = %96
  %106 = load i64, i64* %16, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %16, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 %109, 4
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %17, align 4
  br label %93

112:                                              ; preds = %104, %93
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @ENOENT, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %11, align 4
  br label %153

118:                                              ; preds = %112
  %119 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @btrfs_item_size_nr(%struct.extent_buffer* %119, i32 %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp eq i64 %123, 8
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %127 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %128 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %129 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %126, %struct.btrfs_root* %127, %struct.btrfs_path* %128)
  store i32 %129, i32* %11, align 4
  br label %153

130:                                              ; preds = %118
  %131 = load i64, i64* %16, align 8
  store i64 %131, i64* %18, align 8
  %132 = load i64, i64* %16, align 8
  %133 = add i64 %132, 8
  store i64 %133, i64* %19, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %19, align 8
  %137 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %138 = load i32, i32* %15, align 4
  %139 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %137, i32 %138)
  %140 = sub i64 %136, %139
  %141 = sub i64 %135, %140
  store i64 %141, i64* %20, align 8
  %142 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %143 = load i64, i64* %18, align 8
  %144 = load i64, i64* %19, align 8
  %145 = load i64, i64* %20, align 8
  %146 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %142, i64 %143, i64 %144, i64 %145)
  %147 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = sub i64 %149, 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @btrfs_truncate_item(%struct.btrfs_path* %147, i32 %151, i32 1)
  br label %153

153:                                              ; preds = %130, %125, %115, %85, %62, %54, %44, %34
  %154 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %155 = call i32 @btrfs_free_path(%struct.btrfs_path* %154)
  %156 = load i32, i32* %11, align 4
  ret i32 %156
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @btrfs_uuid_to_key(i32*, i32, %struct.btrfs_key*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i64) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i32*, i64, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i64, i64, i64) #1

declare dso_local i32 @btrfs_truncate_item(%struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
