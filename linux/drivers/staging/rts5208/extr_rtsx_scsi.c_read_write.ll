; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_read_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32*, i64 }
%struct.rtsx_chip = type { i32*, i32, i32*, i32, i64, %struct.sd_info }
%struct.sd_info = type { i32, i64 }

@RTSX_STAT_SS = common dso_local global i64 0, align 8
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_CHANGE = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i32 0, align 4
@WRITE_6 = common dso_local global i32 0, align 4
@VENDOR_CMND = common dso_local global i32 0, align 4
@SCSI_APP_CMD = common dso_local global i32 0, align 4
@PP_READ10 = common dso_local global i32 0, align 4
@PP_WRITE10 = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_LBA_OVER_RANGE = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"read/write fail three times in succession\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_WRITE_ERR = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Write protected card!\0A\00", align 1
@SENSE_TYPE_MEDIA_WRITE_PROTECT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i64 0, align 8
@SD_LOCKED = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_READ_FORBIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @read_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_write(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %13 = call i32 @rtsx_disable_aspm(%struct.rtsx_chip* %12)
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %15 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %20 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %19)
  %21 = load i64, i64* @RTSX_STAT_SS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %25 = call i32 @rtsx_exit_ss(%struct.rtsx_chip* %24)
  %26 = call i32 @wait_timeout(i32 100)
  br label %27

27:                                               ; preds = %23, %18, %2
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %29 = load i32, i32* @RTSX_STAT_RUN, align 4
  %30 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %28, i32 %29)
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @check_card_ready(%struct.rtsx_chip* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @get_card_size(%struct.rtsx_chip* %36, i32 %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35, %27
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %44 = call i32 @set_sense_type(%struct.rtsx_chip* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %45, i32* %3, align 4
  br label %395

46:                                               ; preds = %35
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %48 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @CHK_BIT(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %46
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %55 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @SET_BIT(i32 %56, i32 %57)
  %59 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @SENSE_TYPE_MEDIA_CHANGE, align 4
  %62 = call i32 @set_sense_type(%struct.rtsx_chip* %59, i32 %60, i32 %61)
  %63 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %63, i32* %3, align 4
  br label %395

64:                                               ; preds = %46
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @READ_10, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @WRITE_10, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %119

80:                                               ; preds = %72, %64
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 24
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 16
  %93 = or i32 %86, %92
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 8
  %100 = or i32 %93, %99
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 5
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %100, %105
  store i32 %106, i32* %8, align 4
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 7
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 8
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %112, %117
  store i32 %118, i32* %9, align 4
  br label %244

119:                                              ; preds = %72
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %121 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @READ_6, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %119
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @WRITE_6, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %165

135:                                              ; preds = %127, %119
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %137 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 31
  %142 = shl i32 %141, 16
  %143 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %144 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 8
  %149 = or i32 %142, %148
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %151 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %149, %154
  store i32 %155, i32* %8, align 4
  %156 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %157 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 4
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %135
  store i32 256, i32* %9, align 4
  br label %164

164:                                              ; preds = %163, %135
  br label %243

165:                                              ; preds = %127
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %167 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @VENDOR_CMND, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %236

173:                                              ; preds = %165
  %174 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %175 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @SCSI_APP_CMD, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %236

181:                                              ; preds = %173
  %182 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %183 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @PP_READ10, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %197, label %189

189:                                              ; preds = %181
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %191 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @PP_WRITE10, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %236

197:                                              ; preds = %189, %181
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %199 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 4
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %202, 24
  %204 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %205 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 5
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 16
  %210 = or i32 %203, %209
  %211 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %212 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 6
  %215 = load i32, i32* %214, align 4
  %216 = shl i32 %215, 8
  %217 = or i32 %210, %216
  %218 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %219 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 7
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %217, %222
  store i32 %223, i32* %8, align 4
  %224 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %225 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 9
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %228, 8
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 10
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %229, %234
  store i32 %235, i32* %9, align 4
  br label %242

236:                                              ; preds = %189, %173, %165
  %237 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %240 = call i32 @set_sense_type(%struct.rtsx_chip* %237, i32 %238, i32 %239)
  %241 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %241, i32* %3, align 4
  br label %395

242:                                              ; preds = %197
  br label %243

243:                                              ; preds = %242, %164
  br label %244

244:                                              ; preds = %243, %80
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @get_card_size(%struct.rtsx_chip* %246, i32 %247)
  %249 = icmp sgt i32 %245, %248
  br i1 %249, label %258, label %250

250:                                              ; preds = %244
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %251, %252
  %254 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %255 = load i32, i32* %6, align 4
  %256 = call i32 @get_card_size(%struct.rtsx_chip* %254, i32 %255)
  %257 = icmp sgt i32 %253, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %250, %244
  %259 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* @SENSE_TYPE_MEDIA_LBA_OVER_RANGE, align 4
  %262 = call i32 @set_sense_type(%struct.rtsx_chip* %259, i32 %260, i32 %261)
  %263 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %263, i32* %3, align 4
  br label %395

264:                                              ; preds = %250
  %265 = load i32, i32* %9, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  %268 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %269 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %268, i32 0)
  %270 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %270, i32* %3, align 4
  br label %395

271:                                              ; preds = %264
  %272 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %273 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %278, 3
  br i1 %279, label %280, label %301

280:                                              ; preds = %271
  %281 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %282 = call i32 @rtsx_dev(%struct.rtsx_chip* %281)
  %283 = call i32 @dev_dbg(i32 %282, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %284 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %285 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %280
  %290 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* @SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR, align 4
  %293 = call i32 @set_sense_type(%struct.rtsx_chip* %290, i32 %291, i32 %292)
  br label %299

294:                                              ; preds = %280
  %295 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %296 = load i32, i32* %6, align 4
  %297 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_ERR, align 4
  %298 = call i32 @set_sense_type(%struct.rtsx_chip* %295, i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %294, %289
  %300 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %300, i32* %3, align 4
  br label %395

301:                                              ; preds = %271
  %302 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %303 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @DMA_TO_DEVICE, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %322

307:                                              ; preds = %301
  %308 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %309 = load i32, i32* %6, align 4
  %310 = call i64 @check_card_wp(%struct.rtsx_chip* %308, i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %307
  %313 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %314 = call i32 @rtsx_dev(%struct.rtsx_chip* %313)
  %315 = call i32 @dev_dbg(i32 %314, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %316 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %317 = load i32, i32* %6, align 4
  %318 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_PROTECT, align 4
  %319 = call i32 @set_sense_type(%struct.rtsx_chip* %316, i32 %317, i32 %318)
  %320 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %320, i32* %3, align 4
  br label %395

321:                                              ; preds = %307
  br label %322

322:                                              ; preds = %321, %301
  %323 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %324 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %325 = load i32, i32* %8, align 4
  %326 = load i32, i32* %9, align 4
  %327 = call i32 @card_rw(%struct.scsi_cmnd* %323, %struct.rtsx_chip* %324, i32 %325, i32 %326)
  store i32 %327, i32* %7, align 4
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* @STATUS_SUCCESS, align 4
  %330 = icmp ne i32 %328, %329
  br i1 %330, label %331, label %382

331:                                              ; preds = %322
  %332 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %333 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %336 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %6, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %334, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %355

344:                                              ; preds = %331
  %345 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %346 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %6, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  store i32 0, i32* %350, align 4
  %351 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %352 = load i32, i32* %6, align 4
  %353 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %354 = call i32 @set_sense_type(%struct.rtsx_chip* %351, i32 %352, i32 %353)
  br label %380

355:                                              ; preds = %331
  %356 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %357 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %6, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 4
  %364 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %365 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %374

369:                                              ; preds = %355
  %370 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %371 = load i32, i32* %6, align 4
  %372 = load i32, i32* @SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR, align 4
  %373 = call i32 @set_sense_type(%struct.rtsx_chip* %370, i32 %371, i32 %372)
  br label %379

374:                                              ; preds = %355
  %375 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %376 = load i32, i32* %6, align 4
  %377 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_ERR, align 4
  %378 = call i32 @set_sense_type(%struct.rtsx_chip* %375, i32 %376, i32 %377)
  br label %379

379:                                              ; preds = %374, %369
  br label %380

380:                                              ; preds = %379, %344
  %381 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %381, i32* %7, align 4
  br label %393

382:                                              ; preds = %322
  %383 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %384 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %383, i32 0, i32 0
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %6, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  store i32 0, i32* %388, align 4
  %389 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %389, i32* %7, align 4
  br label %390

390:                                              ; preds = %382
  %391 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %392 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %391, i32 0)
  br label %393

393:                                              ; preds = %390, %380
  %394 = load i32, i32* %7, align 4
  store i32 %394, i32* %3, align 4
  br label %395

395:                                              ; preds = %393, %312, %299, %267, %258, %236, %53, %40
  %396 = load i32, i32* %3, align 4
  ret i32 %396
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @rtsx_disable_aspm(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exit_ss(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @get_card_size(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @CHK_BIT(i32, i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i64 @check_card_wp(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @card_rw(%struct.scsi_cmnd*, %struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
