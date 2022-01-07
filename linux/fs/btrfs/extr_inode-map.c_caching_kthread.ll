; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_caching_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_caching_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32, i32, i32, i32, %struct.btrfs_free_space_ctl*, %struct.btrfs_fs_info* }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i32, i64, i64 }
%struct.btrfs_path = type { i32, i32, i32*, %struct.extent_buffer**, i32 }
%struct.extent_buffer = type { i32 }

@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@READA_FORWARD = common dso_local global i32 0, align 4
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_CACHE_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @caching_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caching_kthread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_free_space_ctl*, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.btrfs_root*
  store %struct.btrfs_root* %14, %struct.btrfs_root** %4, align 8
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 6
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %5, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 5
  %20 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %19, align 8
  store %struct.btrfs_free_space_ctl* %20, %struct.btrfs_free_space_ctl** %6, align 8
  store i32 -1, i32* %10, align 4
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %22 = load i32, i32* @INODE_MAP_CACHE, align 4
  %23 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %217

26:                                               ; preds = %1
  %27 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %27, %struct.btrfs_path** %8, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %29 = icmp ne %struct.btrfs_path* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %32 = call i32 @fail_caching_thread(%struct.btrfs_root* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %217

35:                                               ; preds = %26
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @READA_FORWARD, align 4
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %42 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %44 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* @BTRFS_INODE_ITEM_KEY, align 8
  %47 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %111, %35
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %50 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %49, i32 0, i32 0
  %51 = call i32 @down_read(i32* %50)
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %54 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %52, %struct.btrfs_key* %7, %struct.btrfs_path* %53, i32 0, i32 0)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %207

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %123, %167
  %60 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %61 = call i64 @btrfs_fs_closing(%struct.btrfs_fs_info* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %207

64:                                               ; preds = %59
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %66 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %65, i32 0, i32 3
  %67 = load %struct.extent_buffer**, %struct.extent_buffer*** %66, align 8
  %68 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %67, i64 0
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %68, align 8
  store %struct.extent_buffer* %69, %struct.extent_buffer** %9, align 8
  %70 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %71 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %77 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %76)
  %78 = icmp sge i32 %75, %77
  br i1 %78, label %79, label %124

79:                                               ; preds = %64
  %80 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %81 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %82 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %80, %struct.btrfs_path* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %207

86:                                               ; preds = %79
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %174

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90
  %92 = call i64 (...) @need_resched()
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %96 = call i64 @btrfs_transaction_in_commit(%struct.btrfs_fs_info* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %94, %91
  %99 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %100 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %99, i32 0, i32 3
  %101 = load %struct.extent_buffer**, %struct.extent_buffer*** %100, align 8
  %102 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %101, i64 0
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %102, align 8
  store %struct.extent_buffer* %103, %struct.extent_buffer** %9, align 8
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %105 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %104)
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i64 @WARN_ON(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %174

111:                                              ; preds = %98
  %112 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %113 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %112, %struct.btrfs_key* %7, i32 0)
  %114 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %115 = call i32 @btrfs_release_path(%struct.btrfs_path* %114)
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %118 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %120 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %119, i32 0, i32 0
  %121 = call i32 @up_read(i32* %120)
  %122 = call i32 @schedule_timeout(i32 1)
  br label %48

123:                                              ; preds = %94
  br label %59

124:                                              ; preds = %64
  %125 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %125, %struct.btrfs_key* %7, i32 %126)
  %128 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @BTRFS_INODE_ITEM_KEY, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %167

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %137 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sge i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %174

141:                                              ; preds = %133
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %164

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  %147 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %144
  %151 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %152 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  %155 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sub nsw i32 %158, 1
  %160 = call i32 @__btrfs_add_free_space(%struct.btrfs_fs_info* %151, %struct.btrfs_free_space_ctl* %152, i32 %154, i32 %159)
  %161 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %162 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %161, i32 0, i32 2
  %163 = call i32 @wake_up(i32* %162)
  br label %164

164:                                              ; preds = %150, %144, %141
  %165 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %164, %132
  %168 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %169 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %59

174:                                              ; preds = %140, %110, %89
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %177 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, 1
  %180 = icmp slt i32 %175, %179
  br i1 %180, label %181, label %193

181:                                              ; preds = %174
  %182 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %183 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  %186 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %187 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %10, align 4
  %190 = sub nsw i32 %188, %189
  %191 = sub nsw i32 %190, 1
  %192 = call i32 @__btrfs_add_free_space(%struct.btrfs_fs_info* %182, %struct.btrfs_free_space_ctl* %183, i32 %185, i32 %191)
  br label %193

193:                                              ; preds = %181, %174
  %194 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %195 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %194, i32 0, i32 3
  %196 = call i32 @spin_lock(i32* %195)
  %197 = load i32, i32* @BTRFS_CACHE_FINISHED, align 4
  %198 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %199 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 8
  %200 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %201 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %200, i32 0, i32 3
  %202 = call i32 @spin_unlock(i32* %201)
  %203 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %204 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %203, i32 0, i32 0
  store i32 -1, i32* %204, align 8
  %205 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %206 = call i32 @btrfs_unpin_free_ino(%struct.btrfs_root* %205)
  br label %207

207:                                              ; preds = %193, %85, %63, %57
  %208 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %209 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %208, i32 0, i32 2
  %210 = call i32 @wake_up(i32* %209)
  %211 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %212 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %211, i32 0, i32 0
  %213 = call i32 @up_read(i32* %212)
  %214 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %215 = call i32 @btrfs_free_path(%struct.btrfs_path* %214)
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %207, %30, %25
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @fail_caching_thread(%struct.btrfs_root*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_fs_closing(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i64 @btrfs_transaction_in_commit(%struct.btrfs_fs_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @__btrfs_add_free_space(%struct.btrfs_fs_info*, %struct.btrfs_free_space_ctl*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_unpin_free_ino(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
