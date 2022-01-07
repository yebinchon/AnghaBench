; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_parse_text_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_parse_text_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vlserver_list = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.afs_net = type { i32 }
%struct.afs_addr_list = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%*.*s,%c\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c" = -EDESTADDRREQ [empty]\00", align 1
@EDESTADDRREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"nul\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"brace1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"brace2\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%u/%u addresses\00", align 1
@AFS_MAX_ADDRESSES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"<dummy>\00", align 1
@AFS_VL_PORT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"nostop\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pval\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"weird\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c" = [nr %u]\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c" = -EINVAL [%s %zu %*.*s]\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_vlserver_list* @afs_parse_text_addrs(%struct.afs_net* %0, i8* %1, i64 %2, i8 signext %3, i16 zeroext %4, i16 zeroext %5) #0 {
  %7 = alloca %struct.afs_vlserver_list*, align 8
  %8 = alloca %struct.afs_net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca %struct.afs_vlserver_list*, align 8
  %15 = alloca %struct.afs_addr_list*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca [4 x i32], align 16
  %25 = alloca i32, align 4
  store %struct.afs_net* %0, %struct.afs_net** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8 %3, i8* %11, align 1
  store i16 %4, i16* %12, align 2
  store i16 %5, i16* %13, align 2
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %17, align 8
  store i32 0, i32* %19, align 4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %20, align 4
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %11, align 1
  %37 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34, i8* %35, i8 signext %36)
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %6
  %41 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EDESTADDRREQ, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.afs_vlserver_list* @ERR_PTR(i32 %43)
  store %struct.afs_vlserver_list* %44, %struct.afs_vlserver_list** %7, align 8
  br label %406

45:                                               ; preds = %6
  %46 = load i8, i8* %11, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 58
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i8* @memchr(i8* %50, i8 signext 44, i32 %52)
  %54 = icmp ne i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i8* @memchr(i8* %56, i8 signext 46, i32 %58)
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55, %49
  store i8 44, i8* %11, align 1
  br label %62

62:                                               ; preds = %61, %55, %45
  %63 = load i8*, i8** %9, align 8
  store i8* %63, i8** %16, align 8
  br label %64

64:                                               ; preds = %127, %62
  %65 = load i8*, i8** %16, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %366

69:                                               ; preds = %64
  %70 = load i8*, i8** %16, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* %11, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %127

77:                                               ; preds = %69
  %78 = load i32, i32* %19, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %19, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 91
  br i1 %83, label %84, label %111

84:                                               ; preds = %77
  %85 = load i8*, i8** %16, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %16, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %366

91:                                               ; preds = %84
  %92 = load i8*, i8** %16, align 8
  %93 = load i8*, i8** %17, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = call i8* @memchr(i8* %92, i8 signext 93, i32 %98)
  store i8* %99, i8** %16, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %91
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %366

103:                                              ; preds = %91
  %104 = load i8*, i8** %16, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %16, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = icmp uge i8* %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %131

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %77
  %112 = load i8*, i8** %16, align 8
  %113 = load i8, i8* %11, align 1
  %114 = load i8*, i8** %17, align 8
  %115 = load i8*, i8** %16, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  %120 = call i8* @memchr(i8* %112, i8 signext %113, i32 %119)
  store i8* %120, i8** %16, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %111
  br label %131

124:                                              ; preds = %111
  %125 = load i8*, i8** %16, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %16, align 8
  br label %127

127:                                              ; preds = %124, %76
  %128 = load i8*, i8** %16, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = icmp ult i8* %128, %129
  br i1 %130, label %64, label %131

131:                                              ; preds = %127, %123, %109
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* @AFS_MAX_ADDRESSES, align 4
  %134 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %132, i32 %133)
  %135 = call %struct.afs_vlserver_list* @afs_alloc_vlserver_list(i32 1)
  store %struct.afs_vlserver_list* %135, %struct.afs_vlserver_list** %14, align 8
  %136 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %14, align 8
  %137 = icmp ne %struct.afs_vlserver_list* %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  %141 = call %struct.afs_vlserver_list* @ERR_PTR(i32 %140)
  store %struct.afs_vlserver_list* %141, %struct.afs_vlserver_list** %7, align 8
  br label %406

142:                                              ; preds = %131
  %143 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %14, align 8
  %144 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load i32, i32* @AFS_VL_PORT, align 4
  %146 = call %struct.TYPE_4__* @afs_alloc_vlserver(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7, i32 %145)
  %147 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %14, align 8
  %148 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %147, i32 0, i32 1
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store %struct.TYPE_4__* %146, %struct.TYPE_4__** %151, align 8
  %152 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %14, align 8
  %153 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = icmp ne %struct.TYPE_4__* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %142
  br label %400

160:                                              ; preds = %142
  %161 = load i32, i32* %19, align 4
  %162 = load i16, i16* %12, align 2
  %163 = load i32, i32* @AFS_VL_PORT, align 4
  %164 = call %struct.afs_addr_list* @afs_alloc_addrlist(i32 %161, i16 zeroext %162, i32 %163)
  store %struct.afs_addr_list* %164, %struct.afs_addr_list** %15, align 8
  %165 = load %struct.afs_addr_list*, %struct.afs_addr_list** %15, align 8
  %166 = icmp ne %struct.afs_addr_list* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  br label %397

168:                                              ; preds = %160
  %169 = load i8*, i8** %9, align 8
  store i8* %169, i8** %16, align 8
  br label %170

170:                                              ; preds = %346, %168
  %171 = load i16, i16* %13, align 2
  %172 = zext i16 %171 to i32
  store i32 %172, i32* %23, align 4
  %173 = load i8*, i8** %16, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = load i8, i8* %11, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load i8*, i8** %16, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %16, align 8
  br label %346

182:                                              ; preds = %170
  %183 = load i8*, i8** %16, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 91
  br i1 %186, label %187, label %198

187:                                              ; preds = %182
  %188 = load i8*, i8** %16, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %16, align 8
  %190 = load i8*, i8** %16, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = load i8*, i8** %16, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = call i8* @memchr(i8* %190, i8 signext 93, i32 %196)
  store i8* %197, i8** %21, align 8
  br label %222

198:                                              ; preds = %182
  %199 = load i8*, i8** %16, align 8
  store i8* %199, i8** %21, align 8
  br label %200

200:                                              ; preds = %218, %198
  %201 = load i8*, i8** %21, align 8
  %202 = load i8*, i8** %17, align 8
  %203 = icmp ult i8* %201, %202
  br i1 %203, label %204, label %221

204:                                              ; preds = %200
  %205 = load i8*, i8** %21, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 43
  br i1 %208, label %216, label %209

209:                                              ; preds = %204
  %210 = load i8*, i8** %21, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = load i8, i8* %11, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %209, %204
  br label %221

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %217
  %219 = load i8*, i8** %21, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %21, align 8
  br label %200

221:                                              ; preds = %216, %200
  br label %222

222:                                              ; preds = %221, %187
  %223 = load i8*, i8** %16, align 8
  %224 = load i8*, i8** %21, align 8
  %225 = load i8*, i8** %16, align 8
  %226 = ptrtoint i8* %224 to i64
  %227 = ptrtoint i8* %225 to i64
  %228 = sub i64 %226, %227
  %229 = trunc i64 %228 to i32
  %230 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %231 = call i64 @in4_pton(i8* %223, i32 %229, i32* %230, i32 -1, i8** %22)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %222
  %234 = load i32, i32* @AF_INET, align 4
  store i32 %234, i32* %25, align 4
  br label %250

235:                                              ; preds = %222
  %236 = load i8*, i8** %16, align 8
  %237 = load i8*, i8** %21, align 8
  %238 = load i8*, i8** %16, align 8
  %239 = ptrtoint i8* %237 to i64
  %240 = ptrtoint i8* %238 to i64
  %241 = sub i64 %239, %240
  %242 = trunc i64 %241 to i32
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %244 = call i64 @in6_pton(i8* %236, i32 %242, i32* %243, i32 -1, i8** %22)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %235
  %247 = load i32, i32* @AF_INET6, align 4
  store i32 %247, i32* %25, align 4
  br label %249

248:                                              ; preds = %235
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %18, align 8
  br label %382

249:                                              ; preds = %246
  br label %250

250:                                              ; preds = %249, %233
  %251 = load i8*, i8** %21, align 8
  store i8* %251, i8** %16, align 8
  %252 = load i8*, i8** %22, align 8
  %253 = load i8*, i8** %16, align 8
  %254 = icmp ne i8* %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %18, align 8
  br label %382

256:                                              ; preds = %250
  %257 = load i8*, i8** %21, align 8
  %258 = load i8*, i8** %17, align 8
  %259 = icmp ult i8* %257, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %256
  %261 = load i8*, i8** %21, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 93
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load i8*, i8** %16, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %16, align 8
  br label %268

268:                                              ; preds = %265, %260, %256
  %269 = load i8*, i8** %16, align 8
  %270 = load i8*, i8** %17, align 8
  %271 = icmp ult i8* %269, %270
  br i1 %271, label %272, label %330

272:                                              ; preds = %268
  %273 = load i8*, i8** %16, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 43
  br i1 %276, label %277, label %317

277:                                              ; preds = %272
  store i32 0, i32* %23, align 4
  %278 = load i8*, i8** %16, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %16, align 8
  %280 = load i8*, i8** %16, align 8
  %281 = load i8*, i8** %17, align 8
  %282 = icmp uge i8* %280, %281
  br i1 %282, label %288, label %283

283:                                              ; preds = %277
  %284 = load i8*, i8** %16, align 8
  %285 = load i8, i8* %284, align 1
  %286 = call i64 @isdigit(i8 signext %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %283, %277
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %18, align 8
  br label %382

289:                                              ; preds = %283
  br label %290

290:                                              ; preds = %314, %289
  %291 = load i32, i32* %23, align 4
  %292 = mul i32 %291, 10
  store i32 %292, i32* %23, align 4
  %293 = load i8*, i8** %16, align 8
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = sub nsw i32 %295, 48
  %297 = load i32, i32* %23, align 4
  %298 = add i32 %297, %296
  store i32 %298, i32* %23, align 4
  %299 = load i32, i32* %23, align 4
  %300 = icmp ugt i32 %299, 65535
  br i1 %300, label %301, label %302

301:                                              ; preds = %290
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %18, align 8
  br label %382

302:                                              ; preds = %290
  %303 = load i8*, i8** %16, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %16, align 8
  br label %305

305:                                              ; preds = %302
  %306 = load i8*, i8** %16, align 8
  %307 = load i8*, i8** %17, align 8
  %308 = icmp ult i8* %306, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = load i8*, i8** %16, align 8
  %311 = load i8, i8* %310, align 1
  %312 = call i64 @isdigit(i8 signext %311)
  %313 = icmp ne i64 %312, 0
  br label %314

314:                                              ; preds = %309, %305
  %315 = phi i1 [ false, %305 ], [ %313, %309 ]
  br i1 %315, label %290, label %316

316:                                              ; preds = %314
  br label %329

317:                                              ; preds = %272
  %318 = load i8*, i8** %16, align 8
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = load i8, i8* %11, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 %320, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %317
  %325 = load i8*, i8** %16, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %16, align 8
  br label %328

327:                                              ; preds = %317
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %18, align 8
  br label %382

328:                                              ; preds = %324
  br label %329

329:                                              ; preds = %328, %316
  br label %330

330:                                              ; preds = %329, %268
  %331 = load i32, i32* %25, align 4
  %332 = load i32, i32* @AF_INET, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %340

334:                                              ; preds = %330
  %335 = load %struct.afs_addr_list*, %struct.afs_addr_list** %15, align 8
  %336 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %337 = load i32, i32* %336, align 16
  %338 = load i32, i32* %23, align 4
  %339 = call i32 @afs_merge_fs_addr4(%struct.afs_addr_list* %335, i32 %337, i32 %338)
  br label %345

340:                                              ; preds = %330
  %341 = load %struct.afs_addr_list*, %struct.afs_addr_list** %15, align 8
  %342 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %343 = load i32, i32* %23, align 4
  %344 = call i32 @afs_merge_fs_addr6(%struct.afs_addr_list* %341, i32* %342, i32 %343)
  br label %345

345:                                              ; preds = %340, %334
  br label %346

346:                                              ; preds = %345, %179
  %347 = load i8*, i8** %16, align 8
  %348 = load i8*, i8** %17, align 8
  %349 = icmp ult i8* %347, %348
  br i1 %349, label %170, label %350

350:                                              ; preds = %346
  %351 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %14, align 8
  %352 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %351, i32 0, i32 1
  %353 = load %struct.TYPE_3__*, %struct.TYPE_3__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i64 0
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.afs_addr_list*, %struct.afs_addr_list** %15, align 8
  %360 = call i32 @rcu_assign_pointer(i32 %358, %struct.afs_addr_list* %359)
  %361 = load %struct.afs_addr_list*, %struct.afs_addr_list** %15, align 8
  %362 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %363)
  %365 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %14, align 8
  store %struct.afs_vlserver_list* %365, %struct.afs_vlserver_list** %7, align 8
  br label %406

366:                                              ; preds = %102, %90, %68
  %367 = load i8*, i8** %18, align 8
  %368 = load i8*, i8** %16, align 8
  %369 = load i8*, i8** %9, align 8
  %370 = ptrtoint i8* %368 to i64
  %371 = ptrtoint i8* %369 to i64
  %372 = sub i64 %370, %371
  %373 = load i64, i64* %10, align 8
  %374 = trunc i64 %373 to i32
  %375 = load i64, i64* %10, align 8
  %376 = trunc i64 %375 to i32
  %377 = load i8*, i8** %9, align 8
  %378 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %367, i64 %372, i32 %374, i32 %376, i8* %377)
  %379 = load i32, i32* @EINVAL, align 4
  %380 = sub nsw i32 0, %379
  %381 = call %struct.afs_vlserver_list* @ERR_PTR(i32 %380)
  store %struct.afs_vlserver_list* %381, %struct.afs_vlserver_list** %7, align 8
  br label %406

382:                                              ; preds = %327, %301, %288, %255, %248
  %383 = load i8*, i8** %18, align 8
  %384 = load i8*, i8** %16, align 8
  %385 = load i8*, i8** %9, align 8
  %386 = ptrtoint i8* %384 to i64
  %387 = ptrtoint i8* %385 to i64
  %388 = sub i64 %386, %387
  %389 = load i64, i64* %10, align 8
  %390 = trunc i64 %389 to i32
  %391 = load i64, i64* %10, align 8
  %392 = trunc i64 %391 to i32
  %393 = load i8*, i8** %9, align 8
  %394 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %383, i64 %388, i32 %390, i32 %392, i8* %393)
  %395 = load i32, i32* @EINVAL, align 4
  %396 = sub nsw i32 0, %395
  store i32 %396, i32* %20, align 4
  br label %397

397:                                              ; preds = %382, %167
  %398 = load %struct.afs_addr_list*, %struct.afs_addr_list** %15, align 8
  %399 = call i32 @afs_put_addrlist(%struct.afs_addr_list* %398)
  br label %400

400:                                              ; preds = %397, %159
  %401 = load %struct.afs_net*, %struct.afs_net** %8, align 8
  %402 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %14, align 8
  %403 = call i32 @afs_put_vlserverlist(%struct.afs_net* %401, %struct.afs_vlserver_list* %402)
  %404 = load i32, i32* %20, align 4
  %405 = call %struct.afs_vlserver_list* @ERR_PTR(i32 %404)
  store %struct.afs_vlserver_list* %405, %struct.afs_vlserver_list** %7, align 8
  br label %406

406:                                              ; preds = %400, %366, %350, %138, %40
  %407 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %7, align 8
  ret %struct.afs_vlserver_list* %407
}

declare dso_local i32 @_enter(i8*, i32, i32, i8*, i8 signext) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.afs_vlserver_list* @ERR_PTR(i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @_debug(i8*, i32, i32) #1

declare dso_local %struct.afs_vlserver_list* @afs_alloc_vlserver_list(i32) #1

declare dso_local %struct.TYPE_4__* @afs_alloc_vlserver(i8*, i32, i32) #1

declare dso_local %struct.afs_addr_list* @afs_alloc_addrlist(i32, i16 zeroext, i32) #1

declare dso_local i64 @in4_pton(i8*, i32, i32*, i32, i8**) #1

declare dso_local i64 @in6_pton(i8*, i32, i32*, i32, i8**) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @afs_merge_fs_addr4(%struct.afs_addr_list*, i32, i32) #1

declare dso_local i32 @afs_merge_fs_addr6(%struct.afs_addr_list*, i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.afs_addr_list*) #1

declare dso_local i32 @afs_put_addrlist(%struct.afs_addr_list*) #1

declare dso_local i32 @afs_put_vlserverlist(%struct.afs_net*, %struct.afs_vlserver_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
