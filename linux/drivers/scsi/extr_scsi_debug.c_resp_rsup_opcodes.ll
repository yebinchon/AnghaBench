; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_rsup_opcodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_rsup_opcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcode_info_t = type { i32, i32, i32, i32, i32*, %struct.opcode_info_t* }
%struct.scsi_cmnd = type { i32* }
%struct.sdebug_dev_info = type { i32 }

@SDEB_IN_CDB = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@INSUFF_RES_ASC = common dso_local global i32 0, align 4
@INSUFF_RES_ASCQ = common dso_local global i32 0, align 4
@opcode_info_arr = common dso_local global %struct.opcode_info_t* null, align 8
@F_INV_OP = common dso_local global i32 0, align 4
@FF_SA = common dso_local global i32 0, align 4
@opcode_ind_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_rsup_opcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_rsup_opcodes(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca %struct.opcode_info_t*, align 8
  %23 = alloca %struct.opcode_info_t*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %25, align 8
  %29 = load i32*, i32** %25, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 128
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %25, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 7
  store i32 %40, i32* %7, align 4
  %41 = load i32*, i32** %25, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load i32*, i32** %25, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = call i32 @get_unaligned_be16(i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %25, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = call i32 @get_unaligned_be32(i32* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %55, label %52

52:                                               ; preds = %2
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 65535
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %2
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %57 = load i32, i32* @SDEB_IN_CDB, align 4
  %58 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %56, i32 %57, i32 6, i32 -1)
  %59 = load i32, i32* @check_condition_result, align 4
  store i32 %59, i32* %3, align 4
  br label %552

60:                                               ; preds = %52
  %61 = load i32, i32* %13, align 4
  %62 = icmp sgt i32 %61, 8192
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 8192, i32* %14, align 4
  br label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 256
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 64
  br label %73

73:                                               ; preds = %70, %69
  %74 = phi i32 [ 320, %69 ], [ %72, %70 ]
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call i32* @kzalloc(i32 %74, i32 %75)
  store i32* %76, i32** %24, align 8
  %77 = load i32*, i32** %24, align 8
  %78 = icmp eq i32* null, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %81 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %82 = load i32, i32* @INSUFF_RES_ASC, align 4
  %83 = load i32, i32* @INSUFF_RES_ASCQ, align 4
  %84 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* @check_condition_result, align 4
  store i32 %85, i32* %3, align 4
  br label %552

86:                                               ; preds = %73
  %87 = load i32, i32* %7, align 4
  switch i32 %87, label %519 [
    i32 0, label %88
    i32 1, label %307
    i32 2, label %307
    i32 3, label %307
  ]

88:                                               ; preds = %86
  store i32 0, i32* %19, align 4
  %89 = load %struct.opcode_info_t*, %struct.opcode_info_t** @opcode_info_arr, align 8
  store %struct.opcode_info_t* %89, %struct.opcode_info_t** %22, align 8
  br label %90

90:                                               ; preds = %110, %88
  %91 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %92 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 255
  br i1 %94, label %95, label %113

95:                                               ; preds = %90
  %96 = load i32, i32* @F_INV_OP, align 4
  %97 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %98 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %110

103:                                              ; preds = %95
  %104 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %105 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %103, %102
  %111 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %112 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %111, i32 1
  store %struct.opcode_info_t* %112, %struct.opcode_info_t** %22, align 8
  br label %90

113:                                              ; preds = %90
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 20, i32 8
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %20, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32*, i32** %24, align 8
  %122 = call i32 @put_unaligned_be32(i32 %120, i32* %121)
  store i32 4, i32* %16, align 4
  %123 = load %struct.opcode_info_t*, %struct.opcode_info_t** @opcode_info_arr, align 8
  store %struct.opcode_info_t* %123, %struct.opcode_info_t** %22, align 8
  br label %124

124:                                              ; preds = %303, %113
  %125 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %126 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 255
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %130, %131
  br label %133

133:                                              ; preds = %129, %124
  %134 = phi i1 [ false, %124 ], [ %132, %129 ]
  br i1 %134, label %135, label %306

135:                                              ; preds = %133
  %136 = load i32, i32* @F_INV_OP, align 4
  %137 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %138 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %136, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %303

143:                                              ; preds = %135
  %144 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %145 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %21, align 4
  %147 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %148 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %24, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %149, i32* %153, align 4
  %154 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %155 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %24, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = call i32 @put_unaligned_be16(i32 %156, i32* %161)
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %143
  %166 = load i32*, i32** %24, align 8
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %167, 5
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, 2
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %165, %143
  %174 = load i32, i32* @FF_SA, align 4
  %175 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %176 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = load i32*, i32** %24, align 8
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 5
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, 1
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %180, %173
  %189 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %190 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %24, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = getelementptr inbounds i32, i32* %197, i64 6
  %199 = call i32 @put_unaligned_be16(i32 %193, i32* %198)
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %188
  %203 = load i32*, i32** %24, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = getelementptr inbounds i32, i32* %206, i64 8
  %208 = call i32 @put_unaligned_be16(i32 10, i32* %207)
  br label %209

209:                                              ; preds = %202, %188
  %210 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  store %struct.opcode_info_t* %210, %struct.opcode_info_t** %23, align 8
  store i32 0, i32* %15, align 4
  %211 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %212 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %211, i32 0, i32 5
  %213 = load %struct.opcode_info_t*, %struct.opcode_info_t** %212, align 8
  store %struct.opcode_info_t* %213, %struct.opcode_info_t** %22, align 8
  br label %214

214:                                              ; preds = %293, %209
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %21, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %298

218:                                              ; preds = %214
  %219 = load i32, i32* @F_INV_OP, align 4
  %220 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %221 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %219, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %293

226:                                              ; preds = %218
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %16, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %16, align 4
  %230 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %231 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32*, i32** %24, align 8
  %234 = load i32, i32* %16, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %232, i32* %236, align 4
  %237 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %238 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %24, align 8
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  %245 = call i32 @put_unaligned_be16(i32 %239, i32* %244)
  %246 = load i32, i32* %6, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %226
  %249 = load i32*, i32** %24, align 8
  %250 = load i32, i32* %16, align 4
  %251 = add nsw i32 %250, 5
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, 2
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %248, %226
  %257 = load i32, i32* @FF_SA, align 4
  %258 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %259 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %257, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %256
  %264 = load i32*, i32** %24, align 8
  %265 = load i32, i32* %16, align 4
  %266 = add nsw i32 %265, 5
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, 1
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %263, %256
  %272 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %273 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %272, i32 0, i32 4
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %24, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = getelementptr inbounds i32, i32* %280, i64 6
  %282 = call i32 @put_unaligned_be16(i32 %276, i32* %281)
  %283 = load i32, i32* %6, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %271
  %286 = load i32*, i32** %24, align 8
  %287 = load i32, i32* %16, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = getelementptr inbounds i32, i32* %289, i64 8
  %291 = call i32 @put_unaligned_be16(i32 10, i32* %290)
  br label %292

292:                                              ; preds = %285, %271
  br label %293

293:                                              ; preds = %292, %225
  %294 = load i32, i32* %15, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %15, align 4
  %296 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %297 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %296, i32 1
  store %struct.opcode_info_t* %297, %struct.opcode_info_t** %22, align 8
  br label %214

298:                                              ; preds = %214
  %299 = load %struct.opcode_info_t*, %struct.opcode_info_t** %23, align 8
  store %struct.opcode_info_t* %299, %struct.opcode_info_t** %22, align 8
  %300 = load i32, i32* %20, align 4
  %301 = load i32, i32* %16, align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* %16, align 4
  br label %303

303:                                              ; preds = %298, %142
  %304 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %305 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %304, i32 1
  store %struct.opcode_info_t* %305, %struct.opcode_info_t** %22, align 8
  br label %124

306:                                              ; preds = %133
  br label %526

307:                                              ; preds = %86, %86, %86
  %308 = load i32*, i32** @opcode_ind_arr, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  store i32 %312, i32* %9, align 4
  %313 = load %struct.opcode_info_t*, %struct.opcode_info_t** @opcode_info_arr, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %313, i64 %315
  store %struct.opcode_info_t* %316, %struct.opcode_info_t** %22, align 8
  %317 = load i32, i32* @F_INV_OP, align 4
  %318 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %319 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = and i32 %317, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %307
  store i32 1, i32* %10, align 4
  store i32 4, i32* %16, align 4
  br label %499

324:                                              ; preds = %307
  %325 = load i32, i32* %7, align 4
  %326 = icmp eq i32 1, %325
  br i1 %326, label %327, label %342

327:                                              ; preds = %324
  %328 = load i32, i32* @FF_SA, align 4
  %329 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %330 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %328, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %327
  %335 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %336 = load i32, i32* @SDEB_IN_CDB, align 4
  %337 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %335, i32 %336, i32 2, i32 2)
  %338 = load i32*, i32** %24, align 8
  %339 = call i32 @kfree(i32* %338)
  %340 = load i32, i32* @check_condition_result, align 4
  store i32 %340, i32* %3, align 4
  br label %552

341:                                              ; preds = %327
  store i32 0, i32* %11, align 4
  br label %360

342:                                              ; preds = %324
  %343 = load i32, i32* %7, align 4
  %344 = icmp eq i32 2, %343
  br i1 %344, label %345, label %359

345:                                              ; preds = %342
  %346 = load i32, i32* @FF_SA, align 4
  %347 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %348 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = and i32 %346, %349
  %351 = icmp eq i32 0, %350
  br i1 %351, label %352, label %359

352:                                              ; preds = %345
  %353 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %354 = load i32, i32* @SDEB_IN_CDB, align 4
  %355 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %353, i32 %354, i32 4, i32 -1)
  %356 = load i32*, i32** %24, align 8
  %357 = call i32 @kfree(i32* %356)
  %358 = load i32, i32* @check_condition_result, align 4
  store i32 %358, i32* %3, align 4
  br label %552

359:                                              ; preds = %345, %342
  br label %360

360:                                              ; preds = %359, %341
  %361 = load i32, i32* @FF_SA, align 4
  %362 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %363 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %361, %364
  %366 = icmp eq i32 0, %365
  br i1 %366, label %367, label %374

367:                                              ; preds = %360
  %368 = load i32, i32* %8, align 4
  %369 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %370 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = icmp eq i32 %368, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %367
  store i32 3, i32* %10, align 4
  br label %450

374:                                              ; preds = %367, %360
  %375 = load i32, i32* @FF_SA, align 4
  %376 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %377 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = and i32 %375, %378
  %380 = icmp eq i32 0, %379
  br i1 %380, label %381, label %411

381:                                              ; preds = %374
  %382 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %383 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  store i32 %384, i32* %21, align 4
  store i32 0, i32* %15, align 4
  %385 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %386 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %385, i32 0, i32 5
  %387 = load %struct.opcode_info_t*, %struct.opcode_info_t** %386, align 8
  store %struct.opcode_info_t* %387, %struct.opcode_info_t** %22, align 8
  br label %388

388:                                              ; preds = %400, %381
  %389 = load i32, i32* %15, align 4
  %390 = load i32, i32* %21, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %405

392:                                              ; preds = %388
  %393 = load i32, i32* %8, align 4
  %394 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %395 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = icmp eq i32 %393, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %392
  br label %405

399:                                              ; preds = %392
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %15, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %15, align 4
  %403 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %404 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %403, i32 1
  store %struct.opcode_info_t* %404, %struct.opcode_info_t** %22, align 8
  br label %388

405:                                              ; preds = %398, %388
  %406 = load i32, i32* %15, align 4
  %407 = load i32, i32* %21, align 4
  %408 = icmp sge i32 %406, %407
  %409 = zext i1 %408 to i64
  %410 = select i1 %408, i32 1, i32 3
  store i32 %410, i32* %10, align 4
  br label %449

411:                                              ; preds = %374
  %412 = load i32, i32* %11, align 4
  %413 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %414 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = icmp ne i32 %412, %415
  br i1 %416, label %417, label %447

417:                                              ; preds = %411
  %418 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %419 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  store i32 %420, i32* %21, align 4
  store i32 0, i32* %15, align 4
  %421 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %422 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %421, i32 0, i32 5
  %423 = load %struct.opcode_info_t*, %struct.opcode_info_t** %422, align 8
  store %struct.opcode_info_t* %423, %struct.opcode_info_t** %22, align 8
  br label %424

424:                                              ; preds = %436, %417
  %425 = load i32, i32* %15, align 4
  %426 = load i32, i32* %21, align 4
  %427 = icmp slt i32 %425, %426
  br i1 %427, label %428, label %441

428:                                              ; preds = %424
  %429 = load i32, i32* %11, align 4
  %430 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %431 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = icmp eq i32 %429, %432
  br i1 %433, label %434, label %435

434:                                              ; preds = %428
  br label %441

435:                                              ; preds = %428
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %15, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %15, align 4
  %439 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %440 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %439, i32 1
  store %struct.opcode_info_t* %440, %struct.opcode_info_t** %22, align 8
  br label %424

441:                                              ; preds = %434, %424
  %442 = load i32, i32* %15, align 4
  %443 = load i32, i32* %21, align 4
  %444 = icmp sge i32 %442, %443
  %445 = zext i1 %444 to i64
  %446 = select i1 %444, i32 1, i32 3
  store i32 %446, i32* %10, align 4
  br label %448

447:                                              ; preds = %411
  store i32 3, i32* %10, align 4
  br label %448

448:                                              ; preds = %447, %441
  br label %449

449:                                              ; preds = %448, %405
  br label %450

450:                                              ; preds = %449, %373
  %451 = load i32, i32* %10, align 4
  %452 = icmp eq i32 3, %451
  br i1 %452, label %453, label %497

453:                                              ; preds = %450
  %454 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %455 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %454, i32 0, i32 4
  %456 = load i32*, i32** %455, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 0
  %458 = load i32, i32* %457, align 4
  store i32 %458, i32* %12, align 4
  %459 = load i32, i32* %12, align 4
  %460 = load i32*, i32** %24, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 2
  %462 = call i32 @put_unaligned_be16(i32 %459, i32* %461)
  %463 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %464 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = load i32*, i32** %24, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 4
  store i32 %465, i32* %467, align 4
  store i32 1, i32* %15, align 4
  br label %468

468:                                              ; preds = %491, %453
  %469 = load i32, i32* %15, align 4
  %470 = load i32, i32* %12, align 4
  %471 = icmp slt i32 %469, %470
  br i1 %471, label %472, label %494

472:                                              ; preds = %468
  %473 = load i32, i32* %15, align 4
  %474 = icmp slt i32 %473, 16
  br i1 %474, label %475, label %483

475:                                              ; preds = %472
  %476 = load %struct.opcode_info_t*, %struct.opcode_info_t** %22, align 8
  %477 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %476, i32 0, i32 4
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* %15, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  %482 = load i32, i32* %481, align 4
  br label %484

483:                                              ; preds = %472
  br label %484

484:                                              ; preds = %483, %475
  %485 = phi i32 [ %482, %475 ], [ 255, %483 ]
  %486 = load i32*, i32** %24, align 8
  %487 = load i32, i32* %15, align 4
  %488 = add nsw i32 4, %487
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %486, i64 %489
  store i32 %485, i32* %490, align 4
  br label %491

491:                                              ; preds = %484
  %492 = load i32, i32* %15, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %15, align 4
  br label %468

494:                                              ; preds = %468
  %495 = load i32, i32* %12, align 4
  %496 = add nsw i32 4, %495
  store i32 %496, i32* %16, align 4
  br label %498

497:                                              ; preds = %450
  store i32 4, i32* %16, align 4
  br label %498

498:                                              ; preds = %497, %494
  br label %499

499:                                              ; preds = %498, %323
  %500 = load i32, i32* %6, align 4
  %501 = icmp ne i32 %500, 0
  %502 = zext i1 %501 to i64
  %503 = select i1 %501, i32 128, i32 0
  %504 = load i32, i32* %10, align 4
  %505 = or i32 %503, %504
  %506 = load i32*, i32** %24, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 1
  store i32 %505, i32* %507, align 4
  %508 = load i32, i32* %6, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %518

510:                                              ; preds = %499
  %511 = load i32*, i32** %24, align 8
  %512 = load i32, i32* %16, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = call i32 @put_unaligned_be16(i32 10, i32* %514)
  %516 = load i32, i32* %16, align 4
  %517 = add nsw i32 %516, 12
  store i32 %517, i32* %16, align 4
  br label %518

518:                                              ; preds = %510, %499
  br label %526

519:                                              ; preds = %86
  %520 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %521 = load i32, i32* @SDEB_IN_CDB, align 4
  %522 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %520, i32 %521, i32 2, i32 2)
  %523 = load i32*, i32** %24, align 8
  %524 = call i32 @kfree(i32* %523)
  %525 = load i32, i32* @check_condition_result, align 4
  store i32 %525, i32* %3, align 4
  br label %552

526:                                              ; preds = %518, %306
  %527 = load i32, i32* %16, align 4
  %528 = load i32, i32* %14, align 4
  %529 = icmp slt i32 %527, %528
  br i1 %529, label %530, label %532

530:                                              ; preds = %526
  %531 = load i32, i32* %16, align 4
  br label %534

532:                                              ; preds = %526
  %533 = load i32, i32* %14, align 4
  br label %534

534:                                              ; preds = %532, %530
  %535 = phi i32 [ %531, %530 ], [ %533, %532 ]
  store i32 %535, i32* %16, align 4
  %536 = load i32, i32* %16, align 4
  %537 = load i32, i32* %13, align 4
  %538 = icmp slt i32 %536, %537
  br i1 %538, label %539, label %541

539:                                              ; preds = %534
  %540 = load i32, i32* %16, align 4
  br label %543

541:                                              ; preds = %534
  %542 = load i32, i32* %13, align 4
  br label %543

543:                                              ; preds = %541, %539
  %544 = phi i32 [ %540, %539 ], [ %542, %541 ]
  store i32 %544, i32* %17, align 4
  %545 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %546 = load i32*, i32** %24, align 8
  %547 = load i32, i32* %17, align 4
  %548 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %545, i32* %546, i32 %547)
  store i32 %548, i32* %18, align 4
  %549 = load i32*, i32** %24, align 8
  %550 = call i32 @kfree(i32* %549)
  %551 = load i32, i32* %18, align 4
  store i32 %551, i32* %3, align 4
  br label %552

552:                                              ; preds = %543, %519, %352, %334, %79, %55
  %553 = load i32, i32* %3, align 4
  ret i32 %553
}

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @mk_sense_invalid_fld(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mk_sense_buffer(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
