; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_mmc_switch_timing_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_mmc_switch_timing_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32*, i64*, %struct.sd_info }
%struct.sd_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"SD/MMC CMD %d\0A\00", align 1
@SEND_EXT_CSD = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@REG_SD_CMD0 = common dso_local global i64 0, align 8
@REG_SD_CMD1 = common dso_local global i64 0, align 8
@REG_SD_CMD2 = common dso_local global i64 0, align 8
@REG_SD_CMD3 = common dso_local global i64 0, align 8
@REG_SD_CMD4 = common dso_local global i64 0, align 8
@REG_SD_BYTE_CNT_L = common dso_local global i64 0, align 8
@REG_SD_BYTE_CNT_H = common dso_local global i64 0, align 8
@REG_SD_BLOCK_CNT_L = common dso_local global i64 0, align 8
@REG_SD_BLOCK_CNT_H = common dso_local global i64 0, align 8
@REG_SD_CFG2 = common dso_local global i64 0, align 8
@SD_CALCULATE_CRC7 = common dso_local global i32 0, align 4
@SD_CHECK_CRC16 = common dso_local global i32 0, align 4
@SD_NO_WAIT_BUSY_END = common dso_local global i32 0, align 4
@SD_CHECK_CRC7 = common dso_local global i32 0, align 4
@SD_RSP_LEN_6 = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i64 0, align 8
@PINGPONG_BUFFER = common dso_local global i32 0, align 4
@REG_SD_TRANSFER = common dso_local global i64 0, align 8
@SD_TM_NORMAL_READ = common dso_local global i32 0, align 4
@SD_TRANSFER_START = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SD_TRANSFER_END = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i64 0, align 8
@SD_CARD = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_TRANSFER_ERR = common dso_local global i32 0, align 4
@SWITCH = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1b = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@MMC_SWITCH_ERR = common dso_local global i32 0, align 4
@MMC_8BIT_BUS = common dso_local global i32 0, align 4
@SWITCH_SUCCESS = common dso_local global i32 0, align 4
@SWITCH_FAIL = common dso_local global i32 0, align 4
@MMC_4BIT_BUS = common dso_local global i32 0, align 4
@SD_LOCK_1BIT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @mmc_switch_timing_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_switch_timing_bus(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 2
  store %struct.sd_info* %13, %struct.sd_info** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %15 = call i32 @CLR_MMC_HS(%struct.sd_info* %14)
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %17 = call i32 @rtsx_dev(%struct.rtsx_chip* %16)
  %18 = load i32, i32* @SEND_EXT_CSD, align 4
  %19 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %21 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %20)
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %23 = load i32, i32* @WRITE_REG_CMD, align 4
  %24 = load i64, i64* @REG_SD_CMD0, align 8
  %25 = load i32, i32* @SEND_EXT_CSD, align 4
  %26 = or i32 64, %25
  %27 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %22, i32 %23, i64 %24, i32 255, i32 %26)
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %29 = load i32, i32* @WRITE_REG_CMD, align 4
  %30 = load i64, i64* @REG_SD_CMD1, align 8
  %31 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %28, i32 %29, i64 %30, i32 255, i32 0)
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %33 = load i32, i32* @WRITE_REG_CMD, align 4
  %34 = load i64, i64* @REG_SD_CMD2, align 8
  %35 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %32, i32 %33, i64 %34, i32 255, i32 0)
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %37 = load i32, i32* @WRITE_REG_CMD, align 4
  %38 = load i64, i64* @REG_SD_CMD3, align 8
  %39 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %36, i32 %37, i64 %38, i32 255, i32 0)
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %41 = load i32, i32* @WRITE_REG_CMD, align 4
  %42 = load i64, i64* @REG_SD_CMD4, align 8
  %43 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %40, i32 %41, i64 %42, i32 255, i32 0)
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %45 = load i32, i32* @WRITE_REG_CMD, align 4
  %46 = load i64, i64* @REG_SD_BYTE_CNT_L, align 8
  %47 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %44, i32 %45, i64 %46, i32 255, i32 0)
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %49 = load i32, i32* @WRITE_REG_CMD, align 4
  %50 = load i64, i64* @REG_SD_BYTE_CNT_H, align 8
  %51 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %48, i32 %49, i64 %50, i32 255, i32 2)
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %53 = load i32, i32* @WRITE_REG_CMD, align 4
  %54 = load i64, i64* @REG_SD_BLOCK_CNT_L, align 8
  %55 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %52, i32 %53, i64 %54, i32 255, i32 1)
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %57 = load i32, i32* @WRITE_REG_CMD, align 4
  %58 = load i64, i64* @REG_SD_BLOCK_CNT_H, align 8
  %59 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %56, i32 %57, i64 %58, i32 255, i32 0)
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %61 = load i32, i32* @WRITE_REG_CMD, align 4
  %62 = load i64, i64* @REG_SD_CFG2, align 8
  %63 = load i32, i32* @SD_CALCULATE_CRC7, align 4
  %64 = load i32, i32* @SD_CHECK_CRC16, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SD_NO_WAIT_BUSY_END, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SD_CHECK_CRC7, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SD_RSP_LEN_6, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %60, i32 %61, i64 %62, i32 255, i32 %71)
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %74 = load i32, i32* @WRITE_REG_CMD, align 4
  %75 = load i64, i64* @CARD_DATA_SOURCE, align 8
  %76 = load i32, i32* @PINGPONG_BUFFER, align 4
  %77 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %73, i32 %74, i64 %75, i32 1, i32 %76)
  %78 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %79 = load i32, i32* @WRITE_REG_CMD, align 4
  %80 = load i64, i64* @REG_SD_TRANSFER, align 8
  %81 = load i32, i32* @SD_TM_NORMAL_READ, align 4
  %82 = load i32, i32* @SD_TRANSFER_START, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %78, i32 %79, i64 %80, i32 255, i32 %83)
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %86 = load i32, i32* @CHECK_REG_CMD, align 4
  %87 = load i64, i64* @REG_SD_TRANSFER, align 8
  %88 = load i32, i32* @SD_TRANSFER_END, align 4
  %89 = load i32, i32* @SD_TRANSFER_END, align 4
  %90 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %85, i32 %86, i64 %87, i32 %88, i32 %89)
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %92 = load i32, i32* @READ_REG_CMD, align 4
  %93 = load i64, i64* @PPBUF_BASE2, align 8
  %94 = add nsw i64 %93, 196
  %95 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %91, i32 %92, i64 %94, i32 255, i32 0)
  %96 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %97 = load i32, i32* @READ_REG_CMD, align 4
  %98 = load i64, i64* @PPBUF_BASE2, align 8
  %99 = add nsw i64 %98, 212
  %100 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %96, i32 %97, i64 %99, i32 255, i32 0)
  %101 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %102 = load i32, i32* @READ_REG_CMD, align 4
  %103 = load i64, i64* @PPBUF_BASE2, align 8
  %104 = add nsw i64 %103, 213
  %105 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %101, i32 %102, i64 %104, i32 255, i32 0)
  %106 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %107 = load i32, i32* @READ_REG_CMD, align 4
  %108 = load i64, i64* @PPBUF_BASE2, align 8
  %109 = add nsw i64 %108, 214
  %110 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %106, i32 %107, i64 %109, i32 255, i32 0)
  %111 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %112 = load i32, i32* @READ_REG_CMD, align 4
  %113 = load i64, i64* @PPBUF_BASE2, align 8
  %114 = add nsw i64 %113, 215
  %115 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %111, i32 %112, i64 %114, i32 255, i32 0)
  %116 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %117 = load i64, i64* @SD_CARD, align 8
  %118 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %116, i64 %117, i32 1000)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %2
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @ETIMEDOUT, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %128 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %127)
  %129 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %130 = load i32, i32* @SEND_STATUS, align 4
  %131 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %132 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %135 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %129, i32 %130, i32 %133, i32 %134, i32* null, i32 0)
  br label %136

136:                                              ; preds = %126, %121
  %137 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %137, i32* %3, align 4
  br label %308

138:                                              ; preds = %2
  %139 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %140 = call i32* @rtsx_get_cmd_data(%struct.rtsx_chip* %139)
  store i32* %140, i32** %8, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SD_TRANSFER_ERR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %138
  %148 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %149 = load i32, i32* @SEND_STATUS, align 4
  %150 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %151 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %154 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %148, i32 %149, i32 %152, i32 %153, i32* null, i32 0)
  %155 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %155, i32* %3, align 4
  br label %308

156:                                              ; preds = %138
  %157 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %158 = call i64 @CHK_MMC_SECTOR_MODE(%struct.sd_info* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %156
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 24
  %165 = load i32*, i32** %8, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 4
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 16
  %169 = or i32 %164, %168
  %170 = load i32*, i32** %8, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 8
  %174 = or i32 %169, %173
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %174, %177
  %179 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %180 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %160, %156
  store i32 3, i32* %10, align 4
  %182 = load i32*, i32** %8, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %10, align 4
  %186 = and i32 %184, %185
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %233

189:                                              ; preds = %181
  %190 = load i32, i32* %9, align 4
  %191 = and i32 %190, 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load i32, i32* %5, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %198 = call i32 @SET_MMC_DDR52(%struct.sd_info* %197)
  br label %202

199:                                              ; preds = %193
  %200 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %201 = call i32 @SET_MMC_52M(%struct.sd_info* %200)
  br label %202

202:                                              ; preds = %199, %196
  br label %214

203:                                              ; preds = %189
  %204 = load i32, i32* %9, align 4
  %205 = and i32 %204, 2
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %209 = call i32 @SET_MMC_52M(%struct.sd_info* %208)
  br label %213

210:                                              ; preds = %203
  %211 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %212 = call i32 @SET_MMC_26M(%struct.sd_info* %211)
  br label %213

213:                                              ; preds = %210, %207
  br label %214

214:                                              ; preds = %213, %202
  %215 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %216 = load i32, i32* @SWITCH, align 4
  %217 = load i32, i32* @SD_RSP_TYPE_R1b, align 4
  %218 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %219 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %215, i32 %216, i32 62456064, i32 %217, i32* %218, i32 5)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @STATUS_SUCCESS, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %229, label %223

223:                                              ; preds = %214
  %224 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  %225 = load i32, i32* %224, align 16
  %226 = load i32, i32* @MMC_SWITCH_ERR, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %223, %214
  %230 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %231 = call i32 @CLR_MMC_HS(%struct.sd_info* %230)
  br label %232

232:                                              ; preds = %229, %223
  br label %233

233:                                              ; preds = %232, %181
  %234 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %235 = call i32 @sd_choose_proper_clock(%struct.rtsx_chip* %234)
  %236 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %237 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %238 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @switch_clock(%struct.rtsx_chip* %236, i32 %239)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* @STATUS_SUCCESS, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %233
  %245 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %245, i32* %3, align 4
  br label %308

246:                                              ; preds = %233
  %247 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %248 = load i32, i32* @MMC_8BIT_BUS, align 4
  %249 = call i32 @mmc_test_switch_bus(%struct.rtsx_chip* %247, i32 %248)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* @SWITCH_SUCCESS, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %266

253:                                              ; preds = %246
  %254 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %255 = call i32 @SET_MMC_8BIT(%struct.sd_info* %254)
  %256 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %257 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %260 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %259, i32 0, i32 1
  %261 = load i64*, i64** %260, align 8
  %262 = load i64, i64* @SD_CARD, align 8
  %263 = getelementptr inbounds i64, i64* %261, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds i32, i32* %258, i64 %264
  store i32 8, i32* %265, align 4
  br label %306

266:                                              ; preds = %246
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @SWITCH_FAIL, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %303

270:                                              ; preds = %266
  %271 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %272 = load i32, i32* @MMC_4BIT_BUS, align 4
  %273 = call i32 @mmc_test_switch_bus(%struct.rtsx_chip* %271, i32 %272)
  store i32 %273, i32* %7, align 4
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* @SWITCH_SUCCESS, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %270
  %278 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %279 = call i32 @SET_MMC_4BIT(%struct.sd_info* %278)
  %280 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %281 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %284 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %283, i32 0, i32 1
  %285 = load i64*, i64** %284, align 8
  %286 = load i64, i64* @SD_CARD, align 8
  %287 = getelementptr inbounds i64, i64* %285, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds i32, i32* %282, i64 %288
  store i32 4, i32* %289, align 4
  br label %302

290:                                              ; preds = %270
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @SWITCH_FAIL, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %290
  %295 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %296 = call i32 @CLR_MMC_8BIT(%struct.sd_info* %295)
  %297 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %298 = call i32 @CLR_MMC_4BIT(%struct.sd_info* %297)
  br label %301

299:                                              ; preds = %290
  %300 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %300, i32* %3, align 4
  br label %308

301:                                              ; preds = %294
  br label %302

302:                                              ; preds = %301, %277
  br label %305

303:                                              ; preds = %266
  %304 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %304, i32* %3, align 4
  br label %308

305:                                              ; preds = %302
  br label %306

306:                                              ; preds = %305, %253
  %307 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %306, %303, %299, %244, %147, %136
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i32 @CLR_MMC_HS(%struct.sd_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i64, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i64, i32) #1

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32* @rtsx_get_cmd_data(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_MMC_SECTOR_MODE(%struct.sd_info*) #1

declare dso_local i32 @SET_MMC_DDR52(%struct.sd_info*) #1

declare dso_local i32 @SET_MMC_52M(%struct.sd_info*) #1

declare dso_local i32 @SET_MMC_26M(%struct.sd_info*) #1

declare dso_local i32 @sd_choose_proper_clock(%struct.rtsx_chip*) #1

declare dso_local i32 @switch_clock(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @mmc_test_switch_bus(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @SET_MMC_8BIT(%struct.sd_info*) #1

declare dso_local i32 @SET_MMC_4BIT(%struct.sd_info*) #1

declare dso_local i32 @CLR_MMC_8BIT(%struct.sd_info*) #1

declare dso_local i32 @CLR_MMC_4BIT(%struct.sd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
