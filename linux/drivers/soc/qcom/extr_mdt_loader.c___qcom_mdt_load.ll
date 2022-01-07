; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_mdt_loader.c___qcom_mdt_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_mdt_loader.c___qcom_mdt_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.firmware = type { i64, i64 }
%struct.elf32_phdr = type { i32, i64, i64, i64, i64 }
%struct.elf32_hdr = type { i32 }

@PHYS_ADDR_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid firmware metadata\0A\00", align 1
@QCOM_MDT_RELOCATABLE = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to setup relocation\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"segment outside memory range\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"failed to load segment %d from truncated file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"b%02d\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"failed to load %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.firmware*, i8*, i32, i8*, i64, i64, i64*, i32)* @__qcom_mdt_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qcom_mdt_load(%struct.device* %0, %struct.firmware* %1, i8* %2, i32 %3, i8* %4, i64 %5, i64 %6, i64* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.firmware*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.elf32_phdr*, align 8
  %21 = alloca %struct.elf32_phdr*, align 8
  %22 = alloca %struct.elf32_hdr*, align 8
  %23 = alloca %struct.firmware*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %11, align 8
  store %struct.firmware* %1, %struct.firmware** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64* %7, i64** %18, align 8
  store i32 %8, i32* %19, align 4
  %36 = load i64, i64* @PHYS_ADDR_MAX, align 8
  store i64 %36, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %34, align 4
  %37 = load %struct.firmware*, %struct.firmware** %12, align 8
  %38 = icmp ne %struct.firmware* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %9
  %40 = load i8*, i8** %15, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i64, i64* %16, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* %17, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45, %42, %39, %9
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %333

51:                                               ; preds = %45
  %52 = load %struct.firmware*, %struct.firmware** %12, align 8
  %53 = getelementptr inbounds %struct.firmware, %struct.firmware* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %55, %struct.elf32_hdr** %22, align 8
  %56 = load %struct.elf32_hdr*, %struct.elf32_hdr** %22, align 8
  %57 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %56, i64 1
  %58 = bitcast %struct.elf32_hdr* %57 to %struct.elf32_phdr*
  store %struct.elf32_phdr* %58, %struct.elf32_phdr** %20, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = call i64 @strlen(i8* %59)
  store i64 %60, i64* %28, align 8
  %61 = load i64, i64* %28, align 8
  %62 = icmp ule i64 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %333

66:                                               ; preds = %51
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kstrdup(i8* %67, i32 %68)
  store i8* %69, i8** %31, align 8
  %70 = load i8*, i8** %31, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %333

75:                                               ; preds = %66
  %76 = load i32, i32* %19, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %75
  %79 = load %struct.firmware*, %struct.firmware** %12, align 8
  %80 = call i8* @qcom_mdt_read_metadata(%struct.firmware* %79, i64* %27)
  store i8* %80, i8** %30, align 8
  %81 = load i8*, i8** %30, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i8*, i8** %30, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %34, align 4
  br label %329

87:                                               ; preds = %78
  %88 = load i32, i32* %14, align 4
  %89 = load i8*, i8** %30, align 8
  %90 = load i64, i64* %27, align 8
  %91 = call i32 @qcom_scm_pas_init_image(i32 %88, i8* %89, i64 %90)
  store i32 %91, i32* %34, align 4
  %92 = load i8*, i8** %30, align 8
  %93 = call i32 @kfree(i8* %92)
  %94 = load i32, i32* %34, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load %struct.device*, %struct.device** %11, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %329

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %75
  store i32 0, i32* %35, align 4
  br label %101

101:                                              ; preds = %155, %100
  %102 = load i32, i32* %35, align 4
  %103 = load %struct.elf32_hdr*, %struct.elf32_hdr** %22, align 8
  %104 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %158

107:                                              ; preds = %101
  %108 = load %struct.elf32_phdr*, %struct.elf32_phdr** %20, align 8
  %109 = load i32, i32* %35, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %108, i64 %110
  store %struct.elf32_phdr* %111, %struct.elf32_phdr** %21, align 8
  %112 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %113 = call i32 @mdt_phdr_valid(%struct.elf32_phdr* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  br label %155

116:                                              ; preds = %107
  %117 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %118 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @QCOM_MDT_RELOCATABLE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  store i32 1, i32* %32, align 4
  br label %124

124:                                              ; preds = %123, %116
  %125 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %126 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %25, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %132 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %25, align 8
  br label %134

134:                                              ; preds = %130, %124
  %135 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %136 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %139 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %137, %140
  %142 = load i64, i64* %26, align 8
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %134
  %145 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %146 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %149 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %147, %150
  %152 = load i32, i32* @SZ_4K, align 4
  %153 = call i64 @ALIGN(i64 %151, i32 %152)
  store i64 %153, i64* %26, align 8
  br label %154

154:                                              ; preds = %144, %134
  br label %155

155:                                              ; preds = %154, %115
  %156 = load i32, i32* %35, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %35, align 4
  br label %101

158:                                              ; preds = %101
  %159 = load i32, i32* %32, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i32, i32* %19, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load i32, i32* %14, align 4
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* %26, align 8
  %168 = load i64, i64* %25, align 8
  %169 = sub nsw i64 %167, %168
  %170 = call i32 @qcom_scm_pas_mem_setup(i32 %165, i64 %166, i64 %169)
  store i32 %170, i32* %34, align 4
  %171 = load i32, i32* %34, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  %174 = load %struct.device*, %struct.device** %11, align 8
  %175 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %174, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %329

176:                                              ; preds = %164
  br label %177

177:                                              ; preds = %176, %161
  %178 = load i64, i64* %25, align 8
  store i64 %178, i64* %24, align 8
  br label %181

179:                                              ; preds = %158
  %180 = load i64, i64* %16, align 8
  store i64 %180, i64* %24, align 8
  br label %181

181:                                              ; preds = %179, %177
  store i32 0, i32* %35, align 4
  br label %182

182:                                              ; preds = %319, %181
  %183 = load i32, i32* %35, align 4
  %184 = load %struct.elf32_hdr*, %struct.elf32_hdr** %22, align 8
  %185 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %322

188:                                              ; preds = %182
  %189 = load %struct.elf32_phdr*, %struct.elf32_phdr** %20, align 8
  %190 = load i32, i32* %35, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %189, i64 %191
  store %struct.elf32_phdr* %192, %struct.elf32_phdr** %21, align 8
  %193 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %194 = call i32 @mdt_phdr_valid(%struct.elf32_phdr* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %188
  br label %319

197:                                              ; preds = %188
  %198 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %199 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %24, align 8
  %202 = sub nsw i64 %200, %201
  store i64 %202, i64* %29, align 8
  %203 = load i64, i64* %29, align 8
  %204 = icmp ult i64 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %197
  %206 = load i64, i64* %29, align 8
  %207 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %208 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %206, %209
  %211 = load i64, i64* %17, align 8
  %212 = icmp ugt i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %205, %197
  %214 = load %struct.device*, %struct.device** %11, align 8
  %215 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %214, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %34, align 4
  br label %322

218:                                              ; preds = %205
  %219 = load i8*, i8** %15, align 8
  %220 = load i64, i64* %29, align 8
  %221 = getelementptr i8, i8* %219, i64 %220
  store i8* %221, i8** %33, align 8
  %222 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %223 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %266

226:                                              ; preds = %218
  %227 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %228 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.firmware*, %struct.firmware** %12, align 8
  %231 = getelementptr inbounds %struct.firmware, %struct.firmware* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp slt i64 %229, %232
  br i1 %233, label %234, label %266

234:                                              ; preds = %226
  %235 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %236 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %239 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = add i64 %237, %240
  %242 = load %struct.firmware*, %struct.firmware** %12, align 8
  %243 = getelementptr inbounds %struct.firmware, %struct.firmware* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp ugt i64 %241, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %234
  %247 = load %struct.device*, %struct.device** %11, align 8
  %248 = load i32, i32* %35, align 4
  %249 = load i8*, i8** %13, align 8
  %250 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %247, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %248, i8* %249)
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %34, align 4
  br label %322

253:                                              ; preds = %234
  %254 = load i8*, i8** %33, align 8
  %255 = load %struct.firmware*, %struct.firmware** %12, align 8
  %256 = getelementptr inbounds %struct.firmware, %struct.firmware* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %259 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %257, %260
  %262 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %263 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @memcpy(i8* %254, i64 %261, i64 %264)
  br label %296

266:                                              ; preds = %226, %218
  %267 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %268 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %295

271:                                              ; preds = %266
  %272 = load i8*, i8** %31, align 8
  %273 = load i64, i64* %28, align 8
  %274 = getelementptr inbounds i8, i8* %272, i64 %273
  %275 = getelementptr inbounds i8, i8* %274, i64 -3
  %276 = ptrtoint i8* %275 to i64
  %277 = load i32, i32* %35, align 4
  %278 = call i32 @sprintf(i64 %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %277)
  %279 = load i8*, i8** %31, align 8
  %280 = load %struct.device*, %struct.device** %11, align 8
  %281 = load i8*, i8** %33, align 8
  %282 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %283 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @request_firmware_into_buf(%struct.firmware** %23, i8* %279, %struct.device* %280, i8* %281, i64 %284)
  store i32 %285, i32* %34, align 4
  %286 = load i32, i32* %34, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %271
  %289 = load %struct.device*, %struct.device** %11, align 8
  %290 = load i8*, i8** %31, align 8
  %291 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %289, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %290)
  br label %322

292:                                              ; preds = %271
  %293 = load %struct.firmware*, %struct.firmware** %23, align 8
  %294 = call i32 @release_firmware(%struct.firmware* %293)
  br label %295

295:                                              ; preds = %292, %266
  br label %296

296:                                              ; preds = %295, %253
  %297 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %298 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %301 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = icmp ugt i64 %299, %302
  br i1 %303, label %304, label %318

304:                                              ; preds = %296
  %305 = load i8*, i8** %33, align 8
  %306 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %307 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr i8, i8* %305, i64 %308
  %310 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %311 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.elf32_phdr*, %struct.elf32_phdr** %21, align 8
  %314 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = sub i64 %312, %315
  %317 = call i32 @memset(i8* %309, i32 0, i64 %316)
  br label %318

318:                                              ; preds = %304, %296
  br label %319

319:                                              ; preds = %318, %196
  %320 = load i32, i32* %35, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %35, align 4
  br label %182

322:                                              ; preds = %288, %246, %213, %182
  %323 = load i64*, i64** %18, align 8
  %324 = icmp ne i64* %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load i64, i64* %24, align 8
  %327 = load i64*, i64** %18, align 8
  store i64 %326, i64* %327, align 8
  br label %328

328:                                              ; preds = %325, %322
  br label %329

329:                                              ; preds = %328, %173, %96, %84
  %330 = load i8*, i8** %31, align 8
  %331 = call i32 @kfree(i8* %330)
  %332 = load i32, i32* %34, align 4
  store i32 %332, i32* %10, align 4
  br label %333

333:                                              ; preds = %329, %72, %63, %48
  %334 = load i32, i32* %10, align 4
  ret i32 %334
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @qcom_mdt_read_metadata(%struct.firmware*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @qcom_scm_pas_init_image(i32, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mdt_phdr_valid(%struct.elf32_phdr*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @qcom_scm_pas_mem_setup(i32, i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @sprintf(i64, i8*, i32) #1

declare dso_local i32 @request_firmware_into_buf(%struct.firmware**, i8*, %struct.device*, i8*, i64) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
