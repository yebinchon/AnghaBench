; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dcache_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dcache_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__, %struct.ceph_dir_file_info* }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ceph_dir_file_info = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ceph_dentry_info = type { i32, i32 }
%struct.ceph_readdir_cache_control = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"__dcache_readdir %p v%u at %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"__dcache_readdir %p cache idx %llu\0A\00", align 1
@CEPH_F_ATEND = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c" %llx dentry %p %pd %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*, i32)* @__dcache_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dcache_readdir(%struct.file* %0, %struct.dir_context* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_dir_file_info*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.ceph_dentry_info*, align 8
  %13 = alloca %struct.ceph_readdir_cache_control, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %21, align 8
  store %struct.ceph_dir_file_info* %22, %struct.ceph_dir_file_info** %7, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %25, align 8
  store %struct.dentry* %26, %struct.dentry** %8, align 8
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = call %struct.inode* @d_inode(%struct.dentry* %27)
  store %struct.inode* %28, %struct.inode** %9, align 8
  store %struct.dentry* null, %struct.dentry** %11, align 8
  %29 = bitcast %struct.ceph_readdir_cache_control* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %33 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.inode* %30, i32 %31, i32 %34)
  %36 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %37 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %100

40:                                               ; preds = %3
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = call i32 @i_size_read(%struct.inode* %41)
  %43 = call i32 @div_u64(i32 %42, i32 8)
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %90, %40
  %45 = load i32, i32* %16, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %44
  %48 = load i32, i32* %16, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %17, align 4
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %51, %52
  %54 = call %struct.dentry* @__dcache_find_get_entry(%struct.dentry* %50, i32 %53, %struct.ceph_readdir_cache_control* %13)
  store %struct.dentry* %54, %struct.dentry** %10, align 8
  %55 = load %struct.dentry*, %struct.dentry** %10, align 8
  %56 = icmp ne %struct.dentry* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %96

58:                                               ; preds = %47
  %59 = load %struct.dentry*, %struct.dentry** %10, align 8
  %60 = call i64 @IS_ERR(%struct.dentry* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.dentry*, %struct.dentry** %10, align 8
  %64 = call i32 @PTR_ERR(%struct.dentry* %63)
  store i32 %64, i32* %15, align 4
  br label %225

65:                                               ; preds = %58
  %66 = load %struct.dentry*, %struct.dentry** %10, align 8
  %67 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %66)
  store %struct.ceph_dentry_info* %67, %struct.ceph_dentry_info** %12, align 8
  %68 = load %struct.dentry*, %struct.dentry** %10, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 2
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %12, align 8
  %72 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %75 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @fpos_cmp(i32 %73, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %65
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %16, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %16, align 4
  br label %90

88:                                               ; preds = %65
  %89 = load i32, i32* %17, align 4
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %88, %79
  %91 = load %struct.dentry*, %struct.dentry** %10, align 8
  %92 = getelementptr inbounds %struct.dentry, %struct.dentry* %91, i32 0, i32 2
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.dentry*, %struct.dentry** %10, align 8
  %95 = call i32 @dput(%struct.dentry* %94)
  br label %44

96:                                               ; preds = %57, %44
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %3
  br label %101

101:                                              ; preds = %223, %100
  store i32 0, i32* %18, align 4
  %102 = load %struct.dentry*, %struct.dentry** %8, align 8
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  %105 = call %struct.dentry* @__dcache_find_get_entry(%struct.dentry* %102, i32 %103, %struct.ceph_readdir_cache_control* %13)
  store %struct.dentry* %105, %struct.dentry** %10, align 8
  %106 = load %struct.dentry*, %struct.dentry** %10, align 8
  %107 = icmp ne %struct.dentry* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* @CEPH_F_ATEND, align 4
  %110 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %7, align 8
  %111 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 8
  store i32 0, i32* %15, align 4
  br label %224

115:                                              ; preds = %101
  %116 = load %struct.dentry*, %struct.dentry** %10, align 8
  %117 = call i64 @IS_ERR(%struct.dentry* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load %struct.dentry*, %struct.dentry** %10, align 8
  %121 = call i32 @PTR_ERR(%struct.dentry* %120)
  store i32 %121, i32* %15, align 4
  br label %225

122:                                              ; preds = %115
  %123 = load %struct.dentry*, %struct.dentry** %10, align 8
  %124 = getelementptr inbounds %struct.dentry, %struct.dentry* %123, i32 0, i32 2
  %125 = call i32 @spin_lock(i32* %124)
  %126 = load %struct.dentry*, %struct.dentry** %10, align 8
  %127 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %126)
  store %struct.ceph_dentry_info* %127, %struct.ceph_dentry_info** %12, align 8
  %128 = load %struct.dentry*, %struct.dentry** %10, align 8
  %129 = call i64 @d_unhashed(%struct.dentry* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %122
  %132 = load %struct.dentry*, %struct.dentry** %10, align 8
  %133 = call i64 @d_really_is_negative(%struct.dentry* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %12, align 8
  %137 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %135, %131, %122
  %142 = load %struct.dentry*, %struct.dentry** %10, align 8
  %143 = getelementptr inbounds %struct.dentry, %struct.dentry* %142, i32 0, i32 2
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load %struct.dentry*, %struct.dentry** %10, align 8
  %146 = call i32 @dput(%struct.dentry* %145)
  %147 = load i32, i32* @EAGAIN, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %15, align 4
  br label %225

149:                                              ; preds = %135
  %150 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %151 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %12, align 8
  %154 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @fpos_cmp(i32 %152, i32 %155)
  %157 = icmp sle i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %12, align 8
  %160 = call i32 @__ceph_dentry_dir_lease_touch(%struct.ceph_dentry_info* %159)
  store i32 1, i32* %18, align 4
  br label %161

161:                                              ; preds = %158, %149
  %162 = load %struct.dentry*, %struct.dentry** %10, align 8
  %163 = getelementptr inbounds %struct.dentry, %struct.dentry* %162, i32 0, i32 2
  %164 = call i32 @spin_unlock(i32* %163)
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %220

167:                                              ; preds = %161
  %168 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %12, align 8
  %169 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.dentry*, %struct.dentry** %10, align 8
  %172 = load %struct.dentry*, %struct.dentry** %10, align 8
  %173 = load %struct.dentry*, %struct.dentry** %10, align 8
  %174 = call %struct.inode* @d_inode(%struct.dentry* %173)
  %175 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %170, %struct.dentry* %171, %struct.dentry* %172, %struct.inode* %174)
  %176 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %12, align 8
  %177 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %180 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %182 = load %struct.dentry*, %struct.dentry** %10, align 8
  %183 = getelementptr inbounds %struct.dentry, %struct.dentry* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.dentry*, %struct.dentry** %10, align 8
  %187 = getelementptr inbounds %struct.dentry, %struct.dentry* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.dentry*, %struct.dentry** %10, align 8
  %191 = getelementptr inbounds %struct.dentry, %struct.dentry* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.dentry*, %struct.dentry** %10, align 8
  %194 = call %struct.inode* @d_inode(%struct.dentry* %193)
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @ceph_translate_ino(i32 %192, i32 %196)
  %198 = load %struct.dentry*, %struct.dentry** %10, align 8
  %199 = call %struct.inode* @d_inode(%struct.dentry* %198)
  %200 = getelementptr inbounds %struct.inode, %struct.inode* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = ashr i32 %201, 12
  %203 = call i32 @dir_emit(%struct.dir_context* %181, i32 %185, i32 %189, i32 %197, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %167
  %206 = load %struct.dentry*, %struct.dentry** %10, align 8
  %207 = call i32 @dput(%struct.dentry* %206)
  store i32 0, i32* %15, align 4
  br label %224

208:                                              ; preds = %167
  %209 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %210 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = load %struct.dentry*, %struct.dentry** %11, align 8
  %214 = icmp ne %struct.dentry* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %208
  %216 = load %struct.dentry*, %struct.dentry** %11, align 8
  %217 = call i32 @dput(%struct.dentry* %216)
  br label %218

218:                                              ; preds = %215, %208
  %219 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %219, %struct.dentry** %11, align 8
  br label %223

220:                                              ; preds = %161
  %221 = load %struct.dentry*, %struct.dentry** %10, align 8
  %222 = call i32 @dput(%struct.dentry* %221)
  br label %223

223:                                              ; preds = %220, %218
  br label %101

224:                                              ; preds = %205, %108
  br label %225

225:                                              ; preds = %224, %141, %119, %62
  %226 = call i32 @ceph_readdir_cache_release(%struct.ceph_readdir_cache_control* %13)
  %227 = load %struct.dentry*, %struct.dentry** %11, align 8
  %228 = icmp ne %struct.dentry* %227, null
  br i1 %228, label %229, label %264

229:                                              ; preds = %225
  %230 = load %struct.dentry*, %struct.dentry** %11, align 8
  %231 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %230)
  store %struct.ceph_dentry_info* %231, %struct.ceph_dentry_info** %12, align 8
  %232 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %7, align 8
  %233 = load %struct.dentry*, %struct.dentry** %11, align 8
  %234 = getelementptr inbounds %struct.dentry, %struct.dentry* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.dentry*, %struct.dentry** %11, align 8
  %238 = getelementptr inbounds %struct.dentry, %struct.dentry* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %12, align 8
  %242 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @fpos_off(i32 %243)
  %245 = add nsw i64 %244, 1
  %246 = call i32 @note_last_dentry(%struct.ceph_dir_file_info* %232, i32 %236, i32 %240, i64 %245)
  store i32 %246, i32* %19, align 4
  %247 = load i32, i32* %19, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %229
  %250 = load i32, i32* %19, align 4
  store i32 %250, i32* %15, align 4
  br label %251

251:                                              ; preds = %249, %229
  %252 = load %struct.dentry*, %struct.dentry** %11, align 8
  %253 = call i32 @dput(%struct.dentry* %252)
  %254 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %7, align 8
  %255 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp sge i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %251
  %259 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %7, align 8
  %260 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %259, i32 0, i32 0
  store i32 -1, i32* %260, align 8
  %261 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %7, align 8
  %262 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %261, i32 0, i32 1
  store i64 0, i64* %262, align 8
  br label %263

263:                                              ; preds = %258, %251
  br label %264

264:                                              ; preds = %263, %225
  %265 = load i32, i32* %15, align 4
  ret i32 %265
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.dentry* @__dcache_find_get_entry(%struct.dentry*, i32, %struct.ceph_readdir_cache_control*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @fpos_cmp(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @__ceph_dentry_dir_lease_touch(%struct.ceph_dentry_info*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i32, i32) #1

declare dso_local i32 @ceph_translate_ino(i32, i32) #1

declare dso_local i32 @ceph_readdir_cache_release(%struct.ceph_readdir_cache_control*) #1

declare dso_local i32 @note_last_dentry(%struct.ceph_dir_file_info*, i32, i32, i64) #1

declare dso_local i64 @fpos_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
