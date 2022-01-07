; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_execute_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_execute_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32, %struct.sd_info }
%struct.sd_info = type { i32, i32, i32, i32, i32, i32 }

@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_CHANGE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@SET_BLOCKLEN = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@APP_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TRANSPORT_ERROR = common dso_local global i32 0, align 4
@SD_TM_NORMAL_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_512 = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@REG_SD_BYTE_CNT_H = common dso_local global i32 0, align 4
@REG_SD_BYTE_CNT_L = common dso_local global i32 0, align 4
@REG_SD_BLOCK_CNT_H = common dso_local global i32 0, align 4
@REG_SD_BLOCK_CNT_L = common dso_local global i32 0, align 4
@REG_SD_CMD0 = common dso_local global i32 0, align 4
@REG_SD_CMD1 = common dso_local global i32 0, align 4
@REG_SD_CMD2 = common dso_local global i32 0, align 4
@REG_SD_CMD3 = common dso_local global i32 0, align 4
@REG_SD_CMD4 = common dso_local global i32 0, align 4
@REG_SD_CFG1 = common dso_local global i32 0, align 4
@REG_SD_CFG2 = common dso_local global i32 0, align 4
@REG_SD_TRANSFER = common dso_local global i32 0, align 4
@SD_TM_AUTO_READ_2 = common dso_local global i32 0, align 4
@SD_TRANSFER_START = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@SD_TRANSFER_END = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@STOP_TRANSMISSION = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1b = common dso_local global i32 0, align 4
@SD_BYTE_CNT_H = common dso_local global i32 0, align 4
@SD_BYTE_CNT_L = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@SENSE_TYPE_NO_SENSE = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@SD_LOCK_1BIT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_execute_read_data(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [5 x i32], align 16
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %26 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %25, i32 0, i32 1
  store %struct.sd_info* %26, %struct.sd_info** %6, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %27)
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %29 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %30 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %2
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %37 = call i32 @set_sense_type(%struct.rtsx_chip* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %38, i32* %3, align 4
  br label %524

39:                                               ; preds = %2
  %40 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %41 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %46 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SENSE_TYPE_MEDIA_CHANGE, align 4
  %50 = call i32 @set_sense_type(%struct.rtsx_chip* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %51, i32* %3, align 4
  br label %524

52:                                               ; preds = %39
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %54 = call i32 @sd_switch_clock(%struct.rtsx_chip* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @STATUS_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %59, i32* %3, align 4
  br label %524

60:                                               ; preds = %52
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 63
  store i32 %66, i32* %13, align 4
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 1, i32* %17, align 4
  br label %75

75:                                               ; preds = %74, %60
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 2
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 1, i32* %16, align 4
  br label %84

84:                                               ; preds = %83, %75
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 1, i32* %18, align 4
  br label %93

93:                                               ; preds = %92, %84
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 16
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = or i32 %99, %105
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 9
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %106, %111
  store i32 %112, i32* %19, align 4
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %114 = call i32 @get_rsp_type(%struct.scsi_cmnd* %113, i32* %14, i32* %9)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @STATUS_SUCCESS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %93
  %119 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %122 = call i32 @set_sense_type(%struct.rtsx_chip* %119, i32 %120, i32 %121)
  %123 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %123, i32* %3, align 4
  br label %524

124:                                              ; preds = %93
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %127 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %129 = call i32 @sd_switch_clock(%struct.rtsx_chip* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @STATUS_SUCCESS, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %134, i32* %3, align 4
  br label %524

135:                                              ; preds = %124
  %136 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %19, align 4
  %138 = icmp slt i32 %137, 512
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %141 = load i32, i32* @SET_BLOCKLEN, align 4
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %144 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %140, i32 %141, i32 %142, i32 %143, i32* null, i32 0, i32 0)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @STATUS_SUCCESS, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %492

149:                                              ; preds = %139
  br label %150

150:                                              ; preds = %149, %135
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %155 = call i32 @sd_select_card(%struct.rtsx_chip* %154, i32 0)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @STATUS_SUCCESS, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %492

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %150
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %166 = load i32, i32* @APP_CMD, align 4
  %167 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %168 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %171 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %165, i32 %166, i32 %169, i32 %170, i32* null, i32 0, i32 0)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @STATUS_SUCCESS, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  br label %492

176:                                              ; preds = %164
  br label %177

177:                                              ; preds = %176, %161
  %178 = load i32, i32* %19, align 4
  %179 = icmp sle i32 %178, 512
  br i1 %179, label %180, label %257

180:                                              ; preds = %177
  %181 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %182 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 8
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 3
  %187 = shl i32 %186, 8
  %188 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %189 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 9
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %187, %192
  store i32 %193, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %194 = load i32, i32* %13, align 4
  %195 = or i32 64, %194
  %196 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 0
  store i32 %195, i32* %196, align 16
  %197 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %198 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 1
  store i32 %201, i32* %202, align 4
  %203 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %204 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 2
  store i32 %207, i32* %208, align 8
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %210 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 5
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 3
  store i32 %213, i32* %214, align 4
  %215 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %216 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 6
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 4
  store i32 %219, i32* %220, align 16
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* @GFP_KERNEL, align 4
  %223 = call i32* @kmalloc(i32 %221, i32 %222)
  store i32* %223, i32** %21, align 8
  %224 = load i32*, i32** %21, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %180
  %227 = load i32, i32* @TRANSPORT_ERROR, align 4
  store i32 %227, i32* %3, align 4
  br label %524

228:                                              ; preds = %180
  %229 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %230 = load i32, i32* @SD_TM_NORMAL_READ, align 4
  %231 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 0
  %232 = load i32, i32* %22, align 4
  %233 = load i32, i32* %23, align 4
  %234 = load i32, i32* %15, align 4
  %235 = load i32*, i32** %21, align 8
  %236 = load i32, i32* %19, align 4
  %237 = call i32 @sd_read_data(%struct.rtsx_chip* %229, i32 %230, i32* %231, i32 5, i32 %232, i32 %233, i32 %234, i32* %235, i32 %236, i32 2000)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @STATUS_SUCCESS, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %228
  store i32 1, i32* %11, align 4
  %242 = load i32*, i32** %21, align 8
  %243 = call i32 @kfree(i32* %242)
  %244 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %245 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %244)
  br label %492

246:                                              ; preds = %228
  %247 = load i32, i32* %19, align 4
  %248 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %249 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %248)
  %250 = call i32 @min(i32 %247, i32 %249)
  store i32 %250, i32* %20, align 4
  %251 = load i32*, i32** %21, align 8
  %252 = load i32, i32* %20, align 4
  %253 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %254 = call i32 @rtsx_stor_set_xfer_buf(i32* %251, i32 %252, %struct.scsi_cmnd* %253)
  %255 = load i32*, i32** %21, align 8
  %256 = call i32 @kfree(i32* %255)
  br label %380

257:                                              ; preds = %177
  %258 = load i32, i32* %19, align 4
  %259 = and i32 %258, 511
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %378, label %261

261:                                              ; preds = %257
  %262 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %263 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %262)
  %264 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %265 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* @DMA_512, align 4
  %268 = call i32 @trans_dma_enable(i32 %264, %struct.rtsx_chip* %265, i32 %266, i32 %267)
  %269 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %270 = load i32, i32* @WRITE_REG_CMD, align 4
  %271 = load i32, i32* @REG_SD_BYTE_CNT_H, align 4
  %272 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %269, i32 %270, i32 %271, i32 255, i32 2)
  %273 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %274 = load i32, i32* @WRITE_REG_CMD, align 4
  %275 = load i32, i32* @REG_SD_BYTE_CNT_L, align 4
  %276 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %273, i32 %274, i32 %275, i32 255, i32 0)
  %277 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %278 = load i32, i32* @WRITE_REG_CMD, align 4
  %279 = load i32, i32* @REG_SD_BLOCK_CNT_H, align 4
  %280 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %281 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 7
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, 254
  %286 = ashr i32 %285, 1
  %287 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %277, i32 %278, i32 %279, i32 255, i32 %286)
  %288 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %289 = load i32, i32* @WRITE_REG_CMD, align 4
  %290 = load i32, i32* @REG_SD_BLOCK_CNT_L, align 4
  %291 = load i32, i32* %19, align 4
  %292 = and i32 %291, 130560
  %293 = ashr i32 %292, 9
  %294 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %288, i32 %289, i32 %290, i32 255, i32 %293)
  %295 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %296 = load i32, i32* @WRITE_REG_CMD, align 4
  %297 = load i32, i32* @REG_SD_CMD0, align 4
  %298 = load i32, i32* %13, align 4
  %299 = or i32 64, %298
  %300 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %295, i32 %296, i32 %297, i32 255, i32 %299)
  %301 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %302 = load i32, i32* @WRITE_REG_CMD, align 4
  %303 = load i32, i32* @REG_SD_CMD1, align 4
  %304 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %305 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 3
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %301, i32 %302, i32 %303, i32 255, i32 %308)
  %310 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %311 = load i32, i32* @WRITE_REG_CMD, align 4
  %312 = load i32, i32* @REG_SD_CMD2, align 4
  %313 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %314 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 4
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %310, i32 %311, i32 %312, i32 255, i32 %317)
  %319 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %320 = load i32, i32* @WRITE_REG_CMD, align 4
  %321 = load i32, i32* @REG_SD_CMD3, align 4
  %322 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %323 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 5
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %319, i32 %320, i32 %321, i32 255, i32 %326)
  %328 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %329 = load i32, i32* @WRITE_REG_CMD, align 4
  %330 = load i32, i32* @REG_SD_CMD4, align 4
  %331 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %332 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 6
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %328, i32 %329, i32 %330, i32 255, i32 %335)
  %337 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %338 = load i32, i32* @WRITE_REG_CMD, align 4
  %339 = load i32, i32* @REG_SD_CFG1, align 4
  %340 = load i32, i32* %15, align 4
  %341 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %337, i32 %338, i32 %339, i32 3, i32 %340)
  %342 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %343 = load i32, i32* @WRITE_REG_CMD, align 4
  %344 = load i32, i32* @REG_SD_CFG2, align 4
  %345 = load i32, i32* %14, align 4
  %346 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %342, i32 %343, i32 %344, i32 255, i32 %345)
  %347 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %348 = load i32, i32* @WRITE_REG_CMD, align 4
  %349 = load i32, i32* @REG_SD_TRANSFER, align 4
  %350 = load i32, i32* @SD_TM_AUTO_READ_2, align 4
  %351 = load i32, i32* @SD_TRANSFER_START, align 4
  %352 = or i32 %350, %351
  %353 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %347, i32 %348, i32 %349, i32 255, i32 %352)
  %354 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %355 = load i32, i32* @CHECK_REG_CMD, align 4
  %356 = load i32, i32* @REG_SD_TRANSFER, align 4
  %357 = load i32, i32* @SD_TRANSFER_END, align 4
  %358 = load i32, i32* @SD_TRANSFER_END, align 4
  %359 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %354, i32 %355, i32 %356, i32 %357, i32 %358)
  %360 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %361 = call i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip* %360)
  %362 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %363 = load i32, i32* @SD_CARD, align 4
  %364 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %365 = call i32 @scsi_sglist(%struct.scsi_cmnd* %364)
  %366 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %367 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %366)
  %368 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %369 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %368)
  %370 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %371 = call i32 @rtsx_transfer_data(%struct.rtsx_chip* %362, i32 %363, i32 %365, i32 %367, i32 %369, i32 %370, i32 10000)
  store i32 %371, i32* %8, align 4
  %372 = load i32, i32* %8, align 4
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %261
  store i32 1, i32* %11, align 4
  %375 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %376 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %375)
  br label %492

377:                                              ; preds = %261
  br label %379

378:                                              ; preds = %257
  br label %492

379:                                              ; preds = %377
  br label %380

380:                                              ; preds = %379, %246
  %381 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %382 = load i32, i32* %9, align 4
  %383 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %384 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %14, align 4
  %387 = call i32 @ext_sd_get_rsp(%struct.rtsx_chip* %381, i32 %382, i32 %385, i32 %386)
  store i32 %387, i32* %8, align 4
  %388 = load i32, i32* %8, align 4
  %389 = load i32, i32* @STATUS_SUCCESS, align 4
  %390 = icmp ne i32 %388, %389
  br i1 %390, label %391, label %392

391:                                              ; preds = %380
  br label %492

392:                                              ; preds = %380
  %393 = load i32, i32* %16, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %403

395:                                              ; preds = %392
  %396 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %397 = call i32 @sd_select_card(%struct.rtsx_chip* %396, i32 1)
  store i32 %397, i32* %8, align 4
  %398 = load i32, i32* %8, align 4
  %399 = load i32, i32* @STATUS_SUCCESS, align 4
  %400 = icmp ne i32 %398, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %395
  br label %492

402:                                              ; preds = %395
  br label %403

403:                                              ; preds = %402, %392
  %404 = load i32, i32* %17, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %416

406:                                              ; preds = %403
  %407 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %408 = load i32, i32* @STOP_TRANSMISSION, align 4
  %409 = load i32, i32* @SD_RSP_TYPE_R1b, align 4
  %410 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %407, i32 %408, i32 0, i32 %409, i32* null, i32 0, i32 0)
  store i32 %410, i32* %8, align 4
  %411 = load i32, i32* %8, align 4
  %412 = load i32, i32* @STATUS_SUCCESS, align 4
  %413 = icmp ne i32 %411, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %406
  br label %492

415:                                              ; preds = %406
  br label %416

416:                                              ; preds = %415, %403
  %417 = load i32, i32* %19, align 4
  %418 = icmp slt i32 %417, 512
  br i1 %418, label %419, label %445

419:                                              ; preds = %416
  %420 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %421 = load i32, i32* @SET_BLOCKLEN, align 4
  %422 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %423 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %420, i32 %421, i32 512, i32 %422, i32* null, i32 0, i32 0)
  store i32 %423, i32* %8, align 4
  %424 = load i32, i32* %8, align 4
  %425 = load i32, i32* @STATUS_SUCCESS, align 4
  %426 = icmp ne i32 %424, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %419
  br label %492

428:                                              ; preds = %419
  %429 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %430 = load i32, i32* @SD_BYTE_CNT_H, align 4
  %431 = call i32 @rtsx_write_register(%struct.rtsx_chip* %429, i32 %430, i32 255, i32 2)
  store i32 %431, i32* %8, align 4
  %432 = load i32, i32* %8, align 4
  %433 = load i32, i32* @STATUS_SUCCESS, align 4
  %434 = icmp ne i32 %432, %433
  br i1 %434, label %435, label %436

435:                                              ; preds = %428
  br label %492

436:                                              ; preds = %428
  %437 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %438 = load i32, i32* @SD_BYTE_CNT_L, align 4
  %439 = call i32 @rtsx_write_register(%struct.rtsx_chip* %437, i32 %438, i32 255, i32 0)
  store i32 %439, i32* %8, align 4
  %440 = load i32, i32* %8, align 4
  %441 = load i32, i32* @STATUS_SUCCESS, align 4
  %442 = icmp ne i32 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %436
  br label %492

444:                                              ; preds = %436
  br label %445

445:                                              ; preds = %444, %416
  %446 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %447 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 1
  %450 = load i32, i32* %449, align 4
  %451 = and i32 %450, 2
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %461, label %453

453:                                              ; preds = %445
  %454 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %455 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %454, i32 0, i32 0
  %456 = load i32*, i32** %455, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 1
  %458 = load i32, i32* %457, align 4
  %459 = and i32 %458, 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %453, %445
  store i32 1, i32* %12, align 4
  br label %462

462:                                              ; preds = %461, %453
  store i32 0, i32* %10, align 4
  br label %463

463:                                              ; preds = %480, %462
  %464 = load i32, i32* %10, align 4
  %465 = icmp slt i32 %464, 3
  br i1 %465, label %466, label %483

466:                                              ; preds = %463
  %467 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %468 = load i32, i32* @SEND_STATUS, align 4
  %469 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %470 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %473 = load i32, i32* %12, align 4
  %474 = call i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip* %467, i32 %468, i32 %471, i32 %472, i32* null, i32 0, i32 %473)
  store i32 %474, i32* %8, align 4
  %475 = load i32, i32* %8, align 4
  %476 = load i32, i32* @STATUS_SUCCESS, align 4
  %477 = icmp eq i32 %475, %476
  br i1 %477, label %478, label %479

478:                                              ; preds = %466
  br label %483

479:                                              ; preds = %466
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %10, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %10, align 4
  br label %463

483:                                              ; preds = %478, %463
  %484 = load i32, i32* %8, align 4
  %485 = load i32, i32* @STATUS_SUCCESS, align 4
  %486 = icmp ne i32 %484, %485
  br i1 %486, label %487, label %488

487:                                              ; preds = %483
  br label %492

488:                                              ; preds = %483
  %489 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %490 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %489, i32 0)
  %491 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %491, i32* %3, align 4
  br label %524

492:                                              ; preds = %487, %443, %435, %427, %414, %401, %391, %378, %374, %241, %175, %159, %148
  %493 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %494 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %493, i32 0, i32 0
  store i32 1, i32* %494, align 4
  %495 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %496 = load i32, i32* %7, align 4
  %497 = load i32, i32* @SENSE_TYPE_NO_SENSE, align 4
  %498 = call i32 @set_sense_type(%struct.rtsx_chip* %495, i32 %496, i32 %497)
  %499 = load i32, i32* %11, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %492
  %502 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %503 = load i32, i32* %7, align 4
  %504 = load i32, i32* @SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR, align 4
  %505 = call i32 @set_sense_type(%struct.rtsx_chip* %502, i32 %503, i32 %504)
  br label %506

506:                                              ; preds = %501, %492
  %507 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %508 = call i32 @release_sd_card(%struct.rtsx_chip* %507)
  %509 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %510 = call i32 @do_reset_sd_card(%struct.rtsx_chip* %509)
  %511 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %512 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* @SD_CARD, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %522, label %517

517:                                              ; preds = %506
  %518 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %519 = load i32, i32* %7, align 4
  %520 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %521 = call i32 @set_sense_type(%struct.rtsx_chip* %518, i32 %519, i32 %520)
  br label %522

522:                                              ; preds = %517, %506
  %523 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %523, i32* %3, align 4
  br label %524

524:                                              ; preds = %522, %488, %226, %133, %118, %58, %44, %33
  %525 = load i32, i32* %3, align 4
  ret i32 %525
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @sd_switch_clock(%struct.rtsx_chip*) #1

declare dso_local i32 @get_rsp_type(%struct.scsi_cmnd*, i32*, i32*) #1

declare dso_local i32 @ext_sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sd_select_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @sd_read_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @rtsx_stor_set_xfer_buf(i32*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @trans_dma_enable(i32, %struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_transfer_data(%struct.rtsx_chip*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @ext_sd_get_rsp(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @release_sd_card(%struct.rtsx_chip*) #1

declare dso_local i32 @do_reset_sd_card(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
