; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_find_free_extent_update_loop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_find_free_extent_update_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.btrfs_trans_handle* }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_free_cluster = type { i32, i64 }
%struct.btrfs_key = type { i64 }
%struct.find_free_extent_ctl = type { i64, i32, i64, i64, i64, i32, i64 }

@LOOP_CACHING_NOWAIT = common dso_local global i64 0, align 8
@LOOP_CACHING_WAIT = common dso_local global i64 0, align 8
@BTRFS_NR_RAID_TYPES = common dso_local global i64 0, align 8
@LOOP_NO_EMPTY_SIZE = common dso_local global i64 0, align 8
@LOOP_ALLOC_CHUNK = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@CHUNK_ALLOC_FORCE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_free_cluster*, %struct.btrfs_key*, %struct.find_free_extent_ctl*, i32, i32)* @find_free_extent_update_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_extent_update_loop(%struct.btrfs_fs_info* %0, %struct.btrfs_free_cluster* %1, %struct.btrfs_key* %2, %struct.find_free_extent_ctl* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_free_cluster*, align 8
  %10 = alloca %struct.btrfs_key*, align 8
  %11 = alloca %struct.find_free_extent_ctl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_root*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_trans_handle*, align 8
  %17 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_free_cluster* %1, %struct.btrfs_free_cluster** %9, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %10, align 8
  store %struct.find_free_extent_ctl* %3, %struct.find_free_extent_ctl** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 0
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %14, align 8
  %21 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %22 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LOOP_CACHING_NOWAIT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %6
  %27 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %28 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %33 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %38 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %31, %26, %6
  %40 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %41 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %46 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LOOP_CACHING_WAIT, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %52 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %7, align 4
  br label %221

56:                                               ; preds = %50, %44, %39
  %57 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %58 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %63 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* @BTRFS_NR_RAID_TYPES, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %221

69:                                               ; preds = %61, %56
  %70 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %71 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %74
  %78 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %9, align 8
  %79 = icmp ne %struct.btrfs_free_cluster* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %9, align 8
  %82 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %81, i32 0, i32 0
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %85 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %9, align 8
  %88 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %9, align 8
  %90 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  br label %92

92:                                               ; preds = %80, %77, %74
  store i32 0, i32* %7, align 4
  br label %221

93:                                               ; preds = %69
  %94 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %95 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LOOP_NO_EMPTY_SIZE, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %218

99:                                               ; preds = %93
  %100 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %101 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %103 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @LOOP_CACHING_NOWAIT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %99
  %108 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %109 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112, %107
  %116 = load i64, i64* @LOOP_CACHING_WAIT, align 8
  %117 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %118 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %123

119:                                              ; preds = %112
  %120 = load i64, i64* @LOOP_ALLOC_CHUNK, align 8
  %121 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %122 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %115
  br label %129

124:                                              ; preds = %99
  %125 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %126 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %124, %123
  %130 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %131 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @LOOP_ALLOC_CHUNK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %193

135:                                              ; preds = %129
  store i32 0, i32* %17, align 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %137, align 8
  store %struct.btrfs_trans_handle* %138, %struct.btrfs_trans_handle** %16, align 8
  %139 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %140 = icmp ne %struct.btrfs_trans_handle* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 1, i32* %17, align 4
  br label %145

142:                                              ; preds = %135
  %143 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %144 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %143)
  store %struct.btrfs_trans_handle* %144, %struct.btrfs_trans_handle** %16, align 8
  br label %145

145:                                              ; preds = %142, %141
  %146 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %147 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %151 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %150)
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  store i32 %152, i32* %7, align 4
  br label %221

153:                                              ; preds = %145
  %154 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %155 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %156 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @CHUNK_ALLOC_FORCE, align 4
  %159 = call i32 @btrfs_chunk_alloc(%struct.btrfs_trans_handle* %154, i32 %157, i32 %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* @ENOSPC, align 4
  %162 = sub nsw i32 0, %161
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %153
  %165 = load i64, i64* @LOOP_NO_EMPTY_SIZE, align 8
  %166 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %167 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %164, %153
  %169 = load i32, i32* %15, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* @ENOSPC, align 4
  %174 = sub nsw i32 0, %173
  %175 = icmp ne i32 %172, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %177, i32 %178)
  br label %181

180:                                              ; preds = %171, %168
  store i32 0, i32* %15, align 4
  br label %181

181:                                              ; preds = %180, %176
  %182 = load i32, i32* %17, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %16, align 8
  %186 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load i32, i32* %15, align 4
  store i32 %191, i32* %7, align 4
  br label %221

192:                                              ; preds = %187
  br label %193

193:                                              ; preds = %192, %129
  %194 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %195 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @LOOP_NO_EMPTY_SIZE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %217

199:                                              ; preds = %193
  %200 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %201 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %206 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i32, i32* @ENOSPC, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %7, align 4
  br label %221

212:                                              ; preds = %204, %199
  %213 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %214 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %213, i32 0, i32 3
  store i64 0, i64* %214, align 8
  %215 = load %struct.find_free_extent_ctl*, %struct.find_free_extent_ctl** %11, align 8
  %216 = getelementptr inbounds %struct.find_free_extent_ctl, %struct.find_free_extent_ctl* %215, i32 0, i32 4
  store i64 0, i64* %216, align 8
  br label %217

217:                                              ; preds = %212, %193
  store i32 1, i32* %7, align 4
  br label %221

218:                                              ; preds = %93
  %219 = load i32, i32* @ENOSPC, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %7, align 4
  br label %221

221:                                              ; preds = %218, %217, %209, %190, %149, %92, %68, %55
  %222 = load i32, i32* %7, align 4
  ret i32 %222
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_chunk_alloc(%struct.btrfs_trans_handle*, i32, i32) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
