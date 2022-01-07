; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_alloc_extent_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_alloc_extent_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { %struct.page**, i32, i32 }
%struct.page = type { i64 }
%struct.btrfs_fs_info = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"bad tree block start %llu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@EXTENT_BUFFER_UPTODATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EXTENT_BUFFER_IN_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @alloc_extent_buffer(%struct.btrfs_fs_info* %0, i64 %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = lshr i64 %19, %20
  store i64 %21, i64* %9, align 8
  store %struct.extent_buffer* null, %struct.extent_buffer** %11, align 8
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.address_space*, %struct.address_space** %25, align 8
  store %struct.address_space* %26, %struct.address_space** %13, align 8
  store i32 1, i32* %14, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @IS_ALIGNED(i64 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %2
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @btrfs_err(%struct.btrfs_fs_info* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.extent_buffer* @ERR_PTR(i32 %38)
  store %struct.extent_buffer* %39, %struct.extent_buffer** %3, align 8
  br label %248

40:                                               ; preds = %2
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info* %41, i64 %42)
  store %struct.extent_buffer* %43, %struct.extent_buffer** %10, align 8
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %45 = icmp ne %struct.extent_buffer* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  store %struct.extent_buffer* %47, %struct.extent_buffer** %3, align 8
  br label %248

48:                                               ; preds = %40
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call %struct.extent_buffer* @__alloc_extent_buffer(%struct.btrfs_fs_info* %49, i64 %50, i64 %51)
  store %struct.extent_buffer* %52, %struct.extent_buffer** %10, align 8
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %54 = icmp ne %struct.extent_buffer* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.extent_buffer* @ERR_PTR(i32 %57)
  store %struct.extent_buffer* %58, %struct.extent_buffer** %3, align 8
  br label %248

59:                                               ; preds = %48
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %61 = call i32 @num_extent_pages(%struct.extent_buffer* %60)
  store i32 %61, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %136, %59
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %141

66:                                               ; preds = %62
  %67 = load %struct.address_space*, %struct.address_space** %13, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* @GFP_NOFS, align 4
  %70 = load i32, i32* @__GFP_NOFAIL, align 4
  %71 = or i32 %69, %70
  %72 = call %struct.page* @find_or_create_page(%struct.address_space* %67, i64 %68, i32 %71)
  store %struct.page* %72, %struct.page** %12, align 8
  %73 = load %struct.page*, %struct.page** %12, align 8
  %74 = icmp ne %struct.page* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  %78 = call %struct.extent_buffer* @ERR_PTR(i32 %77)
  store %struct.extent_buffer* %78, %struct.extent_buffer** %11, align 8
  br label %210

79:                                               ; preds = %66
  %80 = load %struct.address_space*, %struct.address_space** %13, align 8
  %81 = getelementptr inbounds %struct.address_space, %struct.address_space* %80, i32 0, i32 0
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.page*, %struct.page** %12, align 8
  %84 = call i64 @PagePrivate(%struct.page* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %79
  %87 = load %struct.page*, %struct.page** %12, align 8
  %88 = getelementptr inbounds %struct.page, %struct.page* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.extent_buffer*
  store %struct.extent_buffer* %90, %struct.extent_buffer** %11, align 8
  %91 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %92 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %91, i32 0, i32 1
  %93 = call i64 @atomic_inc_not_zero(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %86
  %96 = load %struct.address_space*, %struct.address_space** %13, align 8
  %97 = getelementptr inbounds %struct.address_space, %struct.address_space* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load %struct.page*, %struct.page** %12, align 8
  %100 = call i32 @unlock_page(%struct.page* %99)
  %101 = load %struct.page*, %struct.page** %12, align 8
  %102 = call i32 @put_page(%struct.page* %101)
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %104 = load %struct.page*, %struct.page** %12, align 8
  %105 = call i32 @mark_extent_buffer_accessed(%struct.extent_buffer* %103, %struct.page* %104)
  br label %210

106:                                              ; preds = %86
  store %struct.extent_buffer* null, %struct.extent_buffer** %11, align 8
  %107 = load %struct.page*, %struct.page** %12, align 8
  %108 = call i32 @ClearPagePrivate(%struct.page* %107)
  %109 = load %struct.page*, %struct.page** %12, align 8
  %110 = call i32 @PageDirty(%struct.page* %109)
  %111 = call i32 @WARN_ON(i32 %110)
  %112 = load %struct.page*, %struct.page** %12, align 8
  %113 = call i32 @put_page(%struct.page* %112)
  br label %114

114:                                              ; preds = %106, %79
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %116 = load %struct.page*, %struct.page** %12, align 8
  %117 = call i32 @attach_extent_buffer_page(%struct.extent_buffer* %115, %struct.page* %116)
  %118 = load %struct.address_space*, %struct.address_space** %13, align 8
  %119 = getelementptr inbounds %struct.address_space, %struct.address_space* %118, i32 0, i32 0
  %120 = call i32 @spin_unlock(i32* %119)
  %121 = load %struct.page*, %struct.page** %12, align 8
  %122 = call i32 @PageDirty(%struct.page* %121)
  %123 = call i32 @WARN_ON(i32 %122)
  %124 = load %struct.page*, %struct.page** %12, align 8
  %125 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %126 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %125, i32 0, i32 0
  %127 = load %struct.page**, %struct.page*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.page*, %struct.page** %127, i64 %129
  store %struct.page* %124, %struct.page** %130, align 8
  %131 = load %struct.page*, %struct.page** %12, align 8
  %132 = call i32 @PageUptodate(%struct.page* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %114
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %134, %114
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %9, align 8
  br label %62

141:                                              ; preds = %62
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* @EXTENT_BUFFER_UPTODATE, align 4
  %146 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %147 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %146, i32 0, i32 2
  %148 = call i32 @set_bit(i32 %145, i32* %147)
  br label %149

149:                                              ; preds = %144, %141
  br label %150

150:                                              ; preds = %184, %149
  %151 = load i32, i32* @GFP_NOFS, align 4
  %152 = call i32 @radix_tree_preload(i32 %151)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* %15, align 4
  %157 = call %struct.extent_buffer* @ERR_PTR(i32 %156)
  store %struct.extent_buffer* %157, %struct.extent_buffer** %11, align 8
  br label %210

158:                                              ; preds = %150
  %159 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %160 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %159, i32 0, i32 1
  %161 = call i32 @spin_lock(i32* %160)
  %162 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %163 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %162, i32 0, i32 2
  %164 = load i64, i64* %5, align 8
  %165 = load i64, i64* @PAGE_SHIFT, align 8
  %166 = lshr i64 %164, %165
  %167 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %168 = call i32 @radix_tree_insert(i32* %163, i64 %166, %struct.extent_buffer* %167)
  store i32 %168, i32* %15, align 4
  %169 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %170 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %169, i32 0, i32 1
  %171 = call i32 @spin_unlock(i32* %170)
  %172 = call i32 (...) @radix_tree_preload_end()
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* @EEXIST, align 4
  %175 = sub nsw i32 0, %174
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %158
  %178 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %179 = load i64, i64* %5, align 8
  %180 = call %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info* %178, i64 %179)
  store %struct.extent_buffer* %180, %struct.extent_buffer** %11, align 8
  %181 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %182 = icmp ne %struct.extent_buffer* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %210

184:                                              ; preds = %177
  br label %150

185:                                              ; preds = %158
  %186 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %187 = call i32 @check_buffer_tree_ref(%struct.extent_buffer* %186)
  %188 = load i32, i32* @EXTENT_BUFFER_IN_TREE, align 4
  %189 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %190 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %189, i32 0, i32 2
  %191 = call i32 @set_bit(i32 %188, i32* %190)
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %205, %185
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %198 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %197, i32 0, i32 0
  %199 = load %struct.page**, %struct.page*** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.page*, %struct.page** %199, i64 %201
  %203 = load %struct.page*, %struct.page** %202, align 8
  %204 = call i32 @unlock_page(%struct.page* %203)
  br label %205

205:                                              ; preds = %196
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %192

208:                                              ; preds = %192
  %209 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  store %struct.extent_buffer* %209, %struct.extent_buffer** %3, align 8
  br label %248

210:                                              ; preds = %183, %155, %95, %75
  %211 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %212 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %211, i32 0, i32 1
  %213 = call i32 @atomic_dec_and_test(i32* %212)
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = call i32 @WARN_ON(i32 %216)
  store i32 0, i32* %8, align 4
  br label %218

218:                                              ; preds = %241, %210
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %244

222:                                              ; preds = %218
  %223 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %224 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %223, i32 0, i32 0
  %225 = load %struct.page**, %struct.page*** %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.page*, %struct.page** %225, i64 %227
  %229 = load %struct.page*, %struct.page** %228, align 8
  %230 = icmp ne %struct.page* %229, null
  br i1 %230, label %231, label %240

231:                                              ; preds = %222
  %232 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %233 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %232, i32 0, i32 0
  %234 = load %struct.page**, %struct.page*** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.page*, %struct.page** %234, i64 %236
  %238 = load %struct.page*, %struct.page** %237, align 8
  %239 = call i32 @unlock_page(%struct.page* %238)
  br label %240

240:                                              ; preds = %231, %222
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %218

244:                                              ; preds = %218
  %245 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %246 = call i32 @btrfs_release_extent_buffer(%struct.extent_buffer* %245)
  %247 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  store %struct.extent_buffer* %247, %struct.extent_buffer** %3, align 8
  br label %248

248:                                              ; preds = %244, %208, %55, %46, %33
  %249 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  ret %struct.extent_buffer* %249
}

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i64) #1

declare dso_local %struct.extent_buffer* @ERR_PTR(i32) #1

declare dso_local %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info*, i64) #1

declare dso_local %struct.extent_buffer* @__alloc_extent_buffer(%struct.btrfs_fs_info*, i64, i64) #1

declare dso_local i32 @num_extent_pages(%struct.extent_buffer*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i64 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mark_extent_buffer_accessed(%struct.extent_buffer*, %struct.page*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @attach_extent_buffer_page(%struct.extent_buffer*, %struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.extent_buffer*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @check_buffer_tree_ref(%struct.extent_buffer*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @btrfs_release_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
