; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_reset_sd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_reset_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, i32*, i64*, %struct.sd_info }
%struct.sd_info = type { i32, i32, i32*, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i64 0, align 8
@SD_NO_CARD = common dso_local global i32 0, align 4
@IO_SEND_OP_COND = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SD_IO card (Function number: %d)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Normal card!\0A\00", align 1
@GO_IDLE_STATE = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R0 = common dso_local global i32 0, align 4
@SEND_IF_COND = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R7 = common dso_local global i32 0, align 4
@SUPPORT_VOLTAGE = common dso_local global i32 0, align 4
@APP_CMD = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@SD_APP_OP_COND = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"support_1v8 = %d\0A\00", align 1
@ALL_SEND_CID = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R2 = common dso_local global i32 0, align 4
@SEND_RELATIVE_ADDR = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R6 = common dso_local global i32 0, align 4
@SET_CLR_CARD_DETECT = common dso_local global i32 0, align 4
@SET_BUS_WIDTH = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@SET_BLOCKLEN = common dso_local global i32 0, align 4
@SD_CLK_DIVIDE_0 = common dso_local global i32 0, align 4
@SDR104_SUPPORT_MASK = common dso_local global i32 0, align 4
@DDR50_SUPPORT_MASK = common dso_local global i32 0, align 4
@SDR50_SUPPORT_MASK = common dso_local global i32 0, align 4
@SD30_DRIVE_SEL = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@REG_SD_BLOCK_CNT_H = common dso_local global i32 0, align 4
@REG_SD_BLOCK_CNT_L = common dso_local global i32 0, align 4
@SD_LOCKED = common dso_local global i32 0, align 4
@SD_LOCK_1BIT_MODE = common dso_local global i32 0, align 4
@SD_PWD_EXIST = common dso_local global i32 0, align 4
@SD_UNLOCK_POW_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @reset_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_sd(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %21 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %20, i32 0, i32 5
  store %struct.sd_info* %21, %struct.sd_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %23 = call i32 @SET_SD(%struct.sd_info* %22)
  br label %24

24:                                               ; preds = %525, %489, %413, %406, %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %26 = call i32 @sd_prepare_reset(%struct.rtsx_chip* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %547

31:                                               ; preds = %24
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %33 = call i32 @sd_dummy_clock(%struct.rtsx_chip* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @STATUS_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %547

38:                                               ; preds = %31
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %40 = call i64 @CHK_SDIO_EXIST(%struct.rtsx_chip* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %102

42:                                               ; preds = %38
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %44 = call i32 @CHK_SDIO_IGNORED(%struct.rtsx_chip* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %102, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %46
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %95, %49
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %53 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %50
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %58 = load i64, i64* @SD_CARD, align 8
  %59 = call i32 @detect_card_cd(%struct.rtsx_chip* %57, i64 %58)
  %60 = load i32, i32* @STATUS_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %64 = load i32, i32* @SD_NO_CARD, align 4
  %65 = call i32 @sd_set_err_code(%struct.rtsx_chip* %63, i32 %64)
  br label %547

66:                                               ; preds = %56
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %68 = load i32, i32* @IO_SEND_OP_COND, align 4
  %69 = load i32, i32* @SD_RSP_TYPE_R4, align 4
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %71 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %67, i32 %68, i32 0, i32 %69, i32* %70, i32 5)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @STATUS_SUCCESS, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %66
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 4
  %79 = and i32 %78, 7
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %84 = call i32 @rtsx_dev(%struct.rtsx_chip* %83)
  %85 = load i32, i32* %18, align 4
  %86 = call i32 (i32, i8*, ...) @dev_dbg(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %88 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  br label %547

89:                                               ; preds = %75
  br label %98

90:                                               ; preds = %66
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %92 = call i32 @sd_init_power(%struct.rtsx_chip* %91)
  %93 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %94 = call i32 @sd_dummy_clock(%struct.rtsx_chip* %93)
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %50

98:                                               ; preds = %89, %50
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %100 = call i32 @rtsx_dev(%struct.rtsx_chip* %99)
  %101 = call i32 (i32, i8*, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %46, %42, %38
  br label %103

103:                                              ; preds = %191, %174, %102
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %105 = load i32, i32* @GO_IDLE_STATE, align 4
  %106 = load i32, i32* @SD_RSP_TYPE_R0, align 4
  %107 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %104, i32 %105, i32 0, i32 %106, i32* null, i32 0)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @STATUS_SUCCESS, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %547

112:                                              ; preds = %103
  %113 = call i32 @wait_timeout(i32 20)
  %114 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %115 = load i32, i32* @SEND_IF_COND, align 4
  %116 = load i32, i32* @SD_RSP_TYPE_R7, align 4
  %117 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %118 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %114, i32 %115, i32 426, i32 %116, i32* %117, i32 5)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @STATUS_SUCCESS, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %112
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 4
  %124 = load i32, i32* %123, align 16
  %125 = icmp eq i32 %124, 170
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 15
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  store i32 1, i32* %5, align 4
  %132 = load i32, i32* @SUPPORT_VOLTAGE, align 4
  %133 = or i32 %132, 1073741824
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %131, %126, %122
  br label %135

135:                                              ; preds = %134, %112
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @SUPPORT_VOLTAGE, align 4
  store i32 %139, i32* %15, align 4
  %140 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %141 = load i32, i32* @GO_IDLE_STATE, align 4
  %142 = load i32, i32* @SD_RSP_TYPE_R0, align 4
  %143 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %140, i32 %141, i32 0, i32 %142, i32* null, i32 0)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @STATUS_SUCCESS, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %547

148:                                              ; preds = %138
  %149 = call i32 @wait_timeout(i32 20)
  br label %150

150:                                              ; preds = %148, %135
  br label %151

151:                                              ; preds = %205, %150
  %152 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %153 = load i32, i32* @APP_CMD, align 4
  %154 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %155 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %152, i32 %153, i32 0, i32 %154, i32* null, i32 0)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @STATUS_SUCCESS, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %151
  %160 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %161 = load i64, i64* @SD_CARD, align 8
  %162 = call i32 @detect_card_cd(%struct.rtsx_chip* %160, i64 %161)
  %163 = load i32, i32* @STATUS_SUCCESS, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %167 = load i32, i32* @SD_NO_CARD, align 4
  %168 = call i32 @sd_set_err_code(%struct.rtsx_chip* %166, i32 %167)
  br label %547

169:                                              ; preds = %159
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %172, 3
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %103

175:                                              ; preds = %169
  br label %547

176:                                              ; preds = %151
  %177 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %178 = load i32, i32* @SD_APP_OP_COND, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @SD_RSP_TYPE_R3, align 4
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %182 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %177, i32 %178, i32 %179, i32 %180, i32* %181, i32 5)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @STATUS_SUCCESS, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %176
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 3
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %103

192:                                              ; preds = %186
  br label %547

193:                                              ; preds = %176
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  %196 = call i32 @wait_timeout(i32 20)
  br label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 128
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %7, align 4
  %204 = icmp slt i32 %203, 255
  br label %205

205:                                              ; preds = %202, %197
  %206 = phi i1 [ false, %197 ], [ %204, %202 ]
  br i1 %206, label %151, label %207

207:                                              ; preds = %205
  %208 = load i32, i32* %7, align 4
  %209 = icmp eq i32 %208, 255
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  br label %547

211:                                              ; preds = %207
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %211
  %215 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, 64
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %221 = call i32 @SET_SD_HCXC(%struct.sd_info* %220)
  br label %225

222:                                              ; preds = %214
  %223 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %224 = call i32 @CLR_SD_HCXC(%struct.sd_info* %223)
  br label %225

225:                                              ; preds = %222, %219
  store i32 0, i32* %11, align 4
  br label %229

226:                                              ; preds = %211
  %227 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %228 = call i32 @CLR_SD_HCXC(%struct.sd_info* %227)
  store i32 0, i32* %11, align 4
  br label %229

229:                                              ; preds = %226, %225
  %230 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %231 = call i32 @rtsx_dev(%struct.rtsx_chip* %230)
  %232 = load i32, i32* %11, align 4
  %233 = call i32 (i32, i8*, ...) @dev_dbg(i32 %231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %11, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %229
  %237 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %238 = call i32 @sd_voltage_switch(%struct.rtsx_chip* %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @STATUS_SUCCESS, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %547

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243, %229
  %245 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %246 = load i32, i32* @ALL_SEND_CID, align 4
  %247 = load i32, i32* @SD_RSP_TYPE_R2, align 4
  %248 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %245, i32 %246, i32 0, i32 %247, i32* null, i32 0)
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* @STATUS_SUCCESS, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %244
  br label %547

253:                                              ; preds = %244
  store i32 0, i32* %7, align 4
  br label %254

254:                                              ; preds = %286, %253
  %255 = load i32, i32* %7, align 4
  %256 = icmp slt i32 %255, 3
  br i1 %256, label %257, label %289

257:                                              ; preds = %254
  %258 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %259 = load i32, i32* @SEND_RELATIVE_ADDR, align 4
  %260 = load i32, i32* @SD_RSP_TYPE_R6, align 4
  %261 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %262 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %258, i32 %259, i32 0, i32 %260, i32* %261, i32 5)
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* @STATUS_SUCCESS, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %257
  br label %547

267:                                              ; preds = %257
  %268 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 1
  %269 = load i32, i32* %268, align 4
  %270 = shl i32 %269, 24
  %271 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %272 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  %273 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 2
  %274 = load i32, i32* %273, align 8
  %275 = shl i32 %274, 16
  %276 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %277 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, %275
  store i32 %279, i32* %277, align 4
  %280 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %281 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %267
  br label %289

285:                                              ; preds = %267
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %7, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %7, align 4
  br label %254

289:                                              ; preds = %284, %254
  %290 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %291 = call i32 @sd_check_csd(%struct.rtsx_chip* %290, i32 1)
  store i32 %291, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @STATUS_SUCCESS, align 4
  %294 = icmp ne i32 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  br label %547

296:                                              ; preds = %289
  %297 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %298 = call i32 @sd_select_card(%struct.rtsx_chip* %297, i32 1)
  store i32 %298, i32* %6, align 4
  %299 = load i32, i32* %6, align 4
  %300 = load i32, i32* @STATUS_SUCCESS, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  br label %547

303:                                              ; preds = %296
  %304 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %305 = load i32, i32* @APP_CMD, align 4
  %306 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %307 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %310 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %304, i32 %305, i32 %308, i32 %309, i32* null, i32 0)
  store i32 %310, i32* %6, align 4
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* @STATUS_SUCCESS, align 4
  %313 = icmp ne i32 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %303
  br label %547

315:                                              ; preds = %303
  %316 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %317 = load i32, i32* @SET_CLR_CARD_DETECT, align 4
  %318 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %319 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %316, i32 %317, i32 0, i32 %318, i32* null, i32 0)
  store i32 %319, i32* %6, align 4
  %320 = load i32, i32* %6, align 4
  %321 = load i32, i32* @STATUS_SUCCESS, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %315
  br label %547

324:                                              ; preds = %315
  %325 = load i32, i32* %11, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %350

327:                                              ; preds = %324
  %328 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %329 = load i32, i32* @APP_CMD, align 4
  %330 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %331 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %334 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %328, i32 %329, i32 %332, i32 %333, i32* null, i32 0)
  store i32 %334, i32* %6, align 4
  %335 = load i32, i32* %6, align 4
  %336 = load i32, i32* @STATUS_SUCCESS, align 4
  %337 = icmp ne i32 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %327
  br label %547

339:                                              ; preds = %327
  %340 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %341 = load i32, i32* @SET_BUS_WIDTH, align 4
  %342 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %343 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %340, i32 %341, i32 2, i32 %342, i32* null, i32 0)
  store i32 %343, i32* %6, align 4
  %344 = load i32, i32* %6, align 4
  %345 = load i32, i32* @STATUS_SUCCESS, align 4
  %346 = icmp ne i32 %344, %345
  br i1 %346, label %347, label %348

347:                                              ; preds = %339
  br label %547

348:                                              ; preds = %339
  %349 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  store i32 %349, i32* %14, align 4
  br label %352

350:                                              ; preds = %324
  %351 = load i32, i32* @SD_BUS_WIDTH_1, align 4
  store i32 %351, i32* %14, align 4
  br label %352

352:                                              ; preds = %350, %348
  %353 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %354 = load i32, i32* @SET_BLOCKLEN, align 4
  %355 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %356 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %353, i32 %354, i32 512, i32 %355, i32* null, i32 0)
  store i32 %356, i32* %6, align 4
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* @STATUS_SUCCESS, align 4
  %359 = icmp ne i32 %357, %358
  br i1 %359, label %360, label %361

360:                                              ; preds = %352
  br label %547

361:                                              ; preds = %352
  %362 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %363 = load i32, i32* @SD_CLK_DIVIDE_0, align 4
  %364 = call i32 @sd_set_clock_divider(%struct.rtsx_chip* %362, i32 %363)
  store i32 %364, i32* %6, align 4
  %365 = load i32, i32* %6, align 4
  %366 = load i32, i32* @STATUS_SUCCESS, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  br label %547

369:                                              ; preds = %361
  %370 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %371 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %370, i32 0, i32 2
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 4
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, 64
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %369
  store i32 1, i32* %10, align 4
  br label %378

378:                                              ; preds = %377, %369
  %379 = load i32, i32* %10, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %418, label %381

381:                                              ; preds = %378
  %382 = load i32, i32* %16, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %392

384:                                              ; preds = %381
  %385 = load i32, i32* @SDR104_SUPPORT_MASK, align 4
  %386 = load i32, i32* @DDR50_SUPPORT_MASK, align 4
  %387 = or i32 %385, %386
  %388 = load i32, i32* @SDR50_SUPPORT_MASK, align 4
  %389 = or i32 %387, %388
  %390 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %391 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %390, i32 0, i32 3
  store i32 %389, i32* %391, align 8
  br label %392

392:                                              ; preds = %384, %381
  %393 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %394 = load i32, i32* %14, align 4
  %395 = call i32 @sd_check_spec(%struct.rtsx_chip* %393, i32 %394)
  store i32 %395, i32* %6, align 4
  %396 = load i32, i32* %6, align 4
  %397 = load i32, i32* @STATUS_SUCCESS, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %410

399:                                              ; preds = %392
  %400 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %401 = load i32, i32* %14, align 4
  %402 = call i32 @sd_switch_function(%struct.rtsx_chip* %400, i32 %401)
  store i32 %402, i32* %6, align 4
  %403 = load i32, i32* %6, align 4
  %404 = load i32, i32* @STATUS_SUCCESS, align 4
  %405 = icmp ne i32 %403, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %399
  %407 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %408 = call i32 @sd_init_power(%struct.rtsx_chip* %407)
  store i32 1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %24

409:                                              ; preds = %399
  br label %417

410:                                              ; preds = %392
  %411 = load i32, i32* %11, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %410
  %414 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %415 = call i32 @sd_init_power(%struct.rtsx_chip* %414)
  store i32 1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %24

416:                                              ; preds = %410
  br label %417

417:                                              ; preds = %416, %409
  br label %418

418:                                              ; preds = %417, %378
  %419 = load i32, i32* %11, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %443, label %421

421:                                              ; preds = %418
  %422 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %423 = load i32, i32* @APP_CMD, align 4
  %424 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %425 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %428 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %422, i32 %423, i32 %426, i32 %427, i32* null, i32 0)
  store i32 %428, i32* %6, align 4
  %429 = load i32, i32* %6, align 4
  %430 = load i32, i32* @STATUS_SUCCESS, align 4
  %431 = icmp ne i32 %429, %430
  br i1 %431, label %432, label %433

432:                                              ; preds = %421
  br label %547

433:                                              ; preds = %421
  %434 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %435 = load i32, i32* @SET_BUS_WIDTH, align 4
  %436 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %437 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %434, i32 %435, i32 2, i32 %436, i32* null, i32 0)
  store i32 %437, i32* %6, align 4
  %438 = load i32, i32* %6, align 4
  %439 = load i32, i32* @STATUS_SUCCESS, align 4
  %440 = icmp ne i32 %438, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %433
  br label %547

442:                                              ; preds = %433
  br label %443

443:                                              ; preds = %442, %418
  %444 = load i32, i32* %16, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %528, label %446

446:                                              ; preds = %443
  %447 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %448 = call i64 @CHK_SD30_SPEED(%struct.sd_info* %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %528

450:                                              ; preds = %446
  store i32 1, i32* %19, align 4
  %451 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %452 = load i32, i32* @SD30_DRIVE_SEL, align 4
  %453 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %454 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 8
  %456 = call i32 @rtsx_write_register(%struct.rtsx_chip* %451, i32 %452, i32 7, i32 %455)
  store i32 %456, i32* %6, align 4
  %457 = load i32, i32* %6, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %461

459:                                              ; preds = %450
  %460 = load i32, i32* %6, align 4
  store i32 %460, i32* %2, align 4
  br label %549

461:                                              ; preds = %450
  %462 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %463 = call i32 @sd_set_init_para(%struct.rtsx_chip* %462)
  store i32 %463, i32* %6, align 4
  %464 = load i32, i32* %6, align 4
  %465 = load i32, i32* @STATUS_SUCCESS, align 4
  %466 = icmp ne i32 %464, %465
  br i1 %466, label %467, label %468

467:                                              ; preds = %461
  br label %547

468:                                              ; preds = %461
  %469 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %470 = call i64 @CHK_SD_DDR50(%struct.sd_info* %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %468
  %473 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %474 = call i32 @sd_ddr_tuning(%struct.rtsx_chip* %473)
  store i32 %474, i32* %6, align 4
  br label %478

475:                                              ; preds = %468
  %476 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %477 = call i32 @sd_sdr_tuning(%struct.rtsx_chip* %476)
  store i32 %477, i32* %6, align 4
  br label %478

478:                                              ; preds = %475, %472
  %479 = load i32, i32* %6, align 4
  %480 = load i32, i32* @STATUS_SUCCESS, align 4
  %481 = icmp ne i32 %479, %480
  br i1 %481, label %482, label %490

482:                                              ; preds = %478
  %483 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %484 = call i32 @sd_init_power(%struct.rtsx_chip* %483)
  store i32 %484, i32* %6, align 4
  %485 = load i32, i32* %6, align 4
  %486 = load i32, i32* @STATUS_SUCCESS, align 4
  %487 = icmp ne i32 %485, %486
  br i1 %487, label %488, label %489

488:                                              ; preds = %482
  br label %547

489:                                              ; preds = %482
  store i32 0, i32* %12, align 4
  store i32 1, i32* %16, align 4
  br label %24

490:                                              ; preds = %478
  %491 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %492 = load i32, i32* @SEND_STATUS, align 4
  %493 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %494 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %497 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %491, i32 %492, i32 %495, i32 %496, i32* null, i32 0)
  %498 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %499 = call i64 @CHK_SD_DDR50(%struct.sd_info* %498)
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %509

501:                                              ; preds = %490
  %502 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %503 = call i32 @sd_wait_state_data_ready(%struct.rtsx_chip* %502, i32 8, i32 1, i32 1000)
  store i32 %503, i32* %6, align 4
  %504 = load i32, i32* %6, align 4
  %505 = load i32, i32* @STATUS_SUCCESS, align 4
  %506 = icmp ne i32 %504, %505
  br i1 %506, label %507, label %508

507:                                              ; preds = %501
  store i32 0, i32* %19, align 4
  br label %508

508:                                              ; preds = %507, %501
  br label %509

509:                                              ; preds = %508, %490
  %510 = load i32, i32* %19, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %527

512:                                              ; preds = %509
  %513 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %514 = call i32 @sd_read_lba0(%struct.rtsx_chip* %513)
  store i32 %514, i32* %6, align 4
  %515 = load i32, i32* %6, align 4
  %516 = load i32, i32* @STATUS_SUCCESS, align 4
  %517 = icmp ne i32 %515, %516
  br i1 %517, label %518, label %526

518:                                              ; preds = %512
  %519 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %520 = call i32 @sd_init_power(%struct.rtsx_chip* %519)
  store i32 %520, i32* %6, align 4
  %521 = load i32, i32* %6, align 4
  %522 = load i32, i32* @STATUS_SUCCESS, align 4
  %523 = icmp ne i32 %521, %522
  br i1 %523, label %524, label %525

524:                                              ; preds = %518
  br label %547

525:                                              ; preds = %518
  store i32 0, i32* %12, align 4
  store i32 1, i32* %16, align 4
  br label %24

526:                                              ; preds = %512
  br label %527

527:                                              ; preds = %526, %509
  br label %528

528:                                              ; preds = %527, %446, %443
  %529 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %530 = call i32 @sd_check_wp_state(%struct.rtsx_chip* %529)
  store i32 %530, i32* %6, align 4
  %531 = load i32, i32* %6, align 4
  %532 = load i32, i32* @STATUS_SUCCESS, align 4
  %533 = icmp ne i32 %531, %532
  br i1 %533, label %534, label %535

534:                                              ; preds = %528
  br label %547

535:                                              ; preds = %528
  %536 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %537 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %536, i32 0, i32 3
  %538 = load i32*, i32** %537, align 8
  %539 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %540 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %539, i32 0, i32 4
  %541 = load i64*, i64** %540, align 8
  %542 = load i64, i64* @SD_CARD, align 8
  %543 = getelementptr inbounds i64, i64* %541, i64 %542
  %544 = load i64, i64* %543, align 8
  %545 = getelementptr inbounds i32, i32* %538, i64 %544
  store i32 4, i32* %545, align 4
  %546 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %546, i32* %2, align 4
  br label %549

547:                                              ; preds = %534, %524, %488, %467, %441, %432, %368, %360, %347, %338, %323, %314, %302, %295, %266, %252, %242, %210, %192, %175, %165, %147, %111, %82, %62, %37, %30
  %548 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %548, i32* %2, align 4
  br label %549

549:                                              ; preds = %547, %535, %459
  %550 = load i32, i32* %2, align 4
  ret i32 %550
}

declare dso_local i32 @SET_SD(%struct.sd_info*) #1

declare dso_local i32 @sd_prepare_reset(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_dummy_clock(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i32 @CHK_SDIO_IGNORED(%struct.rtsx_chip*) #1

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @sd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_init_power(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @SET_SD_HCXC(%struct.sd_info*) #1

declare dso_local i32 @CLR_SD_HCXC(%struct.sd_info*) #1

declare dso_local i32 @sd_voltage_switch(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_check_csd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_select_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_set_clock_divider(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_check_spec(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_switch_function(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHK_SD30_SPEED(%struct.sd_info*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @sd_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_SD_DDR50(%struct.sd_info*) #1

declare dso_local i32 @sd_ddr_tuning(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_sdr_tuning(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_wait_state_data_ready(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @sd_read_lba0(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_check_wp_state(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
