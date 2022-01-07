; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_check_csd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_check_csd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64, %struct.sd_info }
%struct.sd_info = type { i32, i32, i32, i32 }

@SD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SD_NO_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SEND_CSD = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"CSD Response:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%*ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"csd_ver = %d\0A\00", align 1
@CLK_50 = common dso_local global i32 0, align 4
@CLK_40 = common dso_local global i32 0, align 4
@CLK_30 = common dso_local global i32 0, align 4
@CLK_20 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"CSD WP Status: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i8)* @sd_check_csd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_check_csd(%struct.rtsx_chip* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i8 %1, i8* %5, align 1
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %17 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %16, i32 0, i32 2
  store %struct.sd_info* %17, %struct.sd_info** %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %46, %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %23 = load i32, i32* @SD_CARD, align 4
  %24 = call i32 @detect_card_cd(%struct.rtsx_chip* %22, i32 %23)
  %25 = load i32, i32* @STATUS_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %29 = load i32, i32* @SD_NO_CARD, align 4
  %30 = call i32 @sd_set_err_code(%struct.rtsx_chip* %28, i32 %29)
  %31 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %31, i32* %3, align 4
  br label %271

32:                                               ; preds = %21
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %34 = load i32, i32* @SEND_CSD, align 4
  %35 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %36 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SD_RSP_TYPE_R2, align 4
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %40 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %33, i32 %34, i32 %37, i32 %38, i32* %39, i32 16)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @STATUS_SUCCESS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %49

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %18

49:                                               ; preds = %44, %18
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 6
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %53, i32* %3, align 4
  br label %271

54:                                               ; preds = %49
  %55 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %56 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = call i32 @memcpy(i32 %57, i32* %59, i32 15)
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %62 = call i32 @rtsx_dev(%struct.rtsx_chip* %61)
  %63 = call i32 (i32, i8*, ...) @dev_dbg(i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %65 = call i32 @rtsx_dev(%struct.rtsx_chip* %64)
  %66 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %67 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @dev_dbg(i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 16, i32 %68)
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 192
  %73 = ashr i32 %72, 6
  store i32 %73, i32* %9, align 4
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %75 = call i32 @rtsx_dev(%struct.rtsx_chip* %74)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32, i8*, ...) @dev_dbg(i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 4
  %79 = load i32, i32* %78, align 16
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 7
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %177

83:                                               ; preds = %54
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, 248
  %86 = icmp sge i32 %85, 48
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %89 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %94 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %93, i32 0, i32 0
  store i32 47, i32* %94, align 4
  br label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @CLK_50, align 4
  %97 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %98 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %92
  br label %176

100:                                              ; preds = %83
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, 248
  %103 = icmp eq i32 %102, 40
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %106 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %111 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %110, i32 0, i32 0
  store i32 39, i32* %111, align 4
  br label %116

112:                                              ; preds = %104
  %113 = load i32, i32* @CLK_40, align 4
  %114 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %115 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %109
  br label %175

117:                                              ; preds = %100
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, 248
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %123 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %128 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %127, i32 0, i32 0
  store i32 29, i32* %128, align 4
  br label %133

129:                                              ; preds = %121
  %130 = load i32, i32* @CLK_30, align 4
  %131 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %132 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %126
  br label %174

134:                                              ; preds = %117
  %135 = load i32, i32* %10, align 4
  %136 = and i32 %135, 248
  %137 = icmp sge i32 %136, 16
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %140 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %145 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %144, i32 0, i32 0
  store i32 23, i32* %145, align 4
  br label %151

146:                                              ; preds = %138
  %147 = load i8*, i8** @CLK_20, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %150 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %146, %143
  br label %173

152:                                              ; preds = %134
  %153 = load i32, i32* %10, align 4
  %154 = and i32 %153, 8
  %155 = icmp sge i32 %154, 8
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %158 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %163 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %162, i32 0, i32 0
  store i32 19, i32* %163, align 4
  br label %169

164:                                              ; preds = %156
  %165 = load i8*, i8** @CLK_20, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %168 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %164, %161
  br label %172

170:                                              ; preds = %152
  %171 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %171, i32* %3, align 4
  br label %271

172:                                              ; preds = %169
  br label %173

173:                                              ; preds = %172, %151
  br label %174

174:                                              ; preds = %173, %133
  br label %175

175:                                              ; preds = %174, %116
  br label %176

176:                                              ; preds = %175, %99
  br label %179

177:                                              ; preds = %54
  %178 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %178, i32* %3, align 4
  br label %271

179:                                              ; preds = %176
  %180 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %181 = call i64 @CHK_MMC_SECTOR_MODE(%struct.sd_info* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %185 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %184, i32 0, i32 1
  store i32 0, i32* %185, align 4
  br label %249

186:                                              ; preds = %179
  %187 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %188 = call i32 @CHK_SD_HCXC(%struct.sd_info* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load i32, i32* %9, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %231

193:                                              ; preds = %190, %186
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 6
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, 15
  store i32 %196, i32* %12, align 4
  %197 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 7
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 3
  %200 = shl i32 %199, 10
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 8
  %202 = load i32, i32* %201, align 16
  %203 = shl i32 %202, 2
  %204 = add nsw i32 %200, %203
  %205 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 9
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, 192
  %208 = ashr i32 %207, 6
  %209 = add nsw i32 %204, %208
  store i32 %209, i32* %14, align 4
  %210 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 10
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, 3
  %213 = shl i32 %212, 1
  store i32 %213, i32* %13, align 4
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 11
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, 128
  %217 = ashr i32 %216, 7
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %13, align 4
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 1
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 2
  %224 = shl i32 1, %223
  %225 = mul nsw i32 %221, %224
  %226 = load i32, i32* %12, align 4
  %227 = sub nsw i32 %226, 9
  %228 = shl i32 %225, %227
  %229 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %230 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  br label %248

231:                                              ; preds = %190
  store i32 0, i32* %15, align 4
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 8
  %233 = load i32, i32* %232, align 16
  %234 = and i32 %233, 63
  %235 = shl i32 %234, 16
  %236 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 9
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 8
  %239 = or i32 %235, %238
  %240 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 10
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %239, %241
  store i32 %242, i32* %15, align 4
  %243 = load i32, i32* %15, align 4
  %244 = add nsw i32 %243, 1
  %245 = shl i32 %244, 10
  %246 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %247 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %231, %193
  br label %249

249:                                              ; preds = %248, %183
  %250 = load i8, i8* %5, align 1
  %251 = icmp ne i8 %250, 0
  br i1 %251, label %252, label %269

252:                                              ; preds = %249
  %253 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 15
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, 48
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %252
  %258 = load i32, i32* @SD_CARD, align 4
  %259 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %260 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %257, %252
  %264 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %265 = call i32 @rtsx_dev(%struct.rtsx_chip* %264)
  %266 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 15
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (i32, i8*, ...) @dev_dbg(i32 %265, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %263, %249
  %270 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %269, %177, %170, %52, %27
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_MMC_SECTOR_MODE(%struct.sd_info*) #1

declare dso_local i32 @CHK_SD_HCXC(%struct.sd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
