; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_execute_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_execute_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32, %struct.sd_info }
%struct.sd_info = type { i32, i32, i32, i32, i32, i32, i32*, i32 }

@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_CHANGE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@REG_SD_CFG1 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@SET_BLOCKLEN = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@APP_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TRANSPORT_ERROR = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i32 0, align 4
@REG_SD_BYTE_CNT_H = common dso_local global i32 0, align 4
@REG_SD_BYTE_CNT_L = common dso_local global i32 0, align 4
@REG_SD_BLOCK_CNT_H = common dso_local global i32 0, align 4
@REG_SD_BLOCK_CNT_L = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@PINGPONG_BUFFER = common dso_local global i32 0, align 4
@REG_SD_TRANSFER = common dso_local global i32 0, align 4
@SD_TM_AUTO_WRITE_3 = common dso_local global i32 0, align 4
@SD_TRANSFER_START = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SD_TRANSFER_END = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_512 = common dso_local global i32 0, align 4
@STOP_TRANSMISSION = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1b = common dso_local global i32 0, align 4
@SD_BYTE_CNT_H = common dso_local global i32 0, align 4
@SD_BYTE_CNT_L = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@SENSE_TYPE_NO_SENSE = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_WRITE_ERR = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@LOCK_UNLOCK = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@SD_CLR_PWD = common dso_local global i32 0, align 4
@SD_ERASE = common dso_local global i32 0, align 4
@SD_LOCKED = common dso_local global i32 0, align 4
@SD_LOCK_1BIT_MODE = common dso_local global i32 0, align 4
@SD_PWD_EXIST = common dso_local global i32 0, align 4
@SD_SDR_RST = common dso_local global i32 0, align 4
@SD_SET_PWD = common dso_local global i32 0, align 4
@SD_UNDER_ERASING = common dso_local global i32 0, align 4
@SD_UNLOCK_POW_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_execute_write_data(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %23 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %22, i32 0, i32 1
  store %struct.sd_info* %23, %struct.sd_info** %6, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %24)
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %27 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %34 = call i32 @set_sense_type(%struct.rtsx_chip* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %35, i32* %3, align 4
  br label %591

36:                                               ; preds = %2
  %37 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %38 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %43 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SENSE_TYPE_MEDIA_CHANGE, align 4
  %47 = call i32 @set_sense_type(%struct.rtsx_chip* %44, i32 %45, i32 %46)
  %48 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %48, i32* %3, align 4
  br label %591

49:                                               ; preds = %36
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %51 = call i32 @sd_switch_clock(%struct.rtsx_chip* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @STATUS_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %56, i32* %3, align 4
  br label %591

57:                                               ; preds = %49
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 63
  store i32 %63, i32* %13, align 4
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i32 1, i32* %16, align 4
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %80, %72
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 1, i32* %17, align 4
  br label %90

90:                                               ; preds = %89, %81
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 16
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 8
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = or i32 %96, %102
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 9
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %103, %108
  store i32 %109, i32* %18, align 4
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 24
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 16
  %122 = or i32 %115, %121
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %124 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 8
  %129 = or i32 %122, %128
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %131 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 6
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %129, %134
  store i32 %135, i32* %19, align 4
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %137 = call i32 @get_rsp_type(%struct.scsi_cmnd* %136, i32* %14, i32* %9)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @STATUS_SUCCESS, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %90
  %142 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %145 = call i32 @set_sense_type(%struct.rtsx_chip* %142, i32 %143, i32 %144)
  %146 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %146, i32* %3, align 4
  br label %591

147:                                              ; preds = %90
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %150 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %152 = call i32 @sd_switch_clock(%struct.rtsx_chip* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @STATUS_SUCCESS, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %157, i32* %3, align 4
  br label %591

158:                                              ; preds = %147
  %159 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %160 = load i32, i32* @REG_SD_CFG1, align 4
  %161 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  %162 = call i32 @rtsx_write_register(%struct.rtsx_chip* %159, i32 %160, i32 3, i32 %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @STATUS_SUCCESS, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %167, i32* %3, align 4
  br label %591

168:                                              ; preds = %158
  %169 = load i32, i32* %18, align 4
  %170 = icmp slt i32 %169, 512
  br i1 %170, label %171, label %182

171:                                              ; preds = %168
  %172 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %173 = load i32, i32* @SET_BLOCKLEN, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %176 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %172, i32 %173, i32 %174, i32 %175, i32* null, i32 0, i32 0)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @STATUS_SUCCESS, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  br label %559

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181, %168
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %187 = call i32 @sd_select_card(%struct.rtsx_chip* %186, i32 0)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @STATUS_SUCCESS, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  br label %559

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192, %182
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %193
  %197 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %198 = load i32, i32* @APP_CMD, align 4
  %199 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %200 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %203 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %197, i32 %198, i32 %201, i32 %202, i32* null, i32 0, i32 0)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @STATUS_SUCCESS, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %196
  br label %559

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208, %193
  %210 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %14, align 4
  %214 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %215 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %214, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %210, i32 %211, i32 %212, i32 %213, i32* %216, i32 %217, i32 0)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* @STATUS_SUCCESS, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %209
  br label %559

223:                                              ; preds = %209
  %224 = load i32, i32* %18, align 4
  %225 = icmp sle i32 %224, 512
  br i1 %225, label %226, label %388

226:                                              ; preds = %223
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* @GFP_KERNEL, align 4
  %229 = call i32* @kmalloc(i32 %227, i32 %228)
  store i32* %229, i32** %21, align 8
  %230 = load i32*, i32** %21, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %226
  %233 = load i32, i32* @TRANSPORT_ERROR, align 4
  store i32 %233, i32* %3, align 4
  br label %591

234:                                              ; preds = %226
  %235 = load i32*, i32** %21, align 8
  %236 = load i32, i32* %18, align 4
  %237 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %238 = call i32 @rtsx_stor_get_xfer_buf(i32* %235, i32 %236, %struct.scsi_cmnd* %237)
  %239 = load i32, i32* %18, align 4
  %240 = icmp sgt i32 %239, 256
  br i1 %240, label %241, label %303

241:                                              ; preds = %234
  %242 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %243 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %242)
  store i32 0, i32* %20, align 4
  br label %244

244:                                              ; preds = %259, %241
  %245 = load i32, i32* %20, align 4
  %246 = icmp slt i32 %245, 256
  br i1 %246, label %247, label %262

247:                                              ; preds = %244
  %248 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %249 = load i32, i32* @WRITE_REG_CMD, align 4
  %250 = load i32, i32* @PPBUF_BASE2, align 4
  %251 = load i32, i32* %20, align 4
  %252 = add nsw i32 %250, %251
  %253 = load i32*, i32** %21, align 8
  %254 = load i32, i32* %20, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %248, i32 %249, i32 %252, i32 255, i32 %257)
  br label %259

259:                                              ; preds = %247
  %260 = load i32, i32* %20, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %20, align 4
  br label %244

262:                                              ; preds = %244
  %263 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %264 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %263, i32 0, i32 250)
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %8, align 4
  %266 = load i32, i32* @STATUS_SUCCESS, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %262
  %269 = load i32*, i32** %21, align 8
  %270 = call i32 @kfree(i32* %269)
  br label %559

271:                                              ; preds = %262
  %272 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %273 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %272)
  store i32 256, i32* %20, align 4
  br label %274

274:                                              ; preds = %290, %271
  %275 = load i32, i32* %20, align 4
  %276 = load i32, i32* %18, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %293

278:                                              ; preds = %274
  %279 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %280 = load i32, i32* @WRITE_REG_CMD, align 4
  %281 = load i32, i32* @PPBUF_BASE2, align 4
  %282 = load i32, i32* %20, align 4
  %283 = add nsw i32 %281, %282
  %284 = load i32*, i32** %21, align 8
  %285 = load i32, i32* %20, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %279, i32 %280, i32 %283, i32 255, i32 %288)
  br label %290

290:                                              ; preds = %278
  %291 = load i32, i32* %20, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %20, align 4
  br label %274

293:                                              ; preds = %274
  %294 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %295 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %294, i32 0, i32 250)
  store i32 %295, i32* %8, align 4
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* @STATUS_SUCCESS, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %293
  %300 = load i32*, i32** %21, align 8
  %301 = call i32 @kfree(i32* %300)
  br label %559

302:                                              ; preds = %293
  br label %335

303:                                              ; preds = %234
  %304 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %305 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %304)
  store i32 0, i32* %20, align 4
  br label %306

306:                                              ; preds = %322, %303
  %307 = load i32, i32* %20, align 4
  %308 = load i32, i32* %18, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %325

310:                                              ; preds = %306
  %311 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %312 = load i32, i32* @WRITE_REG_CMD, align 4
  %313 = load i32, i32* @PPBUF_BASE2, align 4
  %314 = load i32, i32* %20, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i32*, i32** %21, align 8
  %317 = load i32, i32* %20, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %311, i32 %312, i32 %315, i32 255, i32 %320)
  br label %322

322:                                              ; preds = %310
  %323 = load i32, i32* %20, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %20, align 4
  br label %306

325:                                              ; preds = %306
  %326 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %327 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %326, i32 0, i32 250)
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* @STATUS_SUCCESS, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %325
  %332 = load i32*, i32** %21, align 8
  %333 = call i32 @kfree(i32* %332)
  br label %559

334:                                              ; preds = %325
  br label %335

335:                                              ; preds = %334, %302
  %336 = load i32*, i32** %21, align 8
  %337 = call i32 @kfree(i32* %336)
  %338 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %339 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %338)
  %340 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %341 = load i32, i32* @WRITE_REG_CMD, align 4
  %342 = load i32, i32* @REG_SD_BYTE_CNT_H, align 4
  %343 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %344 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 8
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 3
  %349 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %340, i32 %341, i32 %342, i32 255, i32 %348)
  %350 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %351 = load i32, i32* @WRITE_REG_CMD, align 4
  %352 = load i32, i32* @REG_SD_BYTE_CNT_L, align 4
  %353 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %354 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 9
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %350, i32 %351, i32 %352, i32 255, i32 %357)
  %359 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %360 = load i32, i32* @WRITE_REG_CMD, align 4
  %361 = load i32, i32* @REG_SD_BLOCK_CNT_H, align 4
  %362 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %359, i32 %360, i32 %361, i32 255, i32 0)
  %363 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %364 = load i32, i32* @WRITE_REG_CMD, align 4
  %365 = load i32, i32* @REG_SD_BLOCK_CNT_L, align 4
  %366 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %363, i32 %364, i32 %365, i32 255, i32 1)
  %367 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %368 = load i32, i32* @WRITE_REG_CMD, align 4
  %369 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %370 = load i32, i32* @PINGPONG_BUFFER, align 4
  %371 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %367, i32 %368, i32 %369, i32 1, i32 %370)
  %372 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %373 = load i32, i32* @WRITE_REG_CMD, align 4
  %374 = load i32, i32* @REG_SD_TRANSFER, align 4
  %375 = load i32, i32* @SD_TM_AUTO_WRITE_3, align 4
  %376 = load i32, i32* @SD_TRANSFER_START, align 4
  %377 = or i32 %375, %376
  %378 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %372, i32 %373, i32 %374, i32 255, i32 %377)
  %379 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %380 = load i32, i32* @CHECK_REG_CMD, align 4
  %381 = load i32, i32* @REG_SD_TRANSFER, align 4
  %382 = load i32, i32* @SD_TRANSFER_END, align 4
  %383 = load i32, i32* @SD_TRANSFER_END, align 4
  %384 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %379, i32 %380, i32 %381, i32 %382, i32 %383)
  %385 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %386 = load i32, i32* @SD_CARD, align 4
  %387 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %385, i32 %386, i32 250)
  store i32 %387, i32* %8, align 4
  br label %453

388:                                              ; preds = %223
  %389 = load i32, i32* %18, align 4
  %390 = and i32 %389, 511
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %451, label %392

392:                                              ; preds = %388
  %393 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %394 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %393)
  %395 = load i32, i32* @DMA_TO_DEVICE, align 4
  %396 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %397 = load i32, i32* %18, align 4
  %398 = load i32, i32* @DMA_512, align 4
  %399 = call i32 @trans_dma_enable(i32 %395, %struct.rtsx_chip* %396, i32 %397, i32 %398)
  %400 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %401 = load i32, i32* @WRITE_REG_CMD, align 4
  %402 = load i32, i32* @REG_SD_BYTE_CNT_H, align 4
  %403 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %400, i32 %401, i32 %402, i32 255, i32 2)
  %404 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %405 = load i32, i32* @WRITE_REG_CMD, align 4
  %406 = load i32, i32* @REG_SD_BYTE_CNT_L, align 4
  %407 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %404, i32 %405, i32 %406, i32 255, i32 0)
  %408 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %409 = load i32, i32* @WRITE_REG_CMD, align 4
  %410 = load i32, i32* @REG_SD_BLOCK_CNT_H, align 4
  %411 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %412 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %411, i32 0, i32 0
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 7
  %415 = load i32, i32* %414, align 4
  %416 = and i32 %415, 254
  %417 = ashr i32 %416, 1
  %418 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %408, i32 %409, i32 %410, i32 255, i32 %417)
  %419 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %420 = load i32, i32* @WRITE_REG_CMD, align 4
  %421 = load i32, i32* @REG_SD_BLOCK_CNT_L, align 4
  %422 = load i32, i32* %18, align 4
  %423 = and i32 %422, 130560
  %424 = ashr i32 %423, 9
  %425 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %419, i32 %420, i32 %421, i32 255, i32 %424)
  %426 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %427 = load i32, i32* @WRITE_REG_CMD, align 4
  %428 = load i32, i32* @REG_SD_TRANSFER, align 4
  %429 = load i32, i32* @SD_TM_AUTO_WRITE_3, align 4
  %430 = load i32, i32* @SD_TRANSFER_START, align 4
  %431 = or i32 %429, %430
  %432 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %426, i32 %427, i32 %428, i32 255, i32 %431)
  %433 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %434 = load i32, i32* @CHECK_REG_CMD, align 4
  %435 = load i32, i32* @REG_SD_TRANSFER, align 4
  %436 = load i32, i32* @SD_TRANSFER_END, align 4
  %437 = load i32, i32* @SD_TRANSFER_END, align 4
  %438 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %433, i32 %434, i32 %435, i32 %436, i32 %437)
  %439 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %440 = call i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip* %439)
  %441 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %442 = load i32, i32* @SD_CARD, align 4
  %443 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %444 = call i32 @scsi_sglist(%struct.scsi_cmnd* %443)
  %445 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %446 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %445)
  %447 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %448 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %447)
  %449 = load i32, i32* @DMA_TO_DEVICE, align 4
  %450 = call i32 @rtsx_transfer_data(%struct.rtsx_chip* %441, i32 %442, i32 %444, i32 %446, i32 %448, i32 %449, i32 10000)
  store i32 %450, i32* %8, align 4
  br label %452

451:                                              ; preds = %388
  br label %559

452:                                              ; preds = %392
  br label %453

453:                                              ; preds = %452, %335
  %454 = load i32, i32* %8, align 4
  %455 = icmp slt i32 %454, 0
  br i1 %455, label %456, label %459

456:                                              ; preds = %453
  store i32 1, i32* %11, align 4
  %457 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %458 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %457)
  br label %559

459:                                              ; preds = %453
  %460 = load i32, i32* %15, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %470

462:                                              ; preds = %459
  %463 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %464 = call i32 @sd_select_card(%struct.rtsx_chip* %463, i32 1)
  store i32 %464, i32* %8, align 4
  %465 = load i32, i32* %8, align 4
  %466 = load i32, i32* @STATUS_SUCCESS, align 4
  %467 = icmp ne i32 %465, %466
  br i1 %467, label %468, label %469

468:                                              ; preds = %462
  br label %559

469:                                              ; preds = %462
  br label %470

470:                                              ; preds = %469, %459
  %471 = load i32, i32* %16, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %483

473:                                              ; preds = %470
  %474 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %475 = load i32, i32* @STOP_TRANSMISSION, align 4
  %476 = load i32, i32* @SD_RSP_TYPE_R1b, align 4
  %477 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %474, i32 %475, i32 0, i32 %476, i32* null, i32 0, i32 0)
  store i32 %477, i32* %8, align 4
  %478 = load i32, i32* %8, align 4
  %479 = load i32, i32* @STATUS_SUCCESS, align 4
  %480 = icmp ne i32 %478, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %473
  br label %559

482:                                              ; preds = %473
  br label %483

483:                                              ; preds = %482, %470
  %484 = load i32, i32* %18, align 4
  %485 = icmp slt i32 %484, 512
  br i1 %485, label %486, label %512

486:                                              ; preds = %483
  %487 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %488 = load i32, i32* @SET_BLOCKLEN, align 4
  %489 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %490 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %487, i32 %488, i32 512, i32 %489, i32* null, i32 0, i32 0)
  store i32 %490, i32* %8, align 4
  %491 = load i32, i32* %8, align 4
  %492 = load i32, i32* @STATUS_SUCCESS, align 4
  %493 = icmp ne i32 %491, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %486
  br label %559

495:                                              ; preds = %486
  %496 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %497 = load i32, i32* @SD_BYTE_CNT_H, align 4
  %498 = call i32 @rtsx_write_register(%struct.rtsx_chip* %496, i32 %497, i32 255, i32 2)
  store i32 %498, i32* %8, align 4
  %499 = load i32, i32* %8, align 4
  %500 = load i32, i32* @STATUS_SUCCESS, align 4
  %501 = icmp ne i32 %499, %500
  br i1 %501, label %502, label %503

502:                                              ; preds = %495
  br label %559

503:                                              ; preds = %495
  %504 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %505 = load i32, i32* @SD_BYTE_CNT_L, align 4
  %506 = call i32 @rtsx_write_register(%struct.rtsx_chip* %504, i32 %505, i32 255, i32 0)
  store i32 %506, i32* %8, align 4
  %507 = load i32, i32* %8, align 4
  %508 = load i32, i32* @STATUS_SUCCESS, align 4
  %509 = icmp ne i32 %507, %508
  br i1 %509, label %510, label %511

510:                                              ; preds = %503
  br label %559

511:                                              ; preds = %503
  br label %512

512:                                              ; preds = %511, %483
  %513 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %514 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %513, i32 0, i32 0
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 1
  %517 = load i32, i32* %516, align 4
  %518 = and i32 %517, 2
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %528, label %520

520:                                              ; preds = %512
  %521 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %522 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %521, i32 0, i32 0
  %523 = load i32*, i32** %522, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 1
  %525 = load i32, i32* %524, align 4
  %526 = and i32 %525, 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %520, %512
  store i32 1, i32* %12, align 4
  br label %529

529:                                              ; preds = %528, %520
  store i32 0, i32* %10, align 4
  br label %530

530:                                              ; preds = %547, %529
  %531 = load i32, i32* %10, align 4
  %532 = icmp slt i32 %531, 3
  br i1 %532, label %533, label %550

533:                                              ; preds = %530
  %534 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %535 = load i32, i32* @SEND_STATUS, align 4
  %536 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %537 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %540 = load i32, i32* %12, align 4
  %541 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %534, i32 %535, i32 %538, i32 %539, i32* null, i32 0, i32 %540)
  store i32 %541, i32* %8, align 4
  %542 = load i32, i32* %8, align 4
  %543 = load i32, i32* @STATUS_SUCCESS, align 4
  %544 = icmp eq i32 %542, %543
  br i1 %544, label %545, label %546

545:                                              ; preds = %533
  br label %550

546:                                              ; preds = %533
  br label %547

547:                                              ; preds = %546
  %548 = load i32, i32* %10, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %10, align 4
  br label %530

550:                                              ; preds = %545, %530
  %551 = load i32, i32* %8, align 4
  %552 = load i32, i32* @STATUS_SUCCESS, align 4
  %553 = icmp ne i32 %551, %552
  br i1 %553, label %554, label %555

554:                                              ; preds = %550
  br label %559

555:                                              ; preds = %550
  %556 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %557 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %556, i32 0)
  %558 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %558, i32* %3, align 4
  br label %591

559:                                              ; preds = %554, %510, %502, %494, %481, %468, %456, %451, %331, %299, %268, %222, %207, %191, %180
  %560 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %561 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %560, i32 0, i32 0
  store i32 1, i32* %561, align 8
  %562 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %563 = load i32, i32* %7, align 4
  %564 = load i32, i32* @SENSE_TYPE_NO_SENSE, align 4
  %565 = call i32 @set_sense_type(%struct.rtsx_chip* %562, i32 %563, i32 %564)
  %566 = load i32, i32* %11, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %559
  %569 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %570 = load i32, i32* %7, align 4
  %571 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_ERR, align 4
  %572 = call i32 @set_sense_type(%struct.rtsx_chip* %569, i32 %570, i32 %571)
  br label %573

573:                                              ; preds = %568, %559
  %574 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %575 = call i32 @release_sd_card(%struct.rtsx_chip* %574)
  %576 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %577 = call i32 @do_reset_sd_card(%struct.rtsx_chip* %576)
  %578 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %579 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  %581 = load i32, i32* @SD_CARD, align 4
  %582 = and i32 %580, %581
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %589, label %584

584:                                              ; preds = %573
  %585 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %586 = load i32, i32* %7, align 4
  %587 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %588 = call i32 @set_sense_type(%struct.rtsx_chip* %585, i32 %586, i32 %587)
  br label %589

589:                                              ; preds = %584, %573
  %590 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %590, i32* %3, align 4
  br label %591

591:                                              ; preds = %589, %555, %232, %166, %156, %141, %55, %41, %30
  %592 = load i32, i32* %3, align 4
  ret i32 %592
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @sd_switch_clock(%struct.rtsx_chip*) #1

declare dso_local i32 @get_rsp_type(%struct.scsi_cmnd*, i32*, i32*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sd_select_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @rtsx_stor_get_xfer_buf(i32*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @trans_dma_enable(i32, %struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_transfer_data(%struct.rtsx_chip*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @release_sd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @do_reset_sd_card(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
