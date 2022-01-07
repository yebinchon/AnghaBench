; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_reset_mmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_reset_mmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32*, i64*, i64, %struct.sd_info }
%struct.sd_info = type { i32, i32, i32*, i32, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@GO_IDLE_STATE = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R0 = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i64 0, align 8
@SD_NO_CARD = common dso_local global i32 0, align 4
@SEND_OP_COND = common dso_local global i32 0, align 4
@SUPPORT_VOLTAGE = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R3 = common dso_local global i32 0, align 4
@SD_BUSY = common dso_local global i32 0, align 4
@SD_TO_ERR = common dso_local global i32 0, align 4
@ALL_SEND_CID = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R2 = common dso_local global i32 0, align 4
@SET_RELATIVE_ADDR = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R6 = common dso_local global i32 0, align 4
@SET_BLOCKLEN = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@SD_CLK_DIVIDE_0 = common dso_local global i32 0, align 4
@RTSX_BIPR = common dso_local global i32 0, align 4
@SD_WRITE_PROTECT = common dso_local global i32 0, align 4
@REG_SD_BLOCK_CNT_H = common dso_local global i32 0, align 4
@REG_SD_BLOCK_CNT_L = common dso_local global i32 0, align 4
@SD_UNLOCK_POW_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @reset_mmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_mmc(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %14 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %13, i32 0, i32 3
  store %struct.sd_info* %14, %struct.sd_info** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %285, %264, %220, %1
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %17 = call i32 @sd_prepare_reset(%struct.rtsx_chip* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @STATUS_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %305

23:                                               ; preds = %15
  %24 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %25 = call i32 @SET_MMC(%struct.sd_info* %24)
  br label %26

26:                                               ; preds = %84, %74, %23
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %28 = load i32, i32* @GO_IDLE_STATE, align 4
  %29 = load i32, i32* @SD_RSP_TYPE_R0, align 4
  %30 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %27, i32 %28, i32 0, i32 %29, i32* null, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %35, i32* %2, align 4
  br label %305

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %101, %36
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %39 = load i64, i64* @SD_CARD, align 8
  %40 = call i32 @detect_card_cd(%struct.rtsx_chip* %38, i64 %39)
  %41 = load i32, i32* @STATUS_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %45 = load i32, i32* @SD_NO_CARD, align 4
  %46 = call i32 @sd_set_err_code(%struct.rtsx_chip* %44, i32 %45)
  %47 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %47, i32* %2, align 4
  br label %305

48:                                               ; preds = %37
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %50 = load i32, i32* @SEND_OP_COND, align 4
  %51 = load i32, i32* @SUPPORT_VOLTAGE, align 4
  %52 = or i32 %51, 1073741824
  %53 = load i32, i32* @SD_RSP_TYPE_R3, align 4
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %55 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %49, i32 %50, i32 %52, i32 %53, i32* %54, i32 5)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @STATUS_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %48
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %61 = load i32, i32* @SD_BUSY, align 4
  %62 = call i64 @sd_check_err_code(%struct.rtsx_chip* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %66 = load i32, i32* @SD_TO_ERR, align 4
  %67 = call i64 @sd_check_err_code(%struct.rtsx_chip* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 20
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %76 = call i32 @sd_clr_err_code(%struct.rtsx_chip* %75)
  br label %26

77:                                               ; preds = %69
  %78 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %78, i32* %2, align 4
  br label %305

79:                                               ; preds = %64
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 100
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %86 = call i32 @sd_clr_err_code(%struct.rtsx_chip* %85)
  br label %26

87:                                               ; preds = %79
  %88 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %88, i32* %2, align 4
  br label %305

89:                                               ; preds = %48
  %90 = call i32 @wait_timeout(i32 20)
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 128
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 255
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi i1 [ false, %93 ], [ %100, %98 ]
  br i1 %102, label %37, label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 255
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %107, i32* %2, align 4
  br label %305

108:                                              ; preds = %103
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 96
  %112 = icmp eq i32 %111, 64
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %115 = call i32 @SET_MMC_SECTOR_MODE(%struct.sd_info* %114)
  br label %119

116:                                              ; preds = %108
  %117 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %118 = call i32 @CLR_MMC_SECTOR_MODE(%struct.sd_info* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %121 = load i32, i32* @ALL_SEND_CID, align 4
  %122 = load i32, i32* @SD_RSP_TYPE_R2, align 4
  %123 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %120, i32 %121, i32 0, i32 %122, i32* null, i32 0)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @STATUS_SUCCESS, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %128, i32* %2, align 4
  br label %305

129:                                              ; preds = %119
  %130 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %131 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %130, i32 0, i32 1
  store i32 1048576, i32* %131, align 4
  %132 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %133 = load i32, i32* @SET_RELATIVE_ADDR, align 4
  %134 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %135 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SD_RSP_TYPE_R6, align 4
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %139 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %132, i32 %133, i32 %136, i32 %137, i32* %138, i32 5)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @STATUS_SUCCESS, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %129
  %144 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %144, i32* %2, align 4
  br label %305

145:                                              ; preds = %129
  %146 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %147 = call i32 @sd_check_csd(%struct.rtsx_chip* %146, i32 1)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @STATUS_SUCCESS, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %152, i32* %2, align 4
  br label %305

153:                                              ; preds = %145
  %154 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %155 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 60
  %160 = ashr i32 %159, 2
  store i32 %160, i32* %11, align 4
  %161 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %162 = call i32 @sd_select_card(%struct.rtsx_chip* %161, i32 1)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @STATUS_SUCCESS, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %153
  %167 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %167, i32* %2, align 4
  br label %305

168:                                              ; preds = %153
  %169 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %170 = load i32, i32* @SET_BLOCKLEN, align 4
  %171 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %172 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %169, i32 %170, i32 512, i32 %171, i32* null, i32 0)
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @STATUS_SUCCESS, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %177, i32* %2, align 4
  br label %305

178:                                              ; preds = %168
  %179 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %180 = load i32, i32* @SD_CLK_DIVIDE_0, align 4
  %181 = call i32 @sd_set_clock_divider(%struct.rtsx_chip* %179, i32 %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @STATUS_SUCCESS, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %186, i32* %2, align 4
  br label %305

187:                                              ; preds = %178
  %188 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %189 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %192 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %191, i32 0, i32 1
  %193 = load i64*, i64** %192, align 8
  %194 = load i64, i64* @SD_CARD, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32, i32* %190, i64 %196
  store i32 1, i32* %197, align 4
  %198 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %199 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %289, label %202

202:                                              ; preds = %187
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %203, 4
  br i1 %204, label %205, label %224

205:                                              ; preds = %202
  %206 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @mmc_switch_timing_bus(%struct.rtsx_chip* %206, i32 %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @STATUS_SUCCESS, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %205
  %213 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %214 = call i32 @sd_init_power(%struct.rtsx_chip* %213)
  store i32 %214, i32* %5, align 4
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @STATUS_SUCCESS, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %219, i32* %2, align 4
  br label %305

220:                                              ; preds = %212
  %221 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %222 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %221, i32 0, i32 3
  store i32 1, i32* %222, align 8
  br label %15

223:                                              ; preds = %205
  br label %224

224:                                              ; preds = %223, %202
  %225 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %226 = call i64 @CHK_MMC_SECTOR_MODE(%struct.sd_info* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %224
  %229 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %230 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %234, i32* %2, align 4
  br label %305

235:                                              ; preds = %228, %224
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %288

238:                                              ; preds = %235
  %239 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %240 = call i64 @CHK_MMC_DDR52(%struct.sd_info* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %288

242:                                              ; preds = %238
  %243 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %244 = call i32 @sd_set_init_para(%struct.rtsx_chip* %243)
  store i32 %244, i32* %5, align 4
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* @STATUS_SUCCESS, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %242
  %249 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %249, i32* %2, align 4
  br label %305

250:                                              ; preds = %242
  %251 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %252 = call i32 @mmc_ddr_tuning(%struct.rtsx_chip* %251)
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* @STATUS_SUCCESS, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %265

256:                                              ; preds = %250
  %257 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %258 = call i32 @sd_init_power(%struct.rtsx_chip* %257)
  store i32 %258, i32* %5, align 4
  %259 = load i32, i32* %5, align 4
  %260 = load i32, i32* @STATUS_SUCCESS, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %263, i32* %2, align 4
  br label %305

264:                                              ; preds = %256
  store i32 0, i32* %9, align 4
  br label %15

265:                                              ; preds = %250
  %266 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %267 = call i32 @sd_wait_state_data_ready(%struct.rtsx_chip* %266, i32 8, i32 1, i32 1000)
  store i32 %267, i32* %5, align 4
  %268 = load i32, i32* %5, align 4
  %269 = load i32, i32* @STATUS_SUCCESS, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %287

271:                                              ; preds = %265
  %272 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %273 = call i32 @sd_read_lba0(%struct.rtsx_chip* %272)
  store i32 %273, i32* %5, align 4
  %274 = load i32, i32* %5, align 4
  %275 = load i32, i32* @STATUS_SUCCESS, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %277, label %286

277:                                              ; preds = %271
  %278 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %279 = call i32 @sd_init_power(%struct.rtsx_chip* %278)
  store i32 %279, i32* %5, align 4
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* @STATUS_SUCCESS, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %277
  %284 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %284, i32* %2, align 4
  br label %305

285:                                              ; preds = %277
  store i32 0, i32* %9, align 4
  br label %15

286:                                              ; preds = %271
  br label %287

287:                                              ; preds = %286, %265
  br label %288

288:                                              ; preds = %287, %238, %235
  br label %289

289:                                              ; preds = %288, %187
  %290 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %291 = load i32, i32* @RTSX_BIPR, align 4
  %292 = call i32 @rtsx_readl(%struct.rtsx_chip* %290, i32 %291)
  store i32 %292, i32* %12, align 4
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* @SD_WRITE_PROTECT, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %289
  %298 = load i64, i64* @SD_CARD, align 8
  %299 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %300 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = or i64 %301, %298
  store i64 %302, i64* %300, align 8
  br label %303

303:                                              ; preds = %297, %289
  %304 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %304, i32* %2, align 4
  br label %305

305:                                              ; preds = %303, %283, %262, %248, %233, %218, %185, %176, %166, %151, %143, %127, %106, %87, %77, %43, %34, %21
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

declare dso_local i32 @sd_prepare_reset(%struct.rtsx_chip*) #1

declare dso_local i32 @SET_MMC(%struct.sd_info*) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @sd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @sd_check_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_clr_err_code(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @SET_MMC_SECTOR_MODE(%struct.sd_info*) #1

declare dso_local i32 @CLR_MMC_SECTOR_MODE(%struct.sd_info*) #1

declare dso_local i32 @sd_check_csd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_select_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_set_clock_divider(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @mmc_switch_timing_bus(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_init_power(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_MMC_SECTOR_MODE(%struct.sd_info*) #1

declare dso_local i64 @CHK_MMC_DDR52(%struct.sd_info*) #1

declare dso_local i32 @sd_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32 @mmc_ddr_tuning(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_wait_state_data_ready(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @sd_read_lba0(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_readl(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
