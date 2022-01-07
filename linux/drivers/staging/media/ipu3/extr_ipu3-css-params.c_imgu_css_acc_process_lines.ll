; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_acc_process_lines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_acc_process_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_lines = type { i16, i16, i16, i16, i16, i16, i16, i64 }
%struct.imgu_abi_acc_operation = type { i8*, i32 }
%struct.imgu_abi_acc_process_lines_cmd_data = type { i16, i8 }
%struct.imgu_abi_acc_transfer_op_data = type { i8 }

@EINVAL = common dso_local global i32 0, align 4
@IMGU_ABI_AF_MAX_OPERATIONS = common dso_local global i16 0, align 2
@IMGU_ABI_ACC_OPTYPE_TRANSFER_DATA = common dso_local global i32 0, align 4
@IMGU_ABI_ACC_OP_END_OF_OPS = common dso_local global i8* null, align 8
@IMGU_ABI_ACC_OP_END_OF_ACK = common dso_local global i8* null, align 8
@IMGU_ABI_ACC_OP_IDLE = common dso_local global i8* null, align 8
@IMGU_ABI_ACC_OPTYPE_PROCESS_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process_lines*, %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_transfer_op_data*)* @imgu_css_acc_process_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_css_acc_process_lines(%struct.process_lines* %0, %struct.imgu_abi_acc_operation* %1, %struct.imgu_abi_acc_process_lines_cmd_data* %2, %struct.imgu_abi_acc_transfer_op_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.process_lines*, align 8
  %7 = alloca %struct.imgu_abi_acc_operation*, align 8
  %8 = alloca %struct.imgu_abi_acc_process_lines_cmd_data*, align 8
  %9 = alloca %struct.imgu_abi_acc_transfer_op_data*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  store %struct.process_lines* %0, %struct.process_lines** %6, align 8
  store %struct.imgu_abi_acc_operation* %1, %struct.imgu_abi_acc_operation** %7, align 8
  store %struct.imgu_abi_acc_process_lines_cmd_data* %2, %struct.imgu_abi_acc_process_lines_cmd_data** %8, align 8
  store %struct.imgu_abi_acc_transfer_op_data* %3, %struct.imgu_abi_acc_transfer_op_data** %9, align 8
  store i16 0, i16* %10, align 2
  store i16 0, i16* %11, align 2
  store i16 0, i16* %12, align 2
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %22 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %23 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %27 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %31 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %30, i32 0, i32 2
  %32 = load i16, i16* %31, align 4
  %33 = zext i16 %32 to i32
  %34 = mul nsw i32 %29, %33
  %35 = add nsw i32 %25, %34
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %15, align 2
  %37 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %38 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %37, i32 0, i32 3
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %42 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %41, i32 0, i32 2
  %43 = load i16, i16* %42, align 4
  %44 = zext i16 %43 to i32
  %45 = mul nsw i32 %40, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %16, align 2
  %47 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %48 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %47, i32 0, i32 3
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %422

55:                                               ; preds = %4
  %56 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %57 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i16, i16* %15, align 2
  %62 = zext i16 %61 to i32
  %63 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %64 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %63, i32 0, i32 4
  %65 = load i16, i16* %64, align 8
  %66 = zext i16 %65 to i32
  %67 = icmp sgt i32 %62, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %422

71:                                               ; preds = %60, %55
  %72 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %73 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %72, i32 0, i32 1
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %77 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %76, i32 0, i32 3
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = sdiv i32 %75, %79
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %21, align 2
  %82 = load i16, i16* %21, align 2
  %83 = zext i16 %82 to i32
  %84 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %85 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %84, i32 0, i32 3
  %86 = load i16, i16* %85, align 2
  %87 = zext i16 %86 to i32
  %88 = mul nsw i32 %83, %87
  %89 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %90 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %89, i32 0, i32 1
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %71
  %95 = load i16, i16* %21, align 2
  %96 = add i16 %95, 1
  store i16 %96, i16* %21, align 2
  br label %97

97:                                               ; preds = %94, %71
  %98 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %99 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %98, i32 0, i32 5
  %100 = load i16, i16* %99, align 2
  %101 = zext i16 %100 to i32
  %102 = load i16, i16* @IMGU_ABI_AF_MAX_OPERATIONS, align 2
  %103 = zext i16 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %97
  %106 = load i16, i16* %16, align 2
  %107 = zext i16 %106 to i32
  %108 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %109 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %108, i32 0, i32 0
  %110 = load i16, i16* %109, align 8
  %111 = zext i16 %110 to i32
  %112 = add nsw i32 %107, %111
  %113 = add nsw i32 %112, 2
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %18, align 2
  %115 = load i16, i16* %15, align 2
  %116 = zext i16 %115 to i32
  %117 = load i16, i16* %18, align 2
  %118 = zext i16 %117 to i32
  %119 = sub nsw i32 %116, %118
  %120 = load i16, i16* %21, align 2
  %121 = zext i16 %120 to i32
  %122 = sub nsw i32 %121, 2
  %123 = load i16, i16* %16, align 2
  %124 = zext i16 %123 to i32
  %125 = mul nsw i32 %122, %124
  %126 = sub nsw i32 %119, %125
  %127 = add nsw i32 %126, 4
  %128 = trunc i32 %127 to i16
  store i16 %128, i16* %19, align 2
  %129 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %130 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %129, i32 0, i32 4
  %131 = load i16, i16* %130, align 8
  %132 = zext i16 %131 to i32
  %133 = load i16, i16* %15, align 2
  %134 = zext i16 %133 to i32
  %135 = sub nsw i32 %132, %134
  %136 = sub nsw i32 %135, 4
  store i32 %136, i32* %17, align 4
  br label %166

137:                                              ; preds = %97
  %138 = load i16, i16* %16, align 2
  %139 = zext i16 %138 to i32
  %140 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %141 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %140, i32 0, i32 0
  %142 = load i16, i16* %141, align 8
  %143 = zext i16 %142 to i32
  %144 = add nsw i32 %139, %143
  %145 = trunc i32 %144 to i16
  store i16 %145, i16* %18, align 2
  %146 = load i16, i16* %15, align 2
  %147 = zext i16 %146 to i32
  %148 = load i16, i16* %18, align 2
  %149 = zext i16 %148 to i32
  %150 = sub nsw i32 %147, %149
  %151 = load i16, i16* %21, align 2
  %152 = zext i16 %151 to i32
  %153 = sub nsw i32 %152, 2
  %154 = load i16, i16* %16, align 2
  %155 = zext i16 %154 to i32
  %156 = mul nsw i32 %153, %155
  %157 = sub nsw i32 %150, %156
  %158 = trunc i32 %157 to i16
  store i16 %158, i16* %19, align 2
  %159 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %160 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %159, i32 0, i32 4
  %161 = load i16, i16* %160, align 8
  %162 = zext i16 %161 to i32
  %163 = load i16, i16* %15, align 2
  %164 = zext i16 %163 to i32
  %165 = sub nsw i32 %162, %164
  store i32 %165, i32* %17, align 4
  br label %166

166:                                              ; preds = %137, %105
  %167 = load i16, i16* %21, align 2
  store i16 %167, i16* %20, align 2
  %168 = load i32, i32* %17, align 4
  %169 = icmp ugt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i16, i16* %20, align 2
  %172 = add i16 %171, 1
  store i16 %172, i16* %20, align 2
  br label %173

173:                                              ; preds = %170, %166
  br label %174

174:                                              ; preds = %420, %173
  %175 = load i16, i16* %12, align 2
  %176 = zext i16 %175 to i32
  %177 = load i16, i16* %21, align 2
  %178 = zext i16 %177 to i32
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load i16, i16* %11, align 2
  %182 = zext i16 %181 to i32
  %183 = load i16, i16* %20, align 2
  %184 = zext i16 %183 to i32
  %185 = icmp slt i32 %182, %184
  br label %186

186:                                              ; preds = %180, %174
  %187 = phi i1 [ true, %174 ], [ %185, %180 ]
  br i1 %187, label %188, label %421

188:                                              ; preds = %186
  %189 = load i16, i16* %11, align 2
  %190 = zext i16 %189 to i32
  %191 = icmp sge i32 %190, 2
  br i1 %191, label %200, label %192

192:                                              ; preds = %188
  %193 = load i16, i16* %11, align 2
  %194 = zext i16 %193 to i32
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %291

196:                                              ; preds = %192
  %197 = load i16, i16* %21, align 2
  %198 = zext i16 %197 to i32
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %291

200:                                              ; preds = %196, %188
  %201 = load i16, i16* %10, align 2
  %202 = zext i16 %201 to i32
  %203 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %204 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %203, i32 0, i32 5
  %205 = load i16, i16* %204, align 2
  %206 = zext i16 %205 to i32
  %207 = icmp sge i32 %202, %206
  br i1 %207, label %216, label %208

208:                                              ; preds = %200
  %209 = load i16, i16* %12, align 2
  %210 = zext i16 %209 to i32
  %211 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %212 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %211, i32 0, i32 6
  %213 = load i16, i16* %212, align 4
  %214 = zext i16 %213 to i32
  %215 = icmp sge i32 %210, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %208, %200
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %5, align 4
  br label %422

219:                                              ; preds = %208
  %220 = load i32, i32* @IMGU_ABI_ACC_OPTYPE_TRANSFER_DATA, align 4
  %221 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %7, align 8
  %222 = load i16, i16* %10, align 2
  %223 = zext i16 %222 to i64
  %224 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %221, i64 %223
  %225 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %224, i32 0, i32 1
  store i32 %220, i32* %225, align 8
  %226 = load i16, i16* %12, align 2
  %227 = zext i16 %226 to i32
  %228 = load i16, i16* %21, align 2
  %229 = zext i16 %228 to i32
  %230 = sub nsw i32 %229, 1
  %231 = icmp eq i32 %227, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %219
  %233 = load i8*, i8** @IMGU_ABI_ACC_OP_END_OF_OPS, align 8
  %234 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %7, align 8
  %235 = load i16, i16* %10, align 2
  %236 = zext i16 %235 to i64
  %237 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %234, i64 %236
  %238 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %237, i32 0, i32 0
  store i8* %233, i8** %238, align 8
  br label %272

239:                                              ; preds = %219
  %240 = load i16, i16* %12, align 2
  %241 = zext i16 %240 to i32
  %242 = load i16, i16* %21, align 2
  %243 = zext i16 %242 to i32
  %244 = sub nsw i32 %243, 2
  %245 = icmp eq i32 %241, %244
  br i1 %245, label %246, label %264

246:                                              ; preds = %239
  %247 = load i32, i32* %17, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = load i8*, i8** @IMGU_ABI_ACC_OP_END_OF_ACK, align 8
  %251 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %7, align 8
  %252 = load i16, i16* %10, align 2
  %253 = zext i16 %252 to i64
  %254 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %251, i64 %253
  %255 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %254, i32 0, i32 0
  store i8* %250, i8** %255, align 8
  br label %263

256:                                              ; preds = %246
  %257 = load i8*, i8** @IMGU_ABI_ACC_OP_IDLE, align 8
  %258 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %7, align 8
  %259 = load i16, i16* %10, align 2
  %260 = zext i16 %259 to i64
  %261 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %258, i64 %260
  %262 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %261, i32 0, i32 0
  store i8* %257, i8** %262, align 8
  br label %263

263:                                              ; preds = %256, %249
  br label %271

264:                                              ; preds = %239
  %265 = load i8*, i8** @IMGU_ABI_ACC_OP_IDLE, align 8
  %266 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %7, align 8
  %267 = load i16, i16* %10, align 2
  %268 = zext i16 %267 to i64
  %269 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %266, i64 %268
  %270 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %269, i32 0, i32 0
  store i8* %265, i8** %270, align 8
  br label %271

271:                                              ; preds = %264, %263
  br label %272

272:                                              ; preds = %271, %232
  %273 = load i16, i16* %10, align 2
  %274 = add i16 %273, 1
  store i16 %274, i16* %10, align 2
  %275 = load %struct.imgu_abi_acc_transfer_op_data*, %struct.imgu_abi_acc_transfer_op_data** %9, align 8
  %276 = icmp ne %struct.imgu_abi_acc_transfer_op_data* %275, null
  br i1 %276, label %277, label %288

277:                                              ; preds = %272
  %278 = load i8, i8* %13, align 1
  %279 = load %struct.imgu_abi_acc_transfer_op_data*, %struct.imgu_abi_acc_transfer_op_data** %9, align 8
  %280 = load i16, i16* %12, align 2
  %281 = zext i16 %280 to i64
  %282 = getelementptr inbounds %struct.imgu_abi_acc_transfer_op_data, %struct.imgu_abi_acc_transfer_op_data* %279, i64 %281
  %283 = getelementptr inbounds %struct.imgu_abi_acc_transfer_op_data, %struct.imgu_abi_acc_transfer_op_data* %282, i32 0, i32 0
  store i8 %278, i8* %283, align 1
  %284 = load i8, i8* %13, align 1
  %285 = zext i8 %284 to i32
  %286 = sub nsw i32 1, %285
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %13, align 1
  br label %288

288:                                              ; preds = %277, %272
  %289 = load i16, i16* %12, align 2
  %290 = add i16 %289, 1
  store i16 %290, i16* %12, align 2
  br label %291

291:                                              ; preds = %288, %196, %192
  %292 = load i16, i16* %11, align 2
  %293 = zext i16 %292 to i32
  %294 = load i16, i16* %20, align 2
  %295 = zext i16 %294 to i32
  %296 = icmp slt i32 %293, %295
  br i1 %296, label %297, label %420

297:                                              ; preds = %291
  %298 = load i16, i16* %10, align 2
  %299 = zext i16 %298 to i32
  %300 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %301 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %300, i32 0, i32 5
  %302 = load i16, i16* %301, align 2
  %303 = zext i16 %302 to i32
  %304 = icmp sge i32 %299, %303
  br i1 %304, label %313, label %305

305:                                              ; preds = %297
  %306 = load i16, i16* %11, align 2
  %307 = zext i16 %306 to i32
  %308 = load %struct.process_lines*, %struct.process_lines** %6, align 8
  %309 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %308, i32 0, i32 6
  %310 = load i16, i16* %309, align 4
  %311 = zext i16 %310 to i32
  %312 = icmp sge i32 %307, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %305, %297
  %314 = load i32, i32* @EINVAL, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %5, align 4
  br label %422

316:                                              ; preds = %305
  %317 = load i32, i32* @IMGU_ABI_ACC_OPTYPE_PROCESS_LINES, align 4
  %318 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %7, align 8
  %319 = load i16, i16* %10, align 2
  %320 = zext i16 %319 to i64
  %321 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %318, i64 %320
  %322 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %321, i32 0, i32 1
  store i32 %317, i32* %322, align 8
  %323 = load i16, i16* %11, align 2
  %324 = zext i16 %323 to i32
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %345

326:                                              ; preds = %316
  %327 = load i16, i16* %20, align 2
  %328 = zext i16 %327 to i32
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %337

330:                                              ; preds = %326
  %331 = load i8*, i8** @IMGU_ABI_ACC_OP_END_OF_ACK, align 8
  %332 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %7, align 8
  %333 = load i16, i16* %10, align 2
  %334 = zext i16 %333 to i64
  %335 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %332, i64 %334
  %336 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %335, i32 0, i32 0
  store i8* %331, i8** %336, align 8
  br label %344

337:                                              ; preds = %326
  %338 = load i8*, i8** @IMGU_ABI_ACC_OP_IDLE, align 8
  %339 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %7, align 8
  %340 = load i16, i16* %10, align 2
  %341 = zext i16 %340 to i64
  %342 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %339, i64 %341
  %343 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %342, i32 0, i32 0
  store i8* %338, i8** %343, align 8
  br label %344

344:                                              ; preds = %337, %330
  br label %352

345:                                              ; preds = %316
  %346 = load i8*, i8** @IMGU_ABI_ACC_OP_END_OF_ACK, align 8
  %347 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %7, align 8
  %348 = load i16, i16* %10, align 2
  %349 = zext i16 %348 to i64
  %350 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %347, i64 %349
  %351 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %350, i32 0, i32 0
  store i8* %346, i8** %351, align 8
  br label %352

352:                                              ; preds = %345, %344
  %353 = load i16, i16* %10, align 2
  %354 = add i16 %353, 1
  store i16 %354, i16* %10, align 2
  %355 = load i16, i16* %11, align 2
  %356 = zext i16 %355 to i32
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %365

358:                                              ; preds = %352
  %359 = load i16, i16* %18, align 2
  %360 = load %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_process_lines_cmd_data** %8, align 8
  %361 = load i16, i16* %11, align 2
  %362 = zext i16 %361 to i64
  %363 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %360, i64 %362
  %364 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %363, i32 0, i32 0
  store i16 %359, i16* %364, align 2
  br label %403

365:                                              ; preds = %352
  %366 = load i16, i16* %11, align 2
  %367 = zext i16 %366 to i32
  %368 = load i16, i16* %21, align 2
  %369 = zext i16 %368 to i32
  %370 = sub nsw i32 %369, 1
  %371 = icmp eq i32 %367, %370
  br i1 %371, label %372, label %379

372:                                              ; preds = %365
  %373 = load i16, i16* %19, align 2
  %374 = load %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_process_lines_cmd_data** %8, align 8
  %375 = load i16, i16* %11, align 2
  %376 = zext i16 %375 to i64
  %377 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %374, i64 %376
  %378 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %377, i32 0, i32 0
  store i16 %373, i16* %378, align 2
  br label %402

379:                                              ; preds = %365
  %380 = load i16, i16* %11, align 2
  %381 = zext i16 %380 to i32
  %382 = load i16, i16* %20, align 2
  %383 = zext i16 %382 to i32
  %384 = sub nsw i32 %383, 1
  %385 = icmp eq i32 %381, %384
  br i1 %385, label %386, label %394

386:                                              ; preds = %379
  %387 = load i32, i32* %17, align 4
  %388 = trunc i32 %387 to i16
  %389 = load %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_process_lines_cmd_data** %8, align 8
  %390 = load i16, i16* %11, align 2
  %391 = zext i16 %390 to i64
  %392 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %389, i64 %391
  %393 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %392, i32 0, i32 0
  store i16 %388, i16* %393, align 2
  br label %401

394:                                              ; preds = %379
  %395 = load i16, i16* %16, align 2
  %396 = load %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_process_lines_cmd_data** %8, align 8
  %397 = load i16, i16* %11, align 2
  %398 = zext i16 %397 to i64
  %399 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %396, i64 %398
  %400 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %399, i32 0, i32 0
  store i16 %395, i16* %400, align 2
  br label %401

401:                                              ; preds = %394, %386
  br label %402

402:                                              ; preds = %401, %372
  br label %403

403:                                              ; preds = %402, %358
  %404 = load %struct.imgu_abi_acc_transfer_op_data*, %struct.imgu_abi_acc_transfer_op_data** %9, align 8
  %405 = icmp ne %struct.imgu_abi_acc_transfer_op_data* %404, null
  br i1 %405, label %406, label %417

406:                                              ; preds = %403
  %407 = load i8, i8* %14, align 1
  %408 = load %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_process_lines_cmd_data** %8, align 8
  %409 = load i16, i16* %11, align 2
  %410 = zext i16 %409 to i64
  %411 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %408, i64 %410
  %412 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %411, i32 0, i32 1
  store i8 %407, i8* %412, align 2
  %413 = load i8, i8* %14, align 1
  %414 = zext i8 %413 to i32
  %415 = sub nsw i32 1, %414
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %14, align 1
  br label %417

417:                                              ; preds = %406, %403
  %418 = load i16, i16* %11, align 2
  %419 = add i16 %418, 1
  store i16 %419, i16* %11, align 2
  br label %420

420:                                              ; preds = %417, %291
  br label %174

421:                                              ; preds = %186
  store i32 0, i32* %5, align 4
  br label %422

422:                                              ; preds = %421, %313, %216, %68, %52
  %423 = load i32, i32* %5, align 4
  ret i32 %423
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
