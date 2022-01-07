; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_namei.c_cachefiles_bury_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_namei.c_cachefiles_bury_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { %struct.dentry*, i32, i32 }
%struct.cachefiles_object = type { i32 }
%struct.dentry = type { %struct.dentry* }
%struct.path = type { %struct.dentry*, i32 }

@.str = private unnamed_addr constant [13 x i8] c",'%pd','%pd'\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"remove %p from %p\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unlink stale object\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unlink security error\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Unlink failed\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"move stale object to graveyard\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%08x%08x\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" = 0 [culled?]\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Graveyard no longer a directory\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"May not make directory loop\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Mountpoint in cache\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Lookup error %ld\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Mountpoint in graveyard\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Rename security error %d\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Rename failed with error %d\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_cache*, %struct.cachefiles_object*, %struct.dentry*, %struct.dentry*, i32, i32)* @cachefiles_bury_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_bury_object(%struct.cachefiles_cache* %0, %struct.cachefiles_object* %1, %struct.dentry* %2, %struct.dentry* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cachefiles_cache*, align 8
  %9 = alloca %struct.cachefiles_object*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.path, align 8
  %17 = alloca %struct.path, align 8
  %18 = alloca [17 x i8], align 16
  %19 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %8, align 8
  store %struct.cachefiles_object* %1, %struct.cachefiles_object** %9, align 8
  store %struct.dentry* %2, %struct.dentry** %10, align 8
  store %struct.dentry* %3, %struct.dentry** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.dentry*, %struct.dentry** %10, align 8
  %21 = load %struct.dentry*, %struct.dentry** %11, align 8
  %22 = call i32 @_enter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.dentry* %20, %struct.dentry* %21)
  %23 = load %struct.dentry*, %struct.dentry** %11, align 8
  %24 = load %struct.dentry*, %struct.dentry** %10, align 8
  %25 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %23, %struct.dentry* %24)
  %26 = load %struct.dentry*, %struct.dentry** %11, align 8
  %27 = call i32 @d_is_dir(%struct.dentry* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %76, label %29

29:                                               ; preds = %6
  %30 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %32 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.dentry*, %struct.dentry** %10, align 8
  %36 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 0
  store %struct.dentry* %35, %struct.dentry** %36, align 8
  %37 = load %struct.dentry*, %struct.dentry** %11, align 8
  %38 = call i32 @security_path_unlink(%struct.path* %16, %struct.dentry* %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %43 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %61

44:                                               ; preds = %29
  %45 = load %struct.cachefiles_object*, %struct.cachefiles_object** %9, align 8
  %46 = load %struct.dentry*, %struct.dentry** %11, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @trace_cachefiles_unlink(%struct.cachefiles_object* %45, %struct.dentry* %46, i32 %47)
  %49 = load %struct.dentry*, %struct.dentry** %10, align 8
  %50 = call i32 @d_inode(%struct.dentry* %49)
  %51 = load %struct.dentry*, %struct.dentry** %11, align 8
  %52 = call i32 @vfs_unlink(i32 %50, %struct.dentry* %51, i32* null)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %57 = load %struct.dentry*, %struct.dentry** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @cachefiles_mark_object_buried(%struct.cachefiles_cache* %56, %struct.dentry* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %44
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.dentry*, %struct.dentry** %10, align 8
  %63 = call i32 @d_inode(%struct.dentry* %62)
  %64 = call i32 @inode_unlock(i32 %63)
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %71 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i32, i32* %19, align 4
  %74 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %19, align 4
  store i32 %75, i32* %7, align 4
  br label %302

76:                                               ; preds = %6
  %77 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %78 = load %struct.dentry*, %struct.dentry** %10, align 8
  %79 = call i32 @d_inode(%struct.dentry* %78)
  %80 = call i32 @inode_unlock(i32 %79)
  br label %81

81:                                               ; preds = %193, %76
  %82 = getelementptr inbounds [17 x i8], [17 x i8]* %18, i64 0, i64 0
  %83 = call i64 (...) @ktime_get_real_seconds()
  %84 = trunc i64 %83 to i32
  %85 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %86 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %85, i32 0, i32 2
  %87 = call i64 @atomic_inc_return(i32* %86)
  %88 = trunc i64 %87 to i32
  %89 = call i32 @sprintf(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %84, i32 %88)
  %90 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %91 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %90, i32 0, i32 0
  %92 = load %struct.dentry*, %struct.dentry** %91, align 8
  %93 = load %struct.dentry*, %struct.dentry** %10, align 8
  %94 = call %struct.dentry* @lock_rename(%struct.dentry* %92, %struct.dentry* %93)
  store %struct.dentry* %94, %struct.dentry** %15, align 8
  %95 = load %struct.dentry*, %struct.dentry** %11, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 0
  %97 = load %struct.dentry*, %struct.dentry** %96, align 8
  %98 = load %struct.dentry*, %struct.dentry** %10, align 8
  %99 = icmp ne %struct.dentry* %97, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %81
  %101 = load %struct.dentry*, %struct.dentry** %11, align 8
  %102 = call i32 @d_inode(%struct.dentry* %101)
  %103 = call i64 @IS_DEADDIR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100, %81
  %106 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %107 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %106, i32 0, i32 0
  %108 = load %struct.dentry*, %struct.dentry** %107, align 8
  %109 = load %struct.dentry*, %struct.dentry** %10, align 8
  %110 = call i32 @unlock_rename(%struct.dentry* %108, %struct.dentry* %109)
  %111 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %302

112:                                              ; preds = %100
  %113 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %114 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %113, i32 0, i32 0
  %115 = load %struct.dentry*, %struct.dentry** %114, align 8
  %116 = call i32 @d_can_lookup(%struct.dentry* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %112
  %119 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %120 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %119, i32 0, i32 0
  %121 = load %struct.dentry*, %struct.dentry** %120, align 8
  %122 = load %struct.dentry*, %struct.dentry** %10, align 8
  %123 = call i32 @unlock_rename(%struct.dentry* %121, %struct.dentry* %122)
  %124 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %125 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %302

128:                                              ; preds = %112
  %129 = load %struct.dentry*, %struct.dentry** %15, align 8
  %130 = load %struct.dentry*, %struct.dentry** %11, align 8
  %131 = icmp eq %struct.dentry* %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %134 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %133, i32 0, i32 0
  %135 = load %struct.dentry*, %struct.dentry** %134, align 8
  %136 = load %struct.dentry*, %struct.dentry** %10, align 8
  %137 = call i32 @unlock_rename(%struct.dentry* %135, %struct.dentry* %136)
  %138 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %139 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  br label %302

142:                                              ; preds = %128
  %143 = load %struct.dentry*, %struct.dentry** %11, align 8
  %144 = call i64 @d_mountpoint(%struct.dentry* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %148 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %147, i32 0, i32 0
  %149 = load %struct.dentry*, %struct.dentry** %148, align 8
  %150 = load %struct.dentry*, %struct.dentry** %10, align 8
  %151 = call i32 @unlock_rename(%struct.dentry* %149, %struct.dentry* %150)
  %152 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %153 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %7, align 4
  br label %302

156:                                              ; preds = %142
  %157 = getelementptr inbounds [17 x i8], [17 x i8]* %18, i64 0, i64 0
  %158 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %159 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %158, i32 0, i32 0
  %160 = load %struct.dentry*, %struct.dentry** %159, align 8
  %161 = getelementptr inbounds [17 x i8], [17 x i8]* %18, i64 0, i64 0
  %162 = call i32 @strlen(i8* %161)
  %163 = call %struct.dentry* @lookup_one_len(i8* %157, %struct.dentry* %160, i32 %162)
  store %struct.dentry* %163, %struct.dentry** %14, align 8
  %164 = load %struct.dentry*, %struct.dentry** %14, align 8
  %165 = call i64 @IS_ERR(%struct.dentry* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %156
  %168 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %169 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %168, i32 0, i32 0
  %170 = load %struct.dentry*, %struct.dentry** %169, align 8
  %171 = load %struct.dentry*, %struct.dentry** %10, align 8
  %172 = call i32 @unlock_rename(%struct.dentry* %170, %struct.dentry* %171)
  %173 = load %struct.dentry*, %struct.dentry** %14, align 8
  %174 = call i32 @PTR_ERR(%struct.dentry* %173)
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %167
  %179 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %7, align 4
  br label %302

182:                                              ; preds = %167
  %183 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %184 = load %struct.dentry*, %struct.dentry** %14, align 8
  %185 = call i32 @PTR_ERR(%struct.dentry* %184)
  %186 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* @EIO, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %7, align 4
  br label %302

189:                                              ; preds = %156
  %190 = load %struct.dentry*, %struct.dentry** %14, align 8
  %191 = call i64 @d_is_positive(%struct.dentry* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %189
  %194 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %195 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %194, i32 0, i32 0
  %196 = load %struct.dentry*, %struct.dentry** %195, align 8
  %197 = load %struct.dentry*, %struct.dentry** %10, align 8
  %198 = call i32 @unlock_rename(%struct.dentry* %196, %struct.dentry* %197)
  %199 = load %struct.dentry*, %struct.dentry** %14, align 8
  %200 = call i32 @dput(%struct.dentry* %199)
  store %struct.dentry* null, %struct.dentry** %14, align 8
  %201 = call i32 (...) @cond_resched()
  br label %81

202:                                              ; preds = %189
  %203 = load %struct.dentry*, %struct.dentry** %14, align 8
  %204 = call i64 @d_mountpoint(%struct.dentry* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %202
  %207 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %208 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %207, i32 0, i32 0
  %209 = load %struct.dentry*, %struct.dentry** %208, align 8
  %210 = load %struct.dentry*, %struct.dentry** %10, align 8
  %211 = call i32 @unlock_rename(%struct.dentry* %209, %struct.dentry* %210)
  %212 = load %struct.dentry*, %struct.dentry** %14, align 8
  %213 = call i32 @dput(%struct.dentry* %212)
  %214 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %215 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %214, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %216 = load i32, i32* @EIO, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %7, align 4
  br label %302

218:                                              ; preds = %202
  %219 = load %struct.dentry*, %struct.dentry** %15, align 8
  %220 = load %struct.dentry*, %struct.dentry** %14, align 8
  %221 = icmp eq %struct.dentry* %219, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %218
  %223 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %224 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %223, i32 0, i32 0
  %225 = load %struct.dentry*, %struct.dentry** %224, align 8
  %226 = load %struct.dentry*, %struct.dentry** %10, align 8
  %227 = call i32 @unlock_rename(%struct.dentry* %225, %struct.dentry* %226)
  %228 = load %struct.dentry*, %struct.dentry** %14, align 8
  %229 = call i32 @dput(%struct.dentry* %228)
  %230 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %231 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %230, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %232 = load i32, i32* @EIO, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %7, align 4
  br label %302

234:                                              ; preds = %218
  %235 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %236 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 1
  store i32 %237, i32* %238, align 8
  %239 = load %struct.dentry*, %struct.dentry** %10, align 8
  %240 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 0
  store %struct.dentry* %239, %struct.dentry** %240, align 8
  %241 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %242 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 1
  store i32 %243, i32* %244, align 8
  %245 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %246 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %245, i32 0, i32 0
  %247 = load %struct.dentry*, %struct.dentry** %246, align 8
  %248 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 0
  store %struct.dentry* %247, %struct.dentry** %248, align 8
  %249 = load %struct.dentry*, %struct.dentry** %11, align 8
  %250 = load %struct.dentry*, %struct.dentry** %14, align 8
  %251 = call i32 @security_path_rename(%struct.path* %16, %struct.dentry* %249, %struct.path* %17, %struct.dentry* %250, i32 0)
  store i32 %251, i32* %19, align 4
  %252 = load i32, i32* %19, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %234
  %255 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %256 = load i32, i32* %19, align 4
  %257 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %255, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %256)
  br label %293

258:                                              ; preds = %234
  %259 = load %struct.cachefiles_object*, %struct.cachefiles_object** %9, align 8
  %260 = load %struct.dentry*, %struct.dentry** %11, align 8
  %261 = load %struct.dentry*, %struct.dentry** %14, align 8
  %262 = load i32, i32* %13, align 4
  %263 = call i32 @trace_cachefiles_rename(%struct.cachefiles_object* %259, %struct.dentry* %260, %struct.dentry* %261, i32 %262)
  %264 = load %struct.dentry*, %struct.dentry** %10, align 8
  %265 = call i32 @d_inode(%struct.dentry* %264)
  %266 = load %struct.dentry*, %struct.dentry** %11, align 8
  %267 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %268 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %267, i32 0, i32 0
  %269 = load %struct.dentry*, %struct.dentry** %268, align 8
  %270 = call i32 @d_inode(%struct.dentry* %269)
  %271 = load %struct.dentry*, %struct.dentry** %14, align 8
  %272 = call i32 @vfs_rename(i32 %265, %struct.dentry* %266, i32 %270, %struct.dentry* %271, i32* null, i32 0)
  store i32 %272, i32* %19, align 4
  %273 = load i32, i32* %19, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %258
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* @ENOMEM, align 4
  %278 = sub nsw i32 0, %277
  %279 = icmp ne i32 %276, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %282 = load i32, i32* %19, align 4
  %283 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %281, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %282)
  br label %284

284:                                              ; preds = %280, %275, %258
  %285 = load i32, i32* %12, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  %288 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %289 = load %struct.dentry*, %struct.dentry** %11, align 8
  %290 = load i32, i32* %13, align 4
  %291 = call i32 @cachefiles_mark_object_buried(%struct.cachefiles_cache* %288, %struct.dentry* %289, i32 %290)
  br label %292

292:                                              ; preds = %287, %284
  br label %293

293:                                              ; preds = %292, %254
  %294 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %8, align 8
  %295 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %294, i32 0, i32 0
  %296 = load %struct.dentry*, %struct.dentry** %295, align 8
  %297 = load %struct.dentry*, %struct.dentry** %10, align 8
  %298 = call i32 @unlock_rename(%struct.dentry* %296, %struct.dentry* %297)
  %299 = load %struct.dentry*, %struct.dentry** %14, align 8
  %300 = call i32 @dput(%struct.dentry* %299)
  %301 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %302

302:                                              ; preds = %293, %222, %206, %182, %178, %146, %132, %118, %105, %72
  %303 = load i32, i32* %7, align 4
  ret i32 %303
}

declare dso_local i32 @_enter(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @security_path_unlink(%struct.path*, %struct.dentry*) #1

declare dso_local i32 @cachefiles_io_error(%struct.cachefiles_cache*, i8*, ...) #1

declare dso_local i32 @trace_cachefiles_unlink(%struct.cachefiles_object*, %struct.dentry*, i32) #1

declare dso_local i32 @vfs_unlink(i32, %struct.dentry*, i32*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @cachefiles_mark_object_buried(%struct.cachefiles_cache*, %struct.dentry*, i32) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local %struct.dentry* @lock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @IS_DEADDIR(i32) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @d_can_lookup(%struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @d_is_positive(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @security_path_rename(%struct.path*, %struct.dentry*, %struct.path*, %struct.dentry*, i32) #1

declare dso_local i32 @trace_cachefiles_rename(%struct.cachefiles_object*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @vfs_rename(i32, %struct.dentry*, i32, %struct.dentry*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
