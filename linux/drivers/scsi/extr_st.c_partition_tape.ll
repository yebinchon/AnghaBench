; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_partition_tape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_partition_tape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i64 }

@SCSI_3 = common dso_local global i64 0, align 8
@PP_MSK_PSUM_MB = common dso_local global i32 0, align 4
@PART_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Can't read partition mode page.\0A\00", align 1
@MODE_HEADER_LENGTH = common dso_local global i8 0, align 1
@MH_OFF_BDESCS_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Partition page length is %d bytes.\0A\00", align 1
@MP_OFF_PAGE_LENGTH = common dso_local global i32 0, align 4
@PART_PAGE_FIXED_LENGTH = common dso_local global i8 0, align 1
@PP_OFF_FLAGS = common dso_local global i32 0, align 4
@PP_MSK_POFM = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Formatting tape with one partition.\0A\00", align 1
@PP_MSK_PSUM_UNITS = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@PP_OFF_MAX_ADD_PARTS = common dso_local global i32 0, align 4
@PP_OFF_NBR_ADD_PARTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"psd_cnt %d, max.parts %d, nbr_parts %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Formatting tape with two partitions (%i = %d MB).\0A\00", align 1
@PP_OFF_PART_UNITS = common dso_local global i32 0, align 4
@PP_OFF_RESERVED = common dso_local global i32 0, align 4
@PP_BIT_IDP = common dso_local global i32 0, align 4
@PP_BIT_FDP = common dso_local global i8 0, align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Partitioning of tape failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32)* @partition_tape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_tape(%struct.scsi_tape* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_tape*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCSI_3, align 8
  %22 = icmp sge i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load i32, i32* @PP_MSK_PSUM_MB, align 4
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %26 = load i32, i32* @PART_PAGE, align 4
  %27 = call i32 @read_mode_page(%struct.scsi_tape* %25, i32 %26, i32 0)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %32 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %431

34:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %42 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %15, align 8
  %46 = load i8, i8* @MODE_HEADER_LENGTH, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8*, i8** %15, align 8
  %49 = load i64, i64* @MH_OFF_BDESCS_LENGTH, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %47, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @MP_OFF_PAGE_LENGTH, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = add nsw i32 %62, 2
  %64 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @MP_OFF_PAGE_LENGTH, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = add nsw i32 %72, 2
  %74 = load i8, i8* @PART_PAGE_FIXED_LENGTH, align 1
  %75 = zext i8 %74 to i32
  %76 = sub nsw i32 %73, %75
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %149

80:                                               ; preds = %40
  %81 = load i8*, i8** %15, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @PP_OFF_FLAGS, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @PP_MSK_POFM, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %80
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %101 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %103 = call i32 @format_medium(%struct.scsi_tape* %102, i32 0)
  store i32 %103, i32* %6, align 4
  br label %429

104:                                              ; preds = %96, %80
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 2, i32* %11, align 4
  br label %108

108:                                              ; preds = %107, %104
  %109 = load i8*, i8** %15, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @PP_OFF_FLAGS, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @PP_MSK_PSUM_UNITS, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %116, %118
  %120 = load i8, i8* @PP_MSK_PSUM_UNITS, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %108
  %124 = load i32, i32* %5, align 4
  %125 = icmp sge i32 %124, 1000
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i32, i32* %5, align 4
  %128 = srem i32 %127, 1000
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i32, i32* %5, align 4
  %132 = sdiv i32 %131, 1000
  store i32 %132, i32* %5, align 4
  %133 = load i8, i8* @PP_MSK_PSUM_UNITS, align 1
  %134 = zext i8 %133 to i32
  store i32 %134, i32* %13, align 4
  store i32 9, i32* %14, align 4
  br label %135

135:                                              ; preds = %130, %126, %123
  br label %136

136:                                              ; preds = %135, %108
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @PP_MSK_PSUM_MB, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i32, i32* %5, align 4
  %142 = icmp sge i32 %141, 65534
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* %5, align 4
  %145 = sdiv i32 %144, 1000
  store i32 %145, i32* %5, align 4
  %146 = load i8, i8* @PP_MSK_PSUM_UNITS, align 1
  %147 = zext i8 %146 to i32
  store i32 %147, i32* %13, align 4
  store i32 9, i32* %14, align 4
  br label %148

148:                                              ; preds = %143, %140, %136
  br label %149

149:                                              ; preds = %148, %40
  %150 = load i32, i32* %5, align 4
  %151 = icmp sge i32 %150, 65535
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %7, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %156, 2
  br i1 %157, label %158, label %161

158:                                              ; preds = %155, %149
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %6, align 4
  br label %429

161:                                              ; preds = %155, %152
  %162 = load i32, i32* %10, align 4
  %163 = load i8, i8* @PART_PAGE_FIXED_LENGTH, align 1
  %164 = zext i8 %163 to i32
  %165 = add nsw i32 %162, %164
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %201

168:                                              ; preds = %161
  %169 = load i32, i32* %11, align 4
  %170 = load i8*, i8** %15, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @PP_OFF_MAX_ADD_PARTS, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %170, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp sgt i32 %169, %177
  br i1 %178, label %189, label %179

179:                                              ; preds = %168
  %180 = load i8*, i8** %15, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @PP_OFF_MAX_ADD_PARTS, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %180, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp ne i32 %187, 1
  br i1 %188, label %189, label %201

189:                                              ; preds = %179, %168
  %190 = load i8*, i8** %15, align 8
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  store i8 -1, i8* %194, align 1
  %195 = load i8*, i8** %15, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  store i8 -1, i8* %198, align 1
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 2
  store i32 %200, i32* %12, align 4
  br label %201

201:                                              ; preds = %189, %179, %161
  %202 = load i8*, i8** %15, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8*, i8** %15, align 8
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @PP_OFF_NBR_ADD_PARTS, align 4
  %209 = add nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %206, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = mul nsw i32 %213, 2
  %215 = trunc i32 %214 to i8
  %216 = call i32 @memset(i8* %205, i32 0, i8 zeroext %215)
  %217 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load i8*, i8** %15, align 8
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @PP_OFF_MAX_ADD_PARTS, align 4
  %222 = add nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %219, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = load i8*, i8** %15, align 8
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* @PP_OFF_NBR_ADD_PARTS, align 4
  %230 = add nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %227, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %217, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %218, i32 %226, i32 %234)
  %236 = load i32, i32* %5, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %265

238:                                              ; preds = %201
  %239 = load i8*, i8** %15, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @PP_OFF_NBR_ADD_PARTS, align 4
  %242 = add nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %239, i64 %243
  store i8 0, i8* %244, align 1
  %245 = load i32, i32* %11, align 4
  %246 = load i8*, i8** %15, align 8
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* @PP_OFF_MAX_ADD_PARTS, align 4
  %249 = add nsw i32 %247, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %246, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = icmp sle i32 %245, %253
  br i1 %254, label %255, label %262

255:                                              ; preds = %238
  %256 = load i8*, i8** %15, align 8
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* @MP_OFF_PAGE_LENGTH, align 4
  %259 = add nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %256, i64 %260
  store i8 6, i8* %261, align 1
  br label %262

262:                                              ; preds = %255, %238
  %263 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %264 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %263, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %330

265:                                              ; preds = %201
  %266 = load i32, i32* %5, align 4
  %267 = ashr i32 %266, 8
  %268 = and i32 %267, 255
  %269 = trunc i32 %268 to i8
  %270 = load i8*, i8** %15, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  store i8 %269, i8* %273, align 1
  %274 = load i32, i32* %5, align 4
  %275 = and i32 %274, 255
  %276 = trunc i32 %275 to i8
  %277 = load i8*, i8** %15, align 8
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %277, i64 %280
  store i8 %276, i8* %281, align 1
  %282 = load i32, i32* %7, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %265
  %285 = load i8*, i8** %15, align 8
  %286 = load i32, i32* %12, align 4
  %287 = add nsw i32 %286, 3
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %285, i64 %288
  store i8 -1, i8* %289, align 1
  %290 = load i8*, i8** %15, align 8
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, 2
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %290, i64 %293
  store i8 -1, i8* %294, align 1
  br label %295

295:                                              ; preds = %284, %265
  %296 = load i8*, i8** %15, align 8
  %297 = load i32, i32* %10, align 4
  %298 = add nsw i32 %297, 3
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %296, i64 %299
  store i8 1, i8* %300, align 1
  %301 = load i8*, i8** %15, align 8
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* @MP_OFF_PAGE_LENGTH, align 4
  %304 = add nsw i32 %302, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %301, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = icmp slt i32 %308, 8
  br i1 %309, label %310, label %317

310:                                              ; preds = %295
  %311 = load i8*, i8** %15, align 8
  %312 = load i32, i32* %10, align 4
  %313 = load i32, i32* @MP_OFF_PAGE_LENGTH, align 4
  %314 = add nsw i32 %312, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %311, i64 %315
  store i8 8, i8* %316, align 1
  br label %317

317:                                              ; preds = %310, %295
  %318 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* %14, align 4
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = load i32, i32* %5, align 4
  %324 = mul nsw i32 %323, 1000
  br label %327

325:                                              ; preds = %317
  %326 = load i32, i32* %5, align 4
  br label %327

327:                                              ; preds = %325, %322
  %328 = phi i32 [ %324, %322 ], [ %326, %325 ]
  %329 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %318, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %319, i32 %328)
  br label %330

330:                                              ; preds = %327, %262
  %331 = load i8*, i8** %15, align 8
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* @PP_OFF_PART_UNITS, align 4
  %334 = add nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %331, i64 %335
  store i8 0, i8* %336, align 1
  %337 = load i8*, i8** %15, align 8
  %338 = load i32, i32* %10, align 4
  %339 = load i32, i32* @PP_OFF_RESERVED, align 4
  %340 = add nsw i32 %338, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %337, i64 %341
  store i8 0, i8* %342, align 1
  %343 = load i32, i32* %5, align 4
  %344 = icmp ne i32 %343, 1
  br i1 %344, label %348, label %345

345:                                              ; preds = %330
  %346 = load i32, i32* %14, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %377

348:                                              ; preds = %345, %330
  %349 = load i32, i32* @PP_BIT_IDP, align 4
  %350 = load i32, i32* %13, align 4
  %351 = or i32 %349, %350
  %352 = load i8*, i8** %15, align 8
  %353 = load i32, i32* %10, align 4
  %354 = load i32, i32* @PP_OFF_FLAGS, align 4
  %355 = add nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %352, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = and i32 %359, 7
  %361 = or i32 %351, %360
  %362 = trunc i32 %361 to i8
  %363 = load i8*, i8** %15, align 8
  %364 = load i32, i32* %10, align 4
  %365 = load i32, i32* @PP_OFF_FLAGS, align 4
  %366 = add nsw i32 %364, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %363, i64 %367
  store i8 %362, i8* %368, align 1
  %369 = load i32, i32* %14, align 4
  %370 = trunc i32 %369 to i8
  %371 = load i8*, i8** %15, align 8
  %372 = load i32, i32* %10, align 4
  %373 = load i32, i32* @PP_OFF_PART_UNITS, align 4
  %374 = add nsw i32 %372, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, i8* %371, i64 %375
  store i8 %370, i8* %376, align 1
  br label %397

377:                                              ; preds = %345
  %378 = load i8, i8* @PP_BIT_FDP, align 1
  %379 = zext i8 %378 to i32
  %380 = load i8*, i8** %15, align 8
  %381 = load i32, i32* %10, align 4
  %382 = load i32, i32* @PP_OFF_FLAGS, align 4
  %383 = add nsw i32 %381, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %380, i64 %384
  %386 = load i8, i8* %385, align 1
  %387 = zext i8 %386 to i32
  %388 = and i32 %387, 31
  %389 = or i32 %379, %388
  %390 = trunc i32 %389 to i8
  %391 = load i8*, i8** %15, align 8
  %392 = load i32, i32* %10, align 4
  %393 = load i32, i32* @PP_OFF_FLAGS, align 4
  %394 = add nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8, i8* %391, i64 %395
  store i8 %390, i8* %396, align 1
  br label %397

397:                                              ; preds = %377, %348
  %398 = load i32, i32* %11, align 4
  %399 = mul nsw i32 %398, 2
  %400 = add nsw i32 6, %399
  %401 = trunc i32 %400 to i8
  %402 = load i8*, i8** %15, align 8
  %403 = load i32, i32* %10, align 4
  %404 = load i32, i32* @MP_OFF_PAGE_LENGTH, align 4
  %405 = add nsw i32 %403, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8, i8* %402, i64 %406
  store i8 %401, i8* %407, align 1
  %408 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %409 = load i32, i32* @PART_PAGE, align 4
  %410 = call i32 @write_mode_page(%struct.scsi_tape* %408, i32 %409, i32 1)
  store i32 %410, i32* %6, align 4
  %411 = load i32, i32* %6, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %419, label %413

413:                                              ; preds = %397
  %414 = load i32, i32* %9, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %413
  %417 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %418 = call i32 @format_medium(%struct.scsi_tape* %417, i32 1)
  store i32 %418, i32* %6, align 4
  br label %419

419:                                              ; preds = %416, %413, %397
  %420 = load i32, i32* %6, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %419
  %423 = load i32, i32* @KERN_INFO, align 4
  %424 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %425 = call i32 @st_printk(i32 %423, %struct.scsi_tape* %424, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %426 = load i32, i32* @EIO, align 4
  %427 = sub nsw i32 0, %426
  store i32 %427, i32* %6, align 4
  br label %428

428:                                              ; preds = %422, %419
  br label %429

429:                                              ; preds = %428, %158, %99
  %430 = load i32, i32* %6, align 4
  store i32 %430, i32* %3, align 4
  br label %431

431:                                              ; preds = %429, %30
  %432 = load i32, i32* %3, align 4
  ret i32 %432
}

declare dso_local i32 @read_mode_page(%struct.scsi_tape*, i32, i32) #1

declare dso_local i32 @DEBC_printk(%struct.scsi_tape*, i8*, ...) #1

declare dso_local i32 @format_medium(%struct.scsi_tape*, i32) #1

declare dso_local i32 @memset(i8*, i32, i8 zeroext) #1

declare dso_local i32 @write_mode_page(%struct.scsi_tape*, i32, i32) #1

declare dso_local i32 @st_printk(i32, %struct.scsi_tape*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
