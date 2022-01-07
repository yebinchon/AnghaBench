; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_realloc_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_realloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64, i64 }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i64, i64, i32 }
%struct.extent_buffer = type { i64 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_realloc_node(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.extent_buffer* %2, i32 %3, i64* %4, %struct.btrfs_key* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.btrfs_key*, align 8
  %14 = alloca %struct.btrfs_fs_info*, align 8
  %15 = alloca %struct.extent_buffer*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.btrfs_disk_key, align 4
  %30 = alloca %struct.btrfs_key, align 4
  %31 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %9, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store %struct.btrfs_key* %5, %struct.btrfs_key** %13, align 8
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 0
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %33, align 8
  store %struct.btrfs_fs_info* %34, %struct.btrfs_fs_info** %14, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %28, align 4
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %38 = call i32 @btrfs_header_level(%struct.extent_buffer* %37)
  store i32 %38, i32* %25, align 4
  %39 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %40 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %43 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %49 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @WARN_ON(i32 %55)
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %58 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %57)
  store i32 %58, i32* %21, align 4
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %60 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %27, align 4
  %62 = load i32, i32* %21, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %21, align 4
  %65 = icmp sle i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %245

67:                                               ; preds = %6
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %69 = call i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer* %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %23, align 4
  br label %71

71:                                               ; preds = %240, %67
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %22, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %243

75:                                               ; preds = %71
  store i32 1, i32* %31, align 4
  %76 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %77 = load i32, i32* %23, align 4
  %78 = call i32 @btrfs_node_key(%struct.extent_buffer* %76, %struct.btrfs_disk_key* %29, i32 %77)
  %79 = load i32, i32* %28, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load %struct.btrfs_key*, %struct.btrfs_key** %13, align 8
  %83 = call i64 @comp_keys(%struct.btrfs_disk_key* %29, %struct.btrfs_key* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %240

86:                                               ; preds = %81, %75
  store i32 1, i32* %28, align 4
  %87 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %88 = load i32, i32* %23, align 4
  %89 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %87, i32 %88)
  store i64 %89, i64* %16, align 8
  %90 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %91 = load i32, i32* %23, align 4
  %92 = call i64 @btrfs_node_ptr_generation(%struct.extent_buffer* %90, i32 %91)
  store i64 %92, i64* %17, align 8
  %93 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %94 = load i32, i32* %23, align 4
  %95 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %93, %struct.btrfs_key* %30, i32 %94)
  %96 = load i64, i64* %19, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i64, i64* %16, align 8
  store i64 %99, i64* %19, align 8
  br label %100

100:                                              ; preds = %98, %86
  %101 = load i32, i32* %23, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %105 = load i32, i32* %23, align 4
  %106 = sub nsw i32 %105, 1
  %107 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %104, i32 %106)
  store i64 %107, i64* %20, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %20, align 8
  %110 = load i32, i32* %27, align 4
  %111 = call i32 @close_blocks(i64 %108, i64 %109, i32 %110)
  store i32 %111, i32* %31, align 4
  br label %112

112:                                              ; preds = %103, %100
  %113 = load i32, i32* %31, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* %22, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %121 = load i32, i32* %23, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i64 @btrfs_node_blockptr(%struct.extent_buffer* %120, i32 %122)
  store i64 %123, i64* %20, align 8
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %20, align 8
  %126 = load i32, i32* %27, align 4
  %127 = call i32 @close_blocks(i64 %124, i64 %125, i32 %126)
  store i32 %127, i32* %31, align 4
  br label %128

128:                                              ; preds = %119, %115, %112
  %129 = load i32, i32* %31, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i64, i64* %16, align 8
  store i64 %132, i64* %19, align 8
  br label %240

133:                                              ; preds = %128
  %134 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %135 = load i64, i64* %16, align 8
  %136 = call %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info* %134, i64 %135)
  store %struct.extent_buffer* %136, %struct.extent_buffer** %15, align 8
  %137 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %138 = icmp ne %struct.extent_buffer* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %141 = load i64, i64* %17, align 8
  %142 = call i32 @btrfs_buffer_uptodate(%struct.extent_buffer* %140, i64 %141, i32 0)
  store i32 %142, i32* %26, align 4
  br label %144

143:                                              ; preds = %133
  store i32 0, i32* %26, align 4
  br label %144

144:                                              ; preds = %143, %139
  %145 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %146 = icmp ne %struct.extent_buffer* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %26, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %195, label %150

150:                                              ; preds = %147, %144
  %151 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %152 = icmp ne %struct.extent_buffer* %151, null
  br i1 %152, label %177, label %153

153:                                              ; preds = %150
  %154 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* %17, align 8
  %157 = load i32, i32* %25, align 4
  %158 = sub nsw i32 %157, 1
  %159 = call %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info* %154, i64 %155, i64 %156, i32 %158, %struct.btrfs_key* %30)
  store %struct.extent_buffer* %159, %struct.extent_buffer** %15, align 8
  %160 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %161 = call i64 @IS_ERR(%struct.extent_buffer* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %153
  %164 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %165 = call i32 @PTR_ERR(%struct.extent_buffer* %164)
  store i32 %165, i32* %7, align 4
  br label %245

166:                                              ; preds = %153
  %167 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %168 = call i32 @extent_buffer_uptodate(%struct.extent_buffer* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %166
  %171 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %172 = call i32 @free_extent_buffer(%struct.extent_buffer* %171)
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %7, align 4
  br label %245

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %175
  br label %194

177:                                              ; preds = %150
  %178 = load i32, i32* %26, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %193, label %180

180:                                              ; preds = %177
  %181 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %182 = load i64, i64* %17, align 8
  %183 = load i32, i32* %25, align 4
  %184 = sub nsw i32 %183, 1
  %185 = call i32 @btrfs_read_buffer(%struct.extent_buffer* %181, i64 %182, i32 %184, %struct.btrfs_key* %30)
  store i32 %185, i32* %24, align 4
  %186 = load i32, i32* %24, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %190 = call i32 @free_extent_buffer(%struct.extent_buffer* %189)
  %191 = load i32, i32* %24, align 4
  store i32 %191, i32* %7, align 4
  br label %245

192:                                              ; preds = %180
  br label %193

193:                                              ; preds = %192, %177
  br label %194

194:                                              ; preds = %193, %176
  br label %195

195:                                              ; preds = %194, %147
  %196 = load i64, i64* %18, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i64, i64* %19, align 8
  store i64 %199, i64* %18, align 8
  br label %200

200:                                              ; preds = %198, %195
  %201 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %202 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %201)
  %203 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %204 = call i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer* %203)
  %205 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %206 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %207 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %208 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %209 = load i32, i32* %23, align 4
  %210 = load i64, i64* %18, align 8
  %211 = load i32, i32* %27, align 4
  %212 = mul nsw i32 16, %211
  %213 = load i32, i32* %22, align 4
  %214 = load i32, i32* %23, align 4
  %215 = sub nsw i32 %213, %214
  %216 = load i32, i32* %27, align 4
  %217 = mul nsw i32 %215, %216
  %218 = call i32 @min(i32 %212, i32 %217)
  %219 = call i32 @__btrfs_cow_block(%struct.btrfs_trans_handle* %205, %struct.btrfs_root* %206, %struct.extent_buffer* %207, %struct.extent_buffer* %208, i32 %209, %struct.extent_buffer** %15, i64 %210, i32 %218)
  store i32 %219, i32* %24, align 4
  %220 = load i32, i32* %24, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %200
  %223 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %224 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %223)
  %225 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %226 = call i32 @free_extent_buffer(%struct.extent_buffer* %225)
  br label %243

227:                                              ; preds = %200
  %228 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %229 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %18, align 8
  %231 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %232 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %19, align 8
  %234 = load i64, i64* %18, align 8
  %235 = load i64*, i64** %12, align 8
  store i64 %234, i64* %235, align 8
  %236 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %237 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %236)
  %238 = load %struct.extent_buffer*, %struct.extent_buffer** %15, align 8
  %239 = call i32 @free_extent_buffer(%struct.extent_buffer* %238)
  br label %240

240:                                              ; preds = %227, %131, %85
  %241 = load i32, i32* %23, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %23, align 4
  br label %71

243:                                              ; preds = %222, %71
  %244 = load i32, i32* %24, align 4
  store i32 %244, i32* %7, align 4
  br label %245

245:                                              ; preds = %243, %188, %170, %163, %66
  %246 = load i32, i32* %7, align 4
  ret i32 %246
}

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i64 @comp_keys(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local i64 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @close_blocks(i64, i64, i32) #1

declare dso_local %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @btrfs_buffer_uptodate(%struct.extent_buffer*, i64, i32) #1

declare dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info*, i64, i64, i32, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_read_buffer(%struct.extent_buffer*, i64, i32, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @__btrfs_cow_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, %struct.extent_buffer*, i32, %struct.extent_buffer**, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
