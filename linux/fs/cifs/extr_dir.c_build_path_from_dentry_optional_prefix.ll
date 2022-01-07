; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_build_path_from_dentry_optional_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_build_path_from_dentry_optional_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cifs_sb_info = type { i32, i8* }
%struct.cifs_tcon = type { i32 }

@MAX_TREE_SIZE = common dso_local global i64 0, align 8
@CIFS_MOUNT_USE_PREFIX_PATH = common dso_local global i32 0, align 4
@rename_lock = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"corrupt dentry\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"did not end path lookup where expected. namelen=%ddfsplen=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"using cifs_sb prepath <%s>\0A\00", align 1
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_path_from_dentry_optional_prefix(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.cifs_tcon*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cifs_sb_info* @CIFS_SB(i32 %19)
  store %struct.cifs_sb_info* %20, %struct.cifs_sb_info** %12, align 8
  %21 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %22 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %21)
  store %struct.cifs_tcon* %22, %struct.cifs_tcon** %13, align 8
  %23 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %24 = call signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info* %23)
  store i8 %24, i8* %11, align 1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %29 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @MAX_TREE_SIZE, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @strnlen(i32 %30, i64 %32)
  store i32 %33, i32* %8, align 4
  br label %35

34:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %37 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CIFS_MOUNT_USE_PREFIX_PATH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %44 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %49 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = add nsw i32 %51, 1
  br label %54

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ %52, %47 ], [ 0, %53 ]
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %35
  br label %57

57:                                               ; preds = %179, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = call i32 @read_seqbegin(i32* @rename_lock)
  store i32 %61, i32* %14, align 4
  %62 = call i32 (...) @rcu_read_lock()
  %63 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %63, %struct.dentry** %6, align 8
  br label %64

64:                                               ; preds = %86, %57
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = call i32 @IS_ROOT(%struct.dentry* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 1, %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = getelementptr inbounds %struct.dentry, %struct.dentry* %77, i32 0, i32 0
  %79 = load %struct.dentry*, %struct.dentry** %78, align 8
  store %struct.dentry* %79, %struct.dentry** %6, align 8
  %80 = load %struct.dentry*, %struct.dentry** %6, align 8
  %81 = icmp eq %struct.dentry* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load i32, i32* @VFS, align 4
  %84 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %85 = call i32 (...) @rcu_read_unlock()
  store i8* null, i8** %3, align 8
  br label %284

86:                                               ; preds = %69
  br label %64

87:                                               ; preds = %64
  %88 = call i32 (...) @rcu_read_unlock()
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = call i8* @kmalloc(i32 %90, i32 %91)
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i8*, i8** %10, align 8
  store i8* %96, i8** %3, align 8
  br label %284

97:                                               ; preds = %87
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 0, i8* %101, align 1
  %102 = call i32 (...) @rcu_read_lock()
  %103 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %103, %struct.dentry** %6, align 8
  br label %104

104:                                              ; preds = %167, %97
  %105 = load %struct.dentry*, %struct.dentry** %6, align 8
  %106 = call i32 @IS_ROOT(%struct.dentry* %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br i1 %108, label %109, label %168

109:                                              ; preds = %104
  %110 = load %struct.dentry*, %struct.dentry** %6, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 1
  %112 = call i32 @spin_lock(i32* %111)
  %113 = load %struct.dentry*, %struct.dentry** %6, align 8
  %114 = getelementptr inbounds %struct.dentry, %struct.dentry* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 1, %116
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %109
  %123 = load %struct.dentry*, %struct.dentry** %6, align 8
  %124 = getelementptr inbounds %struct.dentry, %struct.dentry* %123, i32 0, i32 1
  %125 = call i32 @spin_unlock(i32* %124)
  br label %168

126:                                              ; preds = %109
  %127 = load i8, i8* %11, align 1
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 %127, i8* %131, align 1
  %132 = load i8*, i8** %10, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load %struct.dentry*, %struct.dentry** %6, align 8
  %138 = getelementptr inbounds %struct.dentry, %struct.dentry* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.dentry*, %struct.dentry** %6, align 8
  %142 = getelementptr inbounds %struct.dentry, %struct.dentry* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @strncpy(i8* %136, i32 %140, i32 %144)
  %146 = load i32, i32* @FYI, align 4
  %147 = load i8*, i8** %10, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %126
  %153 = load %struct.dentry*, %struct.dentry** %6, align 8
  %154 = getelementptr inbounds %struct.dentry, %struct.dentry* %153, i32 0, i32 1
  %155 = call i32 @spin_unlock(i32* %154)
  %156 = load %struct.dentry*, %struct.dentry** %6, align 8
  %157 = getelementptr inbounds %struct.dentry, %struct.dentry* %156, i32 0, i32 0
  %158 = load %struct.dentry*, %struct.dentry** %157, align 8
  store %struct.dentry* %158, %struct.dentry** %6, align 8
  %159 = load %struct.dentry*, %struct.dentry** %6, align 8
  %160 = icmp eq %struct.dentry* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %152
  %162 = load i32, i32* @VFS, align 4
  %163 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %162, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %164 = call i32 (...) @rcu_read_unlock()
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 @kfree(i8* %165)
  store i8* null, i8** %3, align 8
  br label %284

167:                                              ; preds = %152
  br label %104

168:                                              ; preds = %122, %104
  %169 = call i32 (...) @rcu_read_unlock()
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %171, %172
  %174 = icmp ne i32 %170, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %14, align 4
  %177 = call i64 @read_seqretry(i32* @rename_lock, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175, %168
  %180 = load i32, i32* @FYI, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %180, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %182)
  %184 = load i8*, i8** %10, align 8
  %185 = call i32 @kfree(i8* %184)
  br label %57

186:                                              ; preds = %175
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %242

189:                                              ; preds = %186
  %190 = load i32, i32* @FYI, align 4
  %191 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %192 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %190, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %193)
  %195 = load i8*, i8** %10, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %201 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sub nsw i32 %203, 1
  %205 = call i32 @memcpy(i8* %199, i8* %202, i32 %204)
  %206 = load i8, i8* %11, align 1
  %207 = load i8*, i8** %10, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  store i8 %206, i8* %210, align 1
  store i32 0, i32* %15, align 4
  br label %211

211:                                              ; preds = %238, %189
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* %9, align 4
  %214 = sub nsw i32 %213, 1
  %215 = icmp slt i32 %212, %214
  br i1 %215, label %216, label %241

216:                                              ; preds = %211
  %217 = load i8*, i8** %10, align 8
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %217, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 47
  br i1 %226, label %227, label %237

227:                                              ; preds = %216
  %228 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %229 = call signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info* %228)
  %230 = load i8*, i8** %10, align 8
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %231, 1
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %232, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %230, i64 %235
  store i8 %229, i8* %236, align 1
  br label %237

237:                                              ; preds = %227, %216
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %15, align 4
  br label %211

241:                                              ; preds = %211
  br label %242

242:                                              ; preds = %241, %186
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %282

245:                                              ; preds = %242
  %246 = load i8*, i8** %10, align 8
  %247 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %248 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @strncpy(i8* %246, i32 %249, i32 %250)
  %252 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %253 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %281

258:                                              ; preds = %245
  store i32 0, i32* %16, align 4
  br label %259

259:                                              ; preds = %277, %258
  %260 = load i32, i32* %16, align 4
  %261 = load i32, i32* %8, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %280

263:                                              ; preds = %259
  %264 = load i8*, i8** %10, align 8
  %265 = load i32, i32* %16, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 92
  br i1 %270, label %271, label %276

271:                                              ; preds = %263
  %272 = load i8*, i8** %10, align 8
  %273 = load i32, i32* %16, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  store i8 47, i8* %275, align 1
  br label %276

276:                                              ; preds = %271, %263
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %16, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %16, align 4
  br label %259

280:                                              ; preds = %259
  br label %281

281:                                              ; preds = %280, %245
  br label %282

282:                                              ; preds = %281, %242
  %283 = load i8*, i8** %10, align 8
  store i8* %283, i8** %3, align 8
  br label %284

284:                                              ; preds = %282, %161, %95, %82
  %285 = load i8*, i8** %3, align 8
  ret i8* %285
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info*) #1

declare dso_local i32 @strnlen(i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
