; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_parse_dacl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_parse_dacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sid = type { i32 }
%struct.cifs_acl = type { i32, i32, i32 }
%struct.cifs_fattr = type { i32 }
%struct.cifs_ace = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@S_IRWXUGO = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ACL too small to parse DACL\0A\00", align 1
@NOISY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"DACL revision %d size %d num aces %d\0A\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sid_unix_NFS_mode = common dso_local global %struct.cifs_sid zeroinitializer, align 4
@sid_everyone = common dso_local global %struct.cifs_sid zeroinitializer, align 4
@sid_authusers = common dso_local global %struct.cifs_sid zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_acl*, i8*, %struct.cifs_sid*, %struct.cifs_sid*, %struct.cifs_fattr*, i32)* @parse_dacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_dacl(%struct.cifs_acl* %0, i8* %1, %struct.cifs_sid* %2, %struct.cifs_sid* %3, %struct.cifs_fattr* %4, i32 %5) #0 {
  %7 = alloca %struct.cifs_acl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cifs_sid*, align 8
  %10 = alloca %struct.cifs_sid*, align 8
  %11 = alloca %struct.cifs_fattr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.cifs_ace**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.cifs_acl* %0, %struct.cifs_acl** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.cifs_sid* %2, %struct.cifs_sid** %9, align 8
  store %struct.cifs_sid* %3, %struct.cifs_sid** %10, align 8
  store %struct.cifs_fattr* %4, %struct.cifs_fattr** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.cifs_acl*, %struct.cifs_acl** %7, align 8
  %22 = icmp ne %struct.cifs_acl* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @S_IRWXUGO, align 4
  %25 = load %struct.cifs_fattr*, %struct.cifs_fattr** %11, align 8
  %26 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %276

29:                                               ; preds = %6
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.cifs_acl*, %struct.cifs_acl** %7, align 8
  %32 = bitcast %struct.cifs_acl* %31 to i8*
  %33 = load %struct.cifs_acl*, %struct.cifs_acl** %7, align 8
  %34 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  %39 = icmp ult i8* %30, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @VFS, align 4
  %42 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %276

43:                                               ; preds = %29
  %44 = load i32, i32* @NOISY, align 4
  %45 = load %struct.cifs_acl*, %struct.cifs_acl** %7, align 8
  %46 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = load %struct.cifs_acl*, %struct.cifs_acl** %7, align 8
  %50 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load %struct.cifs_acl*, %struct.cifs_acl** %7, align 8
  %54 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %52, i32 %56)
  %58 = load i32, i32* @S_IRWXUGO, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.cifs_fattr*, %struct.cifs_fattr** %11, align 8
  %61 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.cifs_acl*, %struct.cifs_acl** %7, align 8
  %65 = bitcast %struct.cifs_acl* %64 to i8*
  store i8* %65, i8** %16, align 8
  store i32 12, i32* %15, align 4
  %66 = load %struct.cifs_acl*, %struct.cifs_acl** %7, align 8
  %67 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %275

72:                                               ; preds = %43
  %73 = load i32, i32* @S_IRWXU, align 4
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* @S_IRWXG, align 4
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* @S_IRWXU, align 4
  %76 = load i32, i32* @S_IRWXG, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @S_IRWXO, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* @ULONG_MAX, align 4
  %83 = sext i32 %82 to i64
  %84 = udiv i64 %83, 8
  %85 = icmp ugt i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  br label %276

87:                                               ; preds = %72
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.cifs_ace** @kmalloc_array(i32 %88, i32 8, i32 %89)
  store %struct.cifs_ace** %90, %struct.cifs_ace*** %17, align 8
  %91 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %92 = icmp ne %struct.cifs_ace** %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %276

94:                                               ; preds = %87
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %269, %94
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %272

99:                                               ; preds = %95
  %100 = load i8*, i8** %16, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = bitcast i8* %103 to %struct.cifs_ace*
  %105 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %105, i64 %107
  store %struct.cifs_ace* %104, %struct.cifs_ace** %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %99
  %112 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %112, i64 %114
  %116 = load %struct.cifs_ace*, %struct.cifs_ace** %115, align 8
  %117 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %116, i32 0, i32 3
  %118 = call i64 @compare_sids(%struct.TYPE_2__* %117, %struct.cifs_sid* @sid_unix_NFS_mode)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %111
  %121 = load %struct.cifs_fattr*, %struct.cifs_fattr** %11, align 8
  %122 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, -4096
  store i32 %124, i32* %122, align 4
  %125 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %125, i64 %127
  %129 = load %struct.cifs_ace*, %struct.cifs_ace** %128, align 8
  %130 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le32_to_cpu(i32 %134)
  %136 = load %struct.cifs_fattr*, %struct.cifs_fattr** %11, align 8
  %137 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %272

140:                                              ; preds = %111, %99
  %141 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %141, i64 %143
  %145 = load %struct.cifs_ace*, %struct.cifs_ace** %144, align 8
  %146 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %145, i32 0, i32 3
  %147 = load %struct.cifs_sid*, %struct.cifs_sid** %9, align 8
  %148 = call i64 @compare_sids(%struct.TYPE_2__* %146, %struct.cifs_sid* %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %140
  %151 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %151, i64 %153
  %155 = load %struct.cifs_ace*, %struct.cifs_ace** %154, align 8
  %156 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %158, i64 %160
  %162 = load %struct.cifs_ace*, %struct.cifs_ace** %161, align 8
  %163 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.cifs_fattr*, %struct.cifs_fattr** %11, align 8
  %166 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %165, i32 0, i32 0
  %167 = call i32 @access_flags_to_mode(i32 %157, i32 %164, i32* %166, i32* %18)
  br label %253

168:                                              ; preds = %140
  %169 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %169, i64 %171
  %173 = load %struct.cifs_ace*, %struct.cifs_ace** %172, align 8
  %174 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %173, i32 0, i32 3
  %175 = load %struct.cifs_sid*, %struct.cifs_sid** %10, align 8
  %176 = call i64 @compare_sids(%struct.TYPE_2__* %174, %struct.cifs_sid* %175)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %168
  %179 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %179, i64 %181
  %183 = load %struct.cifs_ace*, %struct.cifs_ace** %182, align 8
  %184 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %186, i64 %188
  %190 = load %struct.cifs_ace*, %struct.cifs_ace** %189, align 8
  %191 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.cifs_fattr*, %struct.cifs_fattr** %11, align 8
  %194 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %193, i32 0, i32 0
  %195 = call i32 @access_flags_to_mode(i32 %185, i32 %192, i32* %194, i32* %19)
  br label %252

196:                                              ; preds = %168
  %197 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %197, i64 %199
  %201 = load %struct.cifs_ace*, %struct.cifs_ace** %200, align 8
  %202 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %201, i32 0, i32 3
  %203 = call i64 @compare_sids(%struct.TYPE_2__* %202, %struct.cifs_sid* @sid_everyone)
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %223

205:                                              ; preds = %196
  %206 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %206, i64 %208
  %210 = load %struct.cifs_ace*, %struct.cifs_ace** %209, align 8
  %211 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %213, i64 %215
  %217 = load %struct.cifs_ace*, %struct.cifs_ace** %216, align 8
  %218 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.cifs_fattr*, %struct.cifs_fattr** %11, align 8
  %221 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %220, i32 0, i32 0
  %222 = call i32 @access_flags_to_mode(i32 %212, i32 %219, i32* %221, i32* %20)
  br label %251

223:                                              ; preds = %196
  %224 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %224, i64 %226
  %228 = load %struct.cifs_ace*, %struct.cifs_ace** %227, align 8
  %229 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %228, i32 0, i32 3
  %230 = call i64 @compare_sids(%struct.TYPE_2__* %229, %struct.cifs_sid* @sid_authusers)
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %250

232:                                              ; preds = %223
  %233 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %233, i64 %235
  %237 = load %struct.cifs_ace*, %struct.cifs_ace** %236, align 8
  %238 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %240, i64 %242
  %244 = load %struct.cifs_ace*, %struct.cifs_ace** %243, align 8
  %245 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.cifs_fattr*, %struct.cifs_fattr** %11, align 8
  %248 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %247, i32 0, i32 0
  %249 = call i32 @access_flags_to_mode(i32 %239, i32 %246, i32* %248, i32* %20)
  br label %250

250:                                              ; preds = %232, %223
  br label %251

251:                                              ; preds = %250, %205
  br label %252

252:                                              ; preds = %251, %178
  br label %253

253:                                              ; preds = %252, %150
  br label %254

254:                                              ; preds = %253
  %255 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %255, i64 %257
  %259 = load %struct.cifs_ace*, %struct.cifs_ace** %258, align 8
  %260 = bitcast %struct.cifs_ace* %259 to i8*
  store i8* %260, i8** %16, align 8
  %261 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.cifs_ace*, %struct.cifs_ace** %261, i64 %263
  %265 = load %struct.cifs_ace*, %struct.cifs_ace** %264, align 8
  %266 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @le16_to_cpu(i32 %267)
  store i32 %268, i32* %15, align 4
  br label %269

269:                                              ; preds = %254
  %270 = load i32, i32* %13, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %13, align 4
  br label %95

272:                                              ; preds = %120, %95
  %273 = load %struct.cifs_ace**, %struct.cifs_ace*** %17, align 8
  %274 = call i32 @kfree(%struct.cifs_ace** %273)
  br label %275

275:                                              ; preds = %272, %43
  br label %276

276:                                              ; preds = %275, %93, %86, %40, %23
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.cifs_ace** @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @compare_sids(%struct.TYPE_2__*, %struct.cifs_sid*) #1

declare dso_local i32 @access_flags_to_mode(i32, i32, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.cifs_ace**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
