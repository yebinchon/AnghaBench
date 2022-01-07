; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_reada_find_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_reada_find_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reada_extent = type { i32, i32, %struct.reada_zone**, i32, i32, %struct.btrfs_key, i64 }
%struct.reada_zone = type { i64, i32, i32, %struct.btrfs_device* }
%struct.btrfs_device = type { i32, i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_fs_info = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.btrfs_device* }
%struct.btrfs_bio = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_device* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@BTRFS_MAP_GET_READ_MIRRORS = common dso_local global i32 0, align 4
@BTRFS_MAX_MIRRORS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"readahead: more than %d copies not supported\00", align 1
@reada_zone_release = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reada_extent* (%struct.btrfs_fs_info*, i64, %struct.btrfs_key*)* @reada_find_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reada_extent* @reada_find_extent(%struct.btrfs_fs_info* %0, i64 %1, %struct.btrfs_key* %2) #0 {
  %4 = alloca %struct.reada_extent*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.reada_extent*, align 8
  %10 = alloca %struct.reada_extent*, align 8
  %11 = alloca %struct.btrfs_bio*, align 8
  %12 = alloca %struct.btrfs_device*, align 8
  %13 = alloca %struct.btrfs_device*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.reada_zone*, align 8
  %21 = alloca %struct.reada_zone*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %7, align 8
  store %struct.reada_extent* null, %struct.reada_extent** %9, align 8
  store %struct.reada_extent* null, %struct.reada_extent** %10, align 8
  store %struct.btrfs_bio* null, %struct.btrfs_bio** %11, align 8
  store i32 0, i32* %16, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = ashr i64 %22, %23
  store i64 %24, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 3
  %30 = load i64, i64* %17, align 8
  %31 = call %struct.reada_extent* @radix_tree_lookup(i32* %29, i64 %30)
  store %struct.reada_extent* %31, %struct.reada_extent** %9, align 8
  %32 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %33 = icmp ne %struct.reada_extent* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %36 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %34, %3
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %44 = icmp ne %struct.reada_extent* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  store %struct.reada_extent* %46, %struct.reada_extent** %4, align 8
  br label %402

47:                                               ; preds = %39
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.reada_extent* @kzalloc(i32 40, i32 %48)
  store %struct.reada_extent* %49, %struct.reada_extent** %9, align 8
  %50 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %51 = icmp ne %struct.reada_extent* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store %struct.reada_extent* null, %struct.reada_extent** %4, align 8
  br label %402

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %56 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %55, i32 0, i32 6
  store i64 %54, i64* %56, align 8
  %57 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %58 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %57, i32 0, i32 5
  %59 = load %struct.btrfs_key*, %struct.btrfs_key** %7, align 8
  %60 = bitcast %struct.btrfs_key* %58 to i8*
  %61 = bitcast %struct.btrfs_key* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %63 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %62, i32 0, i32 4
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %66 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %65, i32 0, i32 3
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %69 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %71 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %14, align 8
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %74 = load i32, i32* @BTRFS_MAP_GET_READ_MIRRORS, align 4
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @btrfs_map_block(%struct.btrfs_fs_info* %73, i32 %74, i64 %75, i64* %14, %struct.btrfs_bio** %11, i32 0)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %53
  %80 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %81 = icmp ne %struct.btrfs_bio* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %85 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %79, %53
  br label %345

89:                                               ; preds = %82
  %90 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %91 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BTRFS_MAX_MIRRORS, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %97 = load i64, i64* @BTRFS_MAX_MIRRORS, align 8
  %98 = call i32 @btrfs_err(%struct.btrfs_fs_info* %96, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %97)
  br label %345

99:                                               ; preds = %89
  %100 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %101 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %104 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %102, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %109

109:                                              ; preds = %175, %99
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %178

113:                                              ; preds = %109
  %114 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %115 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load %struct.btrfs_device*, %struct.btrfs_device** %120, align 8
  store %struct.btrfs_device* %121, %struct.btrfs_device** %12, align 8
  %122 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %123 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %113
  br label %175

127:                                              ; preds = %113
  %128 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %131 = call %struct.reada_zone* @reada_find_zone(%struct.btrfs_device* %128, i64 %129, %struct.btrfs_bio* %130)
  store %struct.reada_zone* %131, %struct.reada_zone** %20, align 8
  %132 = load %struct.reada_zone*, %struct.reada_zone** %20, align 8
  %133 = icmp ne %struct.reada_zone* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %127
  br label %175

135:                                              ; preds = %127
  %136 = load %struct.reada_zone*, %struct.reada_zone** %20, align 8
  %137 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %138 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %137, i32 0, i32 2
  %139 = load %struct.reada_zone**, %struct.reada_zone*** %138, align 8
  %140 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %141 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds %struct.reada_zone*, %struct.reada_zone** %139, i64 %144
  store %struct.reada_zone* %136, %struct.reada_zone** %145, align 8
  %146 = load %struct.reada_zone*, %struct.reada_zone** %20, align 8
  %147 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %146, i32 0, i32 2
  %148 = call i32 @spin_lock(i32* %147)
  %149 = load %struct.reada_zone*, %struct.reada_zone** %20, align 8
  %150 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %135
  %154 = load %struct.reada_zone*, %struct.reada_zone** %20, align 8
  %155 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %154, i32 0, i32 1
  %156 = call i32 @kref_get(i32* %155)
  br label %157

157:                                              ; preds = %153, %135
  %158 = load %struct.reada_zone*, %struct.reada_zone** %20, align 8
  %159 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  %162 = load %struct.reada_zone*, %struct.reada_zone** %20, align 8
  %163 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %162, i32 0, i32 2
  %164 = call i32 @spin_unlock(i32* %163)
  %165 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %166 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %165, i32 0, i32 1
  %167 = call i32 @spin_lock(i32* %166)
  %168 = load %struct.reada_zone*, %struct.reada_zone** %20, align 8
  %169 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %168, i32 0, i32 1
  %170 = load i32, i32* @reada_zone_release, align 4
  %171 = call i32 @kref_put(i32* %169, i32 %170)
  %172 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %173 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %172, i32 0, i32 1
  %174 = call i32 @spin_unlock(i32* %173)
  br label %175

175:                                              ; preds = %157, %134, %126
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %16, align 4
  br label %109

178:                                              ; preds = %109
  %179 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %180 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %345

184:                                              ; preds = %178
  %185 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %186 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = call i32 @down_read(i32* %187)
  %189 = load i32, i32* @GFP_KERNEL, align 4
  %190 = call i32 @radix_tree_preload(i32 %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %184
  %194 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %195 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = call i32 @up_read(i32* %196)
  br label %345

198:                                              ; preds = %184
  %199 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %200 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %199, i32 0, i32 1
  %201 = call i32 @spin_lock(i32* %200)
  %202 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %203 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %202, i32 0, i32 3
  %204 = load i64, i64* %17, align 8
  %205 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %206 = call i32 @radix_tree_insert(i32* %203, i64 %204, %struct.reada_extent* %205)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @EEXIST, align 4
  %209 = sub nsw i32 0, %208
  %210 = icmp eq i32 %207, %209
  br i1 %210, label %211, label %228

211:                                              ; preds = %198
  %212 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %213 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %212, i32 0, i32 3
  %214 = load i64, i64* %17, align 8
  %215 = call %struct.reada_extent* @radix_tree_lookup(i32* %213, i64 %214)
  store %struct.reada_extent* %215, %struct.reada_extent** %10, align 8
  %216 = load %struct.reada_extent*, %struct.reada_extent** %10, align 8
  %217 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 8
  %220 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %221 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %220, i32 0, i32 1
  %222 = call i32 @spin_unlock(i32* %221)
  %223 = call i32 (...) @radix_tree_preload_end()
  %224 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %225 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = call i32 @up_read(i32* %226)
  br label %345

228:                                              ; preds = %198
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %228
  %232 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %233 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %232, i32 0, i32 1
  %234 = call i32 @spin_unlock(i32* %233)
  %235 = call i32 (...) @radix_tree_preload_end()
  %236 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %237 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = call i32 @up_read(i32* %238)
  br label %345

240:                                              ; preds = %228
  %241 = call i32 (...) @radix_tree_preload_end()
  store %struct.btrfs_device* null, %struct.btrfs_device** %13, align 8
  %242 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %243 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %242, i32 0, i32 2
  %244 = call i32 @btrfs_dev_replace_is_ongoing(%struct.TYPE_4__* %243)
  store i32 %244, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %245

245:                                              ; preds = %327, %240
  %246 = load i32, i32* %16, align 4
  %247 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %248 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %246, %249
  br i1 %250, label %251, label %330

251:                                              ; preds = %245
  %252 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %253 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %252, i32 0, i32 2
  %254 = load %struct.reada_zone**, %struct.reada_zone*** %253, align 8
  %255 = load i32, i32* %16, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.reada_zone*, %struct.reada_zone** %254, i64 %256
  %258 = load %struct.reada_zone*, %struct.reada_zone** %257, align 8
  %259 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %258, i32 0, i32 3
  %260 = load %struct.btrfs_device*, %struct.btrfs_device** %259, align 8
  store %struct.btrfs_device* %260, %struct.btrfs_device** %12, align 8
  %261 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %262 = load %struct.btrfs_device*, %struct.btrfs_device** %13, align 8
  %263 = icmp eq %struct.btrfs_device* %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %251
  br label %327

265:                                              ; preds = %251
  %266 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %267 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %265
  br label %327

271:                                              ; preds = %265
  %272 = load i32, i32* %18, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %271
  %275 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %276 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %277 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  %279 = load %struct.btrfs_device*, %struct.btrfs_device** %278, align 8
  %280 = icmp eq %struct.btrfs_device* %275, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %327

282:                                              ; preds = %274, %271
  %283 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  store %struct.btrfs_device* %283, %struct.btrfs_device** %13, align 8
  %284 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %285 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %284, i32 0, i32 0
  %286 = load i64, i64* %17, align 8
  %287 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %288 = call i32 @radix_tree_insert(i32* %285, i64 %286, %struct.reada_extent* %287)
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* %8, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %326

291:                                              ; preds = %282
  br label %292

292:                                              ; preds = %296, %291
  %293 = load i32, i32* %16, align 4
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %16, align 4
  %295 = icmp sge i32 %294, 0
  br i1 %295, label %296, label %314

296:                                              ; preds = %292
  %297 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %298 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %297, i32 0, i32 2
  %299 = load %struct.reada_zone**, %struct.reada_zone*** %298, align 8
  %300 = load i32, i32* %16, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.reada_zone*, %struct.reada_zone** %299, i64 %301
  %303 = load %struct.reada_zone*, %struct.reada_zone** %302, align 8
  %304 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %303, i32 0, i32 3
  %305 = load %struct.btrfs_device*, %struct.btrfs_device** %304, align 8
  store %struct.btrfs_device* %305, %struct.btrfs_device** %12, align 8
  %306 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %307 = icmp eq %struct.btrfs_device* %306, null
  %308 = zext i1 %307 to i32
  %309 = call i32 @BUG_ON(i32 %308)
  %310 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %311 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %310, i32 0, i32 0
  %312 = load i64, i64* %17, align 8
  %313 = call i32 @radix_tree_delete(i32* %311, i64 %312)
  br label %292

314:                                              ; preds = %292
  %315 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %316 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %315, i32 0, i32 3
  %317 = load i64, i64* %17, align 8
  %318 = call i32 @radix_tree_delete(i32* %316, i64 %317)
  %319 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %320 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %319, i32 0, i32 1
  %321 = call i32 @spin_unlock(i32* %320)
  %322 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %323 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = call i32 @up_read(i32* %324)
  br label %345

326:                                              ; preds = %282
  store i32 1, i32* %19, align 4
  br label %327

327:                                              ; preds = %326, %281, %270, %264
  %328 = load i32, i32* %16, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %16, align 4
  br label %245

330:                                              ; preds = %245
  %331 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %332 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %331, i32 0, i32 1
  %333 = call i32 @spin_unlock(i32* %332)
  %334 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %335 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  %337 = call i32 @up_read(i32* %336)
  %338 = load i32, i32* %19, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %330
  br label %345

341:                                              ; preds = %330
  %342 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %343 = call i32 @btrfs_put_bbio(%struct.btrfs_bio* %342)
  %344 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  store %struct.reada_extent* %344, %struct.reada_extent** %4, align 8
  br label %402

345:                                              ; preds = %340, %314, %231, %211, %193, %183, %95, %88
  store i32 0, i32* %16, align 4
  br label %346

346:                                              ; preds = %393, %345
  %347 = load i32, i32* %16, align 4
  %348 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %349 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = icmp slt i32 %347, %350
  br i1 %351, label %352, label %396

352:                                              ; preds = %346
  %353 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %354 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %353, i32 0, i32 2
  %355 = load %struct.reada_zone**, %struct.reada_zone*** %354, align 8
  %356 = load i32, i32* %16, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.reada_zone*, %struct.reada_zone** %355, i64 %357
  %359 = load %struct.reada_zone*, %struct.reada_zone** %358, align 8
  store %struct.reada_zone* %359, %struct.reada_zone** %21, align 8
  %360 = load %struct.reada_zone*, %struct.reada_zone** %21, align 8
  %361 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %360, i32 0, i32 1
  %362 = call i32 @kref_get(i32* %361)
  %363 = load %struct.reada_zone*, %struct.reada_zone** %21, align 8
  %364 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %363, i32 0, i32 2
  %365 = call i32 @spin_lock(i32* %364)
  %366 = load %struct.reada_zone*, %struct.reada_zone** %21, align 8
  %367 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %368, -1
  store i64 %369, i64* %367, align 8
  %370 = load %struct.reada_zone*, %struct.reada_zone** %21, align 8
  %371 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %352
  %375 = load %struct.reada_zone*, %struct.reada_zone** %21, align 8
  %376 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %375, i32 0, i32 1
  %377 = load i32, i32* @reada_zone_release, align 4
  %378 = call i32 @kref_put(i32* %376, i32 %377)
  br label %379

379:                                              ; preds = %374, %352
  %380 = load %struct.reada_zone*, %struct.reada_zone** %21, align 8
  %381 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %380, i32 0, i32 2
  %382 = call i32 @spin_unlock(i32* %381)
  %383 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %384 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %383, i32 0, i32 1
  %385 = call i32 @spin_lock(i32* %384)
  %386 = load %struct.reada_zone*, %struct.reada_zone** %21, align 8
  %387 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %386, i32 0, i32 1
  %388 = load i32, i32* @reada_zone_release, align 4
  %389 = call i32 @kref_put(i32* %387, i32 %388)
  %390 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %391 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %390, i32 0, i32 1
  %392 = call i32 @spin_unlock(i32* %391)
  br label %393

393:                                              ; preds = %379
  %394 = load i32, i32* %16, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %16, align 4
  br label %346

396:                                              ; preds = %346
  %397 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %398 = call i32 @btrfs_put_bbio(%struct.btrfs_bio* %397)
  %399 = load %struct.reada_extent*, %struct.reada_extent** %9, align 8
  %400 = call i32 @kfree(%struct.reada_extent* %399)
  %401 = load %struct.reada_extent*, %struct.reada_extent** %10, align 8
  store %struct.reada_extent* %401, %struct.reada_extent** %4, align 8
  br label %402

402:                                              ; preds = %396, %341, %52, %45
  %403 = load %struct.reada_extent*, %struct.reada_extent** %4, align 8
  ret %struct.reada_extent* %403
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.reada_extent* @radix_tree_lookup(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.reada_extent* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @btrfs_map_block(%struct.btrfs_fs_info*, i32, i64, i64*, %struct.btrfs_bio**, i32) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i64) #1

declare dso_local %struct.reada_zone* @reada_find_zone(%struct.btrfs_device*, i64, %struct.btrfs_bio*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.reada_extent*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @btrfs_dev_replace_is_ongoing(%struct.TYPE_4__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @btrfs_put_bbio(%struct.btrfs_bio*) #1

declare dso_local i32 @kfree(%struct.reada_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
