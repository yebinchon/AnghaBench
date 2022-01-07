; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_check_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_check_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, i64, i32*, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* }
%struct.scsi_sense_hdr = type { i32, i32, i32, i32, i32 }

@FAILED = common dso_local global i32 0, align 4
@NEEDS_RETRY = common dso_local global i32 0, align 4
@SCSI_RETURN_NOT_HANDLED = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@scsi_eh_done = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@BLIST_RETRY_ITF = common dso_local global i32 0, align 4
@ADD_TO_MLQUEUE = common dso_local global i32 0, align 4
@BLIST_RETRY_ASC_C1 = common dso_local global i32 0, align 4
@DID_ALLOC_FAILURE = common dso_local global i32 0, align 4
@DID_TARGET_FAILURE = common dso_local global i32 0, align 4
@DID_MEDIUM_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_check_sense(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_sense_hdr, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 3
  %9 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  store %struct.scsi_device* %9, %struct.scsi_device** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = call i32 @scsi_command_normalize_sense(%struct.scsi_cmnd* %10, %struct.scsi_sense_hdr* %5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @FAILED, align 4
  store i32 %14, i32* %2, align 4
  br label %300

15:                                               ; preds = %1
  %16 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %17 = call i32 @scsi_report_sense(%struct.scsi_device* %16, %struct.scsi_sense_hdr* %5)
  %18 = call i64 @scsi_sense_is_deferred(%struct.scsi_sense_hdr* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %21, i32* %2, align 4
  br label %300

22:                                               ; preds = %15
  %23 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)*, i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)** %31, align 8
  %33 = icmp ne i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 5
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)*, i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)** %38, align 8
  %40 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %41 = call i32 %39(%struct.scsi_device* %40, %struct.scsi_sense_hdr* %5)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SCSI_RETURN_NOT_HANDLED, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %300

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %27, %22
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TEST_UNIT_READY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @scsi_eh_done, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @SUCCESS, align 4
  store i32 %63, i32* %2, align 4
  br label %300

64:                                               ; preds = %56, %48
  %65 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 112
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 224
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @SUCCESS, align 4
  store i32 %77, i32* %2, align 4
  br label %300

78:                                               ; preds = %68
  br label %101

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 3
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 11
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 224
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @SUCCESS, align 4
  store i32 %99, i32* %2, align 4
  br label %300

100:                                              ; preds = %90, %83, %79
  br label %101

101:                                              ; preds = %100, %78
  %102 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %298 [
    i32 131, label %104
    i32 130, label %106
    i32 140, label %108
    i32 132, label %146
    i32 129, label %146
    i32 137, label %216
    i32 138, label %230
    i32 128, label %230
    i32 133, label %230
    i32 139, label %230
    i32 134, label %235
    i32 136, label %254
    i32 135, label %268
  ]

104:                                              ; preds = %101
  %105 = load i32, i32* @SUCCESS, align 4
  store i32 %105, i32* %2, align 4
  br label %300

106:                                              ; preds = %101
  %107 = load i32, i32* @SUCCESS, align 4
  store i32 %107, i32* %2, align 4
  br label %300

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 16
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @SUCCESS, align 4
  store i32 %113, i32* %2, align 4
  br label %300

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 68
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %120 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @BLIST_RETRY_ITF, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %126, i32* %2, align 4
  br label %300

127:                                              ; preds = %118, %114
  %128 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 193
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %137 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @BLIST_RETRY_ASC_C1, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %143, i32* %2, align 4
  br label %300

144:                                              ; preds = %135, %131, %127
  %145 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %145, i32* %2, align 4
  br label %300

146:                                              ; preds = %101, %101
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %148 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %147, i32 0, i32 3
  %149 = load %struct.scsi_device*, %struct.scsi_device** %148, align 8
  %150 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 40
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %157, %153
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %163 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %162, i32 0, i32 3
  %164 = load %struct.scsi_device*, %struct.scsi_device** %163, align 8
  %165 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %164, i32 0, i32 4
  store i32 0, i32* %165, align 8
  %166 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %166, i32* %2, align 4
  br label %300

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167, %146
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %170 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %169, i32 0, i32 3
  %171 = load %struct.scsi_device*, %struct.scsi_device** %170, align 8
  %172 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %171, i32 0, i32 3
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 63
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 14
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %186, i32* %2, align 4
  br label %300

187:                                              ; preds = %181, %177, %168
  %188 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 4
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %196, i32* %2, align 4
  br label %300

197:                                              ; preds = %191, %187
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %199 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %198, i32 0, i32 3
  %200 = load %struct.scsi_device*, %struct.scsi_device** %199, align 8
  %201 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 4
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i32, i32* @FAILED, align 4
  store i32 %213, i32* %2, align 4
  br label %300

214:                                              ; preds = %208, %204, %197
  %215 = load i32, i32* @SUCCESS, align 4
  store i32 %215, i32* %2, align 4
  br label %300

216:                                              ; preds = %101
  %217 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 39
  br i1 %219, label %220, label %229

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 7
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %226 = load i32, i32* @DID_ALLOC_FAILURE, align 4
  %227 = call i32 @set_host_byte(%struct.scsi_cmnd* %225, i32 %226)
  %228 = load i32, i32* @SUCCESS, align 4
  store i32 %228, i32* %2, align 4
  br label %300

229:                                              ; preds = %220, %216
  br label %230

230:                                              ; preds = %101, %101, %101, %101, %229
  %231 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %232 = load i32, i32* @DID_TARGET_FAILURE, align 4
  %233 = call i32 @set_host_byte(%struct.scsi_cmnd* %231, i32 %232)
  %234 = load i32, i32* @SUCCESS, align 4
  store i32 %234, i32* %2, align 4
  br label %300

235:                                              ; preds = %101
  %236 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 17
  br i1 %238, label %247, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 19
  br i1 %242, label %247, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 20
  br i1 %246, label %247, label %252

247:                                              ; preds = %243, %239, %235
  %248 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %249 = load i32, i32* @DID_MEDIUM_ERROR, align 4
  %250 = call i32 @set_host_byte(%struct.scsi_cmnd* %248, i32 %249)
  %251 = load i32, i32* @SUCCESS, align 4
  store i32 %251, i32* %2, align 4
  br label %300

252:                                              ; preds = %243
  %253 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %253, i32* %2, align 4
  br label %300

254:                                              ; preds = %101
  %255 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %256 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %255, i32 0, i32 3
  %257 = load %struct.scsi_device*, %struct.scsi_device** %256, align 8
  %258 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %262, i32* %2, align 4
  br label %300

263:                                              ; preds = %254
  %264 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %265 = load i32, i32* @DID_TARGET_FAILURE, align 4
  %266 = call i32 @set_host_byte(%struct.scsi_cmnd* %264, i32 %265)
  br label %267

267:                                              ; preds = %263
  br label %268

268:                                              ; preds = %101, %267
  %269 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 32
  br i1 %271, label %292, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = icmp eq i32 %274, 33
  br i1 %275, label %292, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %278, 34
  br i1 %279, label %292, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 36
  br i1 %283, label %292, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 38
  br i1 %287, label %292, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 39
  br i1 %291, label %292, label %296

292:                                              ; preds = %288, %284, %280, %276, %272, %268
  %293 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %294 = load i32, i32* @DID_TARGET_FAILURE, align 4
  %295 = call i32 @set_host_byte(%struct.scsi_cmnd* %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %288
  %297 = load i32, i32* @SUCCESS, align 4
  store i32 %297, i32* %2, align 4
  br label %300

298:                                              ; preds = %101
  %299 = load i32, i32* @SUCCESS, align 4
  store i32 %299, i32* %2, align 4
  br label %300

300:                                              ; preds = %298, %296, %261, %252, %247, %230, %224, %214, %212, %195, %185, %161, %144, %142, %125, %112, %106, %104, %98, %76, %62, %45, %20, %13
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local i32 @scsi_command_normalize_sense(%struct.scsi_cmnd*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_report_sense(%struct.scsi_device*, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_sense_is_deferred(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
