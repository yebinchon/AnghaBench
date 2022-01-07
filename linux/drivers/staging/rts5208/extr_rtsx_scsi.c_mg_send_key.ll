; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_mg_send_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_mg_send_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i64, %struct.ms_info }
%struct.ms_info = type { i32 }

@RTSX_STAT_SS = common dso_local global i64 0, align 8
@RTSX_STAT_RUN = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_NOT_PRESENT = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_WRITE_PROTECT = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i64 0, align 8
@SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT = common dso_local global i32 0, align 4
@KC_MG_R_PRO = common dso_local global i32 0, align 4
@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@SENSE_TYPE_MG_INCOMPATIBLE_MEDIUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"key_format = 0x%x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @mg_send_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_send_key(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.ms_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 1
  store %struct.ms_info* %11, %struct.ms_info** %6, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %15 = call i32 @rtsx_disable_aspm(%struct.rtsx_chip* %14)
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %17 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %22 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %21)
  %23 = load i64, i64* @RTSX_STAT_SS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %27 = call i32 @rtsx_exit_ss(%struct.rtsx_chip* %26)
  %28 = call i32 @wait_timeout(i32 100)
  br label %29

29:                                               ; preds = %25, %20, %2
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %31 = load i32, i32* @RTSX_STAT_RUN, align 4
  %32 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %30, i32 %31)
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %34 = call i32 @ms_cleanup_work(%struct.rtsx_chip* %33)
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @check_card_ready(%struct.rtsx_chip* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SENSE_TYPE_MEDIA_NOT_PRESENT, align 4
  %43 = call i32 @set_sense_type(%struct.rtsx_chip* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %44, i32* %3, align 4
  br label %289

45:                                               ; preds = %29
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @check_card_wp(%struct.rtsx_chip* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SENSE_TYPE_MEDIA_WRITE_PROTECT, align 4
  %54 = call i32 @set_sense_type(%struct.rtsx_chip* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %55, i32* %3, align 4
  br label %289

56:                                               ; preds = %45
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @get_lun_card(%struct.rtsx_chip* %57, i32 %58)
  %60 = load i64, i64* @MS_CARD, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT, align 4
  %66 = call i32 @set_sense_type(%struct.rtsx_chip* %63, i32 %64, i32 %65)
  %67 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %67, i32* %3, align 4
  br label %289

68:                                               ; preds = %56
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @KC_MG_R_PRO, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %80 = call i32 @set_sense_type(%struct.rtsx_chip* %77, i32 %78, i32 %79)
  %81 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %81, i32* %3, align 4
  br label %289

82:                                               ; preds = %68
  %83 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %84 = call i32 @CHK_MSPRO(%struct.ms_info* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @SENSE_TYPE_MG_INCOMPATIBLE_MEDIUM, align 4
  %90 = call i32 @set_sense_type(%struct.rtsx_chip* %87, i32 %88, i32 %89)
  %91 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %91, i32* %3, align 4
  br label %289

92:                                               ; preds = %82
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 10
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 63
  store i32 %98, i32* %9, align 4
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %100 = call i32 @rtsx_dev(%struct.rtsx_chip* %99)
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %9, align 4
  switch i32 %103, label %279 [
    i32 128, label %104
    i32 131, label %139
    i32 130, label %174
    i32 129, label %209
  ]

104:                                              ; preds = %92
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %106 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %105)
  %107 = icmp eq i32 %106, 12
  br i1 %107, label %108, label %132

108:                                              ; preds = %104
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 9
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 12
  br i1 %121, label %122, label %132

122:                                              ; preds = %115
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %124 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %125 = call i32 @mg_set_leaf_id(%struct.scsi_cmnd* %123, %struct.rtsx_chip* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @STATUS_SUCCESS, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %130, i32* %3, align 4
  br label %289

131:                                              ; preds = %122
  br label %138

132:                                              ; preds = %115, %108, %104
  %133 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %136 = call i32 @set_sense_type(%struct.rtsx_chip* %133, i32 %134, i32 %135)
  %137 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %137, i32* %3, align 4
  br label %289

138:                                              ; preds = %131
  br label %285

139:                                              ; preds = %92
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %141 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %140)
  %142 = icmp eq i32 %141, 12
  br i1 %142, label %143, label %167

143:                                              ; preds = %139
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %145 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %143
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %152 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 9
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 12
  br i1 %156, label %157, label %167

157:                                              ; preds = %150
  %158 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %159 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %160 = call i32 @mg_chg(%struct.scsi_cmnd* %158, %struct.rtsx_chip* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @STATUS_SUCCESS, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %165, i32* %3, align 4
  br label %289

166:                                              ; preds = %157
  br label %173

167:                                              ; preds = %150, %143, %139
  %168 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %171 = call i32 @set_sense_type(%struct.rtsx_chip* %168, i32 %169, i32 %170)
  %172 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %172, i32* %3, align 4
  br label %289

173:                                              ; preds = %166
  br label %285

174:                                              ; preds = %92
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %176 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %175)
  %177 = icmp eq i32 %176, 12
  br i1 %177, label %178, label %202

178:                                              ; preds = %174
  %179 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %180 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %202

185:                                              ; preds = %178
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %187 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 9
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 12
  br i1 %191, label %192, label %202

192:                                              ; preds = %185
  %193 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %194 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %195 = call i32 @mg_rsp(%struct.scsi_cmnd* %193, %struct.rtsx_chip* %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @STATUS_SUCCESS, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %200, i32* %3, align 4
  br label %289

201:                                              ; preds = %192
  br label %208

202:                                              ; preds = %185, %178, %174
  %203 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %206 = call i32 @set_sense_type(%struct.rtsx_chip* %203, i32 %204, i32 %205)
  %207 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %207, i32* %3, align 4
  br label %289

208:                                              ; preds = %201
  br label %285

209:                                              ; preds = %92
  %210 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %211 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 5
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ms_info*, %struct.ms_info** %6, align 8
  %216 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 4
  %217 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %218 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %217)
  %219 = icmp eq i32 %218, 1028
  br i1 %219, label %220, label %272

220:                                              ; preds = %209
  %221 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %222 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 8
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 4
  br i1 %226, label %227, label %272

227:                                              ; preds = %220
  %228 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %229 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 9
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 4
  br i1 %233, label %234, label %272

234:                                              ; preds = %227
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %236 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %272

241:                                              ; preds = %234
  %242 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %243 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 3
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %241
  %249 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %250 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 4
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %272

255:                                              ; preds = %248
  %256 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %257 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 5
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %260, 32
  br i1 %261, label %262, label %272

262:                                              ; preds = %255
  %263 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %264 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %265 = call i32 @mg_set_ICV(%struct.scsi_cmnd* %263, %struct.rtsx_chip* %264)
  store i32 %265, i32* %8, align 4
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @STATUS_SUCCESS, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %262
  %270 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %270, i32* %3, align 4
  br label %289

271:                                              ; preds = %262
  br label %278

272:                                              ; preds = %255, %248, %241, %234, %227, %220, %209
  %273 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %276 = call i32 @set_sense_type(%struct.rtsx_chip* %273, i32 %274, i32 %275)
  %277 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %277, i32* %3, align 4
  br label %289

278:                                              ; preds = %271
  br label %285

279:                                              ; preds = %92
  %280 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %283 = call i32 @set_sense_type(%struct.rtsx_chip* %280, i32 %281, i32 %282)
  %284 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %284, i32* %3, align 4
  br label %289

285:                                              ; preds = %278, %208, %173, %138
  %286 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %287 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %286, i32 0)
  %288 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %285, %279, %272, %269, %202, %199, %167, %164, %132, %129, %86, %76, %62, %50, %39
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @rtsx_disable_aspm(%struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_exit_ss(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_cleanup_work(%struct.rtsx_chip*) #1

declare dso_local i32 @check_card_ready(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i64 @check_card_wp(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @get_lun_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @CHK_MSPRO(%struct.ms_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @mg_set_leaf_id(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @mg_chg(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @mg_rsp(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @mg_set_ICV(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
