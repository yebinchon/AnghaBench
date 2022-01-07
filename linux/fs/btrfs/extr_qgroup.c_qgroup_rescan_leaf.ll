; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_rescan_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_rescan_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.TYPE_2__, i8*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i8*, i8* }
%struct.ulist = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"current progress key (%llu %u %llu), search_slot ret %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_EXTENT_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_METADATA_ITEM_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_path*)* @qgroup_rescan_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qgroup_rescan_leaf(%struct.btrfs_trans_handle* %0, %struct.btrfs_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.ulist*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  %14 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %14, i32 0, i32 0
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %6, align 8
  store %struct.extent_buffer* null, %struct.extent_buffer** %8, align 8
  store %struct.ulist* null, %struct.ulist** %9, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 0
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %26 = call i32 @btrfs_search_slot_for_read(i32 %22, %struct.TYPE_2__* %24, %struct.btrfs_path* %25, i32 1, i32 0)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %33 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %37 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %27, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %35, i32 %39, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %2
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %47, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %49 = call i32 @btrfs_release_path(%struct.btrfs_path* %48)
  %50 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %51 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %3, align 4
  br label %173

54:                                               ; preds = %2
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %56 = call i32 @is_last_leaf(%struct.btrfs_path* %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %58 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %57, i32 0, i32 1
  %59 = load %struct.extent_buffer**, %struct.extent_buffer*** %58, align 8
  %60 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %59, i64 0
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %60, align 8
  %62 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %63 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %62, i32 0, i32 1
  %64 = load %struct.extent_buffer**, %struct.extent_buffer*** %63, align 8
  %65 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %64, i64 0
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %65, align 8
  %67 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %66)
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %61, %struct.btrfs_key* %7, i32 %68)
  %70 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr i8, i8* %71, i64 1
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %74 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %77 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %76, i32 0, i32 1
  %78 = load %struct.extent_buffer**, %struct.extent_buffer*** %77, align 8
  %79 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %78, i64 0
  %80 = load %struct.extent_buffer*, %struct.extent_buffer** %79, align 8
  %81 = call %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer* %80)
  store %struct.extent_buffer* %81, %struct.extent_buffer** %8, align 8
  %82 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %83 = icmp ne %struct.extent_buffer* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %54
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  %87 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %88 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %87, i32 0, i32 2
  %89 = call i32 @mutex_unlock(i32* %88)
  br label %155

90:                                               ; preds = %54
  %91 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %92 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %12, align 4
  %96 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %97 = call i32 @btrfs_release_path(%struct.btrfs_path* %96)
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %99 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %98, i32 0, i32 2
  %100 = call i32 @mutex_unlock(i32* %99)
  br label %101

101:                                              ; preds = %151, %90
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %104 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %103)
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %154

106:                                              ; preds = %101
  %107 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %107, %struct.btrfs_key* %7, i32 %108)
  %110 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BTRFS_EXTENT_ITEM_KEY, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @BTRFS_METADATA_ITEM_KEY, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %151

120:                                              ; preds = %114, %106
  %121 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @BTRFS_METADATA_ITEM_KEY, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %127 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %10, align 8
  br label %132

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %10, align 8
  br label %132

132:                                              ; preds = %129, %125
  %133 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %134 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @btrfs_find_all_roots(i32* null, %struct.btrfs_fs_info* %133, i8* %135, i32 0, %struct.ulist** %9, i32 0)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %155

140:                                              ; preds = %132
  %141 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %142 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load %struct.ulist*, %struct.ulist** %9, align 8
  %146 = call i32 @btrfs_qgroup_account_extent(%struct.btrfs_trans_handle* %141, i8* %143, i8* %144, i32* null, %struct.ulist* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %155

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %119
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %101

154:                                              ; preds = %101
  br label %155

155:                                              ; preds = %154, %149, %139, %84
  %156 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %157 = icmp ne %struct.extent_buffer* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %160 = call i32 @free_extent_buffer(%struct.extent_buffer* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  store i32 1, i32* %13, align 4
  %168 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %169 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %170, align 8
  br label %171

171:                                              ; preds = %167, %164, %161
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %44
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @btrfs_search_slot_for_read(i32, %struct.TYPE_2__*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @is_last_leaf(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_find_all_roots(i32*, %struct.btrfs_fs_info*, i8*, i32, %struct.ulist**, i32) #1

declare dso_local i32 @btrfs_qgroup_account_extent(%struct.btrfs_trans_handle*, i8*, i8*, i32*, %struct.ulist*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
