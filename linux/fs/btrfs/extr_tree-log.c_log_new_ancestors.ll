; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_log_new_ancestors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_log_new_ancestors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i64, i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_log_ctx = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i64 }

@BTRFS_INODE_ITEM_KEY = common dso_local global i64 0, align 8
@LOG_INODE_EXISTS = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_INODE_REF_KEY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_log_ctx*)* @log_new_ancestors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_new_ancestors(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.btrfs_log_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_log_ctx*, align 8
  %10 = alloca %struct.btrfs_key, align 8
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_key, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store %struct.btrfs_log_ctx* %3, %struct.btrfs_log_ctx** %9, align 8
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %19 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %18, i32 0, i32 1
  %20 = load %struct.extent_buffer**, %struct.extent_buffer*** %19, align 8
  %21 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %20, i64 0
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %24 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %22, %struct.btrfs_key* %10, i32 %27)
  br label %29

29:                                               ; preds = %4, %162
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 0
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %31, align 8
  store %struct.btrfs_fs_info* %32, %struct.btrfs_fs_info** %11, align 8
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %34 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 1
  %38 = load %struct.extent_buffer**, %struct.extent_buffer*** %37, align 8
  %39 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %38, i64 0
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %39, align 8
  store %struct.extent_buffer* %40, %struct.extent_buffer** %13, align 8
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %42 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %47 = call i32 @btrfs_release_path(%struct.btrfs_path* %46)
  %48 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* @BTRFS_INODE_ITEM_KEY, align 8
  %52 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 2
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %55 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %58 = call %struct.inode* @btrfs_iget(i32 %56, %struct.btrfs_key* %15, %struct.btrfs_root* %57, i32* null)
  store %struct.inode* %58, %struct.inode** %16, align 8
  %59 = load %struct.inode*, %struct.inode** %16, align 8
  %60 = call i64 @IS_ERR(%struct.inode* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %29
  %63 = load %struct.inode*, %struct.inode** %16, align 8
  %64 = call i32 @PTR_ERR(%struct.inode* %63)
  store i32 %64, i32* %5, align 4
  br label %164

65:                                               ; preds = %29
  %66 = load %struct.inode*, %struct.inode** %16, align 8
  %67 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %75 = load %struct.inode*, %struct.inode** %16, align 8
  %76 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %75)
  %77 = load i32, i32* @LOG_INODE_EXISTS, align 4
  %78 = load i32, i32* @LLONG_MAX, align 4
  %79 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %9, align 8
  %80 = call i32 @btrfs_log_inode(%struct.btrfs_trans_handle* %73, %struct.btrfs_root* %74, %struct.TYPE_3__* %76, i32 %77, i32 0, i32 %78, %struct.btrfs_log_ctx* %79)
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %72, %65
  %82 = load %struct.inode*, %struct.inode** %16, align 8
  %83 = call i32 @btrfs_add_delayed_iput(%struct.inode* %82)
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %5, align 4
  br label %164

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %163

94:                                               ; preds = %88
  %95 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %96 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 2
  store i64 %95, i64* %96, align 8
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %98 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %99 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %97, %struct.btrfs_key* %15, %struct.btrfs_path* %98, i32 0, i32 0)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %17, align 4
  store i32 %103, i32* %5, align 4
  br label %164

104:                                              ; preds = %94
  %105 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %106 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %105, i32 0, i32 1
  %107 = load %struct.extent_buffer**, %struct.extent_buffer*** %106, align 8
  %108 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %107, i64 0
  %109 = load %struct.extent_buffer*, %struct.extent_buffer** %108, align 8
  store %struct.extent_buffer* %109, %struct.extent_buffer** %13, align 8
  %110 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %111 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %117 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %116)
  %118 = icmp sge i32 %115, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %104
  %120 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %121 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %122 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %120, %struct.btrfs_path* %121)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %17, align 4
  store i32 %126, i32* %5, align 4
  br label %164

127:                                              ; preds = %119
  %128 = load i32, i32* %17, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* @ENOENT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %164

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %136 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %135, i32 0, i32 1
  %137 = load %struct.extent_buffer**, %struct.extent_buffer*** %136, align 8
  %138 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %137, i64 0
  %139 = load %struct.extent_buffer*, %struct.extent_buffer** %138, align 8
  store %struct.extent_buffer* %139, %struct.extent_buffer** %13, align 8
  %140 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %141 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %134, %104
  %146 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %146, %struct.btrfs_key* %10, i32 %147)
  %149 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %15, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %150, %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %145
  %155 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @BTRFS_INODE_REF_KEY, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154, %145
  %160 = load i32, i32* @ENOENT, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %164

162:                                              ; preds = %154
  br label %29

163:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %163, %159, %130, %125, %102, %86, %62
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local %struct.inode* @btrfs_iget(i32, %struct.btrfs_key*, %struct.btrfs_root*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_log_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.TYPE_3__*, i32, i32, i32, %struct.btrfs_log_ctx*) #1

declare dso_local i32 @btrfs_add_delayed_iput(%struct.inode*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
