; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_rw_multi_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_rw_multi_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.rtsx_chip = type { i32, %struct.ms_info }
%struct.ms_info = type { i32, i32, %struct.TYPE_2__*, i64, %struct.ms_delay_write_tag }
%struct.TYPE_2__ = type { i64 }
%struct.ms_delay_write_tag = type { i32, i64, i64, i64, i64 }

@MS_NO_ERROR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@ms_start_idx = common dso_local global i64* null, align 8
@MS_CARD = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@SENSE_TYPE_MEDIA_WRITE_ERR = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"seg_no = %d, old_blk = 0x%x, new_blk = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"start_page = %d, end_page = %d, page_cnt = %d\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*, i32, i64)* @ms_rw_multi_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_rw_multi_sector(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ms_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %25 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %24, i32 0, i32 1
  store %struct.ms_info* %25, %struct.ms_info** %10, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %27 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %26)
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %19, align 8
  store i64 0, i64* %21, align 8
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %30 = load i32, i32* @MS_NO_ERROR, align 4
  %31 = call i32 @ms_set_err_code(%struct.rtsx_chip* %29, i32 %30)
  %32 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %33 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %35 = call i64 @scsi_sglist(%struct.scsi_cmnd* %34)
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %23, align 8
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %38 = call i32 @ms_switch_clock(%struct.rtsx_chip* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @STATUS_SUCCESS, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %45 = call i32 @ms_rw_fail(%struct.scsi_cmnd* %43, %struct.rtsx_chip* %44)
  %46 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %46, i32* %5, align 4
  br label %471

47:                                               ; preds = %4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %50 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %48, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %18, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %56 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %54, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %20, align 8
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %77, %47
  %61 = load i32, i32* %13, align 4
  %62 = load i64*, i64** @ms_start_idx, align 8
  %63 = call i32 @ARRAY_SIZE(i64* %62)
  %64 = sub nsw i32 %63, 1
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load i64, i64* %18, align 8
  %68 = load i64*, i64** @ms_start_idx, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %67, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %80

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %60

80:                                               ; preds = %75, %60
  %81 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %82 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %80
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @ms_build_l2p_tbl(%struct.rtsx_chip* %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @STATUS_SUCCESS, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load i32, i32* @MS_CARD, align 4
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %100 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %106 = call i32 @set_sense_type(%struct.rtsx_chip* %103, i32 %104, i32 %105)
  %107 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %107, i32* %5, align 4
  br label %471

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %80
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DMA_TO_DEVICE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %169

115:                                              ; preds = %109
  %116 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i64, i64* %18, align 8
  %119 = load i64*, i64** @ms_start_idx, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %118, %123
  %125 = call i64 @ms_get_l2p_tbl(%struct.rtsx_chip* %116, i32 %117, i64 %124)
  store i64 %125, i64* %16, align 8
  %126 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i64 @ms_get_unused_block(%struct.rtsx_chip* %126, i32 %127)
  store i64 %128, i64* %17, align 8
  %129 = load i64, i64* %16, align 8
  %130 = icmp eq i64 %129, 65535
  br i1 %130, label %134, label %131

131:                                              ; preds = %115
  %132 = load i64, i64* %17, align 8
  %133 = icmp eq i64 %132, 65535
  br i1 %133, label %134, label %140

134:                                              ; preds = %131, %115
  %135 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_ERR, align 4
  %138 = call i32 @set_sense_type(%struct.rtsx_chip* %135, i32 %136, i32 %137)
  %139 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %139, i32* %5, align 4
  br label %471

140:                                              ; preds = %131
  %141 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* %20, align 8
  %146 = call i32 @ms_prepare_write(%struct.rtsx_chip* %141, i64 %142, i64 %143, i64 %144, i64 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @STATUS_SUCCESS, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %140
  %151 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %152 = load i32, i32* @MS_CARD, align 4
  %153 = call i32 @detect_card_cd(%struct.rtsx_chip* %151, i32 %152)
  %154 = load i32, i32* @STATUS_SUCCESS, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %160 = call i32 @set_sense_type(%struct.rtsx_chip* %157, i32 %158, i32 %159)
  %161 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %161, i32* %5, align 4
  br label %471

162:                                              ; preds = %150
  %163 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_ERR, align 4
  %166 = call i32 @set_sense_type(%struct.rtsx_chip* %163, i32 %164, i32 %165)
  %167 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %167, i32* %5, align 4
  br label %471

168:                                              ; preds = %140
  br label %189

169:                                              ; preds = %109
  %170 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load i64, i64* %18, align 8
  %173 = load i64*, i64** @ms_start_idx, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = sub nsw i64 %172, %177
  %179 = call i64 @ms_get_l2p_tbl(%struct.rtsx_chip* %170, i32 %171, i64 %178)
  store i64 %179, i64* %16, align 8
  %180 = load i64, i64* %16, align 8
  %181 = icmp eq i64 %180, 65535
  br i1 %181, label %182, label %188

182:                                              ; preds = %169
  %183 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR, align 4
  %186 = call i32 @set_sense_type(%struct.rtsx_chip* %183, i32 %184, i32 %185)
  %187 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %187, i32* %5, align 4
  br label %471

188:                                              ; preds = %169
  br label %189

189:                                              ; preds = %188, %168
  %190 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %191 = call i32 @rtsx_dev(%struct.rtsx_chip* %190)
  %192 = load i32, i32* %13, align 4
  %193 = load i64, i64* %16, align 8
  %194 = load i64, i64* %17, align 8
  %195 = call i32 @dev_dbg(i32 %191, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %192, i64 %193, i64 %194)
  br label %196

196:                                              ; preds = %417, %189
  %197 = load i64, i64* %19, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %424

199:                                              ; preds = %196
  %200 = load i64, i64* %20, align 8
  %201 = load i64, i64* %19, align 8
  %202 = add nsw i64 %200, %201
  %203 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %204 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = icmp sgt i64 %202, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %199
  %210 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %211 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %21, align 8
  br label %219

215:                                              ; preds = %199
  %216 = load i64, i64* %20, align 8
  %217 = load i64, i64* %19, align 8
  %218 = add nsw i64 %216, %217
  store i64 %218, i64* %21, align 8
  br label %219

219:                                              ; preds = %215, %209
  %220 = load i64, i64* %21, align 8
  %221 = load i64, i64* %20, align 8
  %222 = sub nsw i64 %220, %221
  store i64 %222, i64* %22, align 8
  %223 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %224 = call i32 @rtsx_dev(%struct.rtsx_chip* %223)
  %225 = load i64, i64* %20, align 8
  %226 = trunc i64 %225 to i32
  %227 = load i64, i64* %21, align 8
  %228 = load i64, i64* %22, align 8
  %229 = call i32 @dev_dbg(i32 %224, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %226, i64 %227, i64 %228)
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %219
  %236 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %237 = load i64, i64* %16, align 8
  %238 = load i64, i64* %18, align 8
  %239 = load i64, i64* %20, align 8
  %240 = load i64, i64* %21, align 8
  %241 = load i64*, i64** %23, align 8
  %242 = call i32 @ms_read_multiple_pages(%struct.rtsx_chip* %236, i64 %237, i64 %238, i64 %239, i64 %240, i64* %241, i32* %14, i32* %15)
  store i32 %242, i32* %12, align 4
  br label %252

243:                                              ; preds = %219
  %244 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %245 = load i64, i64* %16, align 8
  %246 = load i64, i64* %17, align 8
  %247 = load i64, i64* %18, align 8
  %248 = load i64, i64* %20, align 8
  %249 = load i64, i64* %21, align 8
  %250 = load i64*, i64** %23, align 8
  %251 = call i32 @ms_write_multiple_pages(%struct.rtsx_chip* %244, i64 %245, i64 %246, i64 %247, i64 %248, i64 %249, i64* %250, i32* %14, i32* %15)
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %243, %235
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* @STATUS_SUCCESS, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %275

256:                                              ; preds = %252
  %257 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %258 = call i32 @toggle_gpio(%struct.rtsx_chip* %257, i32 1)
  %259 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %260 = load i32, i32* @MS_CARD, align 4
  %261 = call i32 @detect_card_cd(%struct.rtsx_chip* %259, i32 %260)
  %262 = load i32, i32* @STATUS_SUCCESS, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %256
  %265 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %268 = call i32 @set_sense_type(%struct.rtsx_chip* %265, i32 %266, i32 %267)
  %269 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %269, i32* %5, align 4
  br label %471

270:                                              ; preds = %256
  %271 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %272 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %273 = call i32 @ms_rw_fail(%struct.scsi_cmnd* %271, %struct.rtsx_chip* %272)
  %274 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %274, i32* %5, align 4
  br label %471

275:                                              ; preds = %252
  %276 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %277 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @DMA_TO_DEVICE, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %313

281:                                              ; preds = %275
  %282 = load i64, i64* %21, align 8
  %283 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %284 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = icmp eq i64 %282, %287
  br i1 %288, label %289, label %312

289:                                              ; preds = %281
  %290 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %291 = load i64, i64* %16, align 8
  %292 = call i32 @ms_erase_block(%struct.rtsx_chip* %290, i64 %291)
  store i32 %292, i32* %12, align 4
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* @STATUS_SUCCESS, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %289
  %297 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %298 = load i64, i64* %16, align 8
  %299 = call i32 @ms_set_unused_block(%struct.rtsx_chip* %297, i64 %298)
  br label %300

300:                                              ; preds = %296, %289
  %301 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %302 = load i32, i32* %13, align 4
  %303 = load i64, i64* %18, align 8
  %304 = load i64*, i64** @ms_start_idx, align 8
  %305 = load i32, i32* %13, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = sub nsw i64 %303, %308
  %310 = load i64, i64* %17, align 8
  %311 = call i32 @ms_set_l2p_tbl(%struct.rtsx_chip* %301, i32 %302, i64 %309, i64 %310)
  br label %312

312:                                              ; preds = %300, %281
  br label %313

313:                                              ; preds = %312, %275
  %314 = load i64, i64* %22, align 8
  %315 = load i64, i64* %19, align 8
  %316 = sub nsw i64 %315, %314
  store i64 %316, i64* %19, align 8
  %317 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %318 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %317)
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %313
  %321 = load i64, i64* %22, align 8
  %322 = mul nsw i64 %321, 512
  %323 = load i64*, i64** %23, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 %322
  store i64* %324, i64** %23, align 8
  br label %325

325:                                              ; preds = %320, %313
  %326 = load i64, i64* %19, align 8
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  br label %424

329:                                              ; preds = %325
  %330 = load i64, i64* %18, align 8
  %331 = add nsw i64 %330, 1
  store i64 %331, i64* %18, align 8
  store i32 0, i32* %13, align 4
  br label %332

332:                                              ; preds = %349, %329
  %333 = load i32, i32* %13, align 4
  %334 = load i64*, i64** @ms_start_idx, align 8
  %335 = call i32 @ARRAY_SIZE(i64* %334)
  %336 = sub nsw i32 %335, 1
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %352

338:                                              ; preds = %332
  %339 = load i64, i64* %18, align 8
  %340 = load i64*, i64** @ms_start_idx, align 8
  %341 = load i32, i32* %13, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i64, i64* %340, i64 %343
  %345 = load i64, i64* %344, align 8
  %346 = icmp slt i64 %339, %345
  br i1 %346, label %347, label %348

347:                                              ; preds = %338
  br label %352

348:                                              ; preds = %338
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %13, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %13, align 4
  br label %332

352:                                              ; preds = %347, %332
  %353 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %354 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %353, i32 0, i32 2
  %355 = load %struct.TYPE_2__*, %struct.TYPE_2__** %354, align 8
  %356 = load i32, i32* %13, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %381

362:                                              ; preds = %352
  %363 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %364 = load i32, i32* %13, align 4
  %365 = call i32 @ms_build_l2p_tbl(%struct.rtsx_chip* %363, i32 %364)
  store i32 %365, i32* %12, align 4
  %366 = load i32, i32* %12, align 4
  %367 = load i32, i32* @STATUS_SUCCESS, align 4
  %368 = icmp ne i32 %366, %367
  br i1 %368, label %369, label %380

369:                                              ; preds = %362
  %370 = load i32, i32* @MS_CARD, align 4
  %371 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %372 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = or i32 %373, %370
  store i32 %374, i32* %372, align 8
  %375 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %376 = load i32, i32* %11, align 4
  %377 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %378 = call i32 @set_sense_type(%struct.rtsx_chip* %375, i32 %376, i32 %377)
  %379 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %379, i32* %5, align 4
  br label %471

380:                                              ; preds = %362
  br label %381

381:                                              ; preds = %380, %352
  %382 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %383 = load i32, i32* %13, align 4
  %384 = load i64, i64* %18, align 8
  %385 = load i64*, i64** @ms_start_idx, align 8
  %386 = load i32, i32* %13, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %385, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = sub nsw i64 %384, %389
  %391 = call i64 @ms_get_l2p_tbl(%struct.rtsx_chip* %382, i32 %383, i64 %390)
  store i64 %391, i64* %16, align 8
  %392 = load i64, i64* %16, align 8
  %393 = icmp eq i64 %392, 65535
  br i1 %393, label %394, label %399

394:                                              ; preds = %381
  %395 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %396 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %397 = call i32 @ms_rw_fail(%struct.scsi_cmnd* %395, %struct.rtsx_chip* %396)
  %398 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %398, i32* %5, align 4
  br label %471

399:                                              ; preds = %381
  %400 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %401 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @DMA_TO_DEVICE, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %417

405:                                              ; preds = %399
  %406 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %407 = load i32, i32* %13, align 4
  %408 = call i64 @ms_get_unused_block(%struct.rtsx_chip* %406, i32 %407)
  store i64 %408, i64* %17, align 8
  %409 = load i64, i64* %17, align 8
  %410 = icmp eq i64 %409, 65535
  br i1 %410, label %411, label %416

411:                                              ; preds = %405
  %412 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %413 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %414 = call i32 @ms_rw_fail(%struct.scsi_cmnd* %412, %struct.rtsx_chip* %413)
  %415 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %415, i32* %5, align 4
  br label %471

416:                                              ; preds = %405
  br label %417

417:                                              ; preds = %416, %399
  %418 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %419 = call i32 @rtsx_dev(%struct.rtsx_chip* %418)
  %420 = load i32, i32* %13, align 4
  %421 = load i64, i64* %16, align 8
  %422 = load i64, i64* %17, align 8
  %423 = call i32 @dev_dbg(i32 %419, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %420, i64 %421, i64 %422)
  store i64 0, i64* %20, align 8
  br label %196

424:                                              ; preds = %328, %196
  %425 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %426 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @DMA_TO_DEVICE, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %467

430:                                              ; preds = %424
  %431 = load i64, i64* %21, align 8
  %432 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %433 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = add nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = icmp slt i64 %431, %436
  br i1 %437, label %438, label %466

438:                                              ; preds = %430
  %439 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %440 = load i64, i64* %16, align 8
  %441 = load i64, i64* %17, align 8
  %442 = load i64, i64* %18, align 8
  %443 = load i64, i64* %21, align 8
  %444 = call i32 @ms_finish_write(%struct.rtsx_chip* %439, i64 %440, i64 %441, i64 %442, i64 %443)
  store i32 %444, i32* %12, align 4
  %445 = load i32, i32* %12, align 4
  %446 = load i32, i32* @STATUS_SUCCESS, align 4
  %447 = icmp ne i32 %445, %446
  br i1 %447, label %448, label %465

448:                                              ; preds = %438
  %449 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %450 = load i32, i32* @MS_CARD, align 4
  %451 = call i32 @detect_card_cd(%struct.rtsx_chip* %449, i32 %450)
  %452 = load i32, i32* @STATUS_SUCCESS, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %454, label %460

454:                                              ; preds = %448
  %455 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %456 = load i32, i32* %11, align 4
  %457 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %458 = call i32 @set_sense_type(%struct.rtsx_chip* %455, i32 %456, i32 %457)
  %459 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %459, i32* %5, align 4
  br label %471

460:                                              ; preds = %448
  %461 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %462 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %463 = call i32 @ms_rw_fail(%struct.scsi_cmnd* %461, %struct.rtsx_chip* %462)
  %464 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %464, i32* %5, align 4
  br label %471

465:                                              ; preds = %438
  br label %466

466:                                              ; preds = %465, %430
  br label %467

467:                                              ; preds = %466, %424
  %468 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %469 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %468, i32 0)
  %470 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %470, i32* %5, align 4
  br label %471

471:                                              ; preds = %467, %460, %454, %411, %394, %369, %270, %264, %182, %162, %156, %134, %97, %42
  %472 = load i32, i32* %5, align 4
  ret i32 %472
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @ms_switch_clock(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_rw_fail(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @ms_build_l2p_tbl(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i64 @ms_get_l2p_tbl(%struct.rtsx_chip*, i32, i64) #1

declare dso_local i64 @ms_get_unused_block(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_prepare_write(%struct.rtsx_chip*, i64, i64, i64, i64) #1

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_read_multiple_pages(%struct.rtsx_chip*, i64, i64, i64, i64, i64*, i32*, i32*) #1

declare dso_local i32 @ms_write_multiple_pages(%struct.rtsx_chip*, i64, i64, i64, i64, i64, i64*, i32*, i32*) #1

declare dso_local i32 @toggle_gpio(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_erase_block(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @ms_set_unused_block(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @ms_set_l2p_tbl(%struct.rtsx_chip*, i32, i64, i64) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @ms_finish_write(%struct.rtsx_chip*, i64, i64, i64, i64) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
