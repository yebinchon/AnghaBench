; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.mt9t031 = type { i32, i32, i32, i32, %struct.v4l2_rect, i32 }

@MT9T031_HORIZONTAL_BLANK = common dso_local global i32 0, align 4
@MT9T031_VERTICAL_BLANK = common dso_local global i32 0, align 4
@MT9T031_COLUMN_SKIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"skip %u:%u, rect %ux%u@%u:%u\0A\00", align 1
@MT9T031_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@MT9T031_HORIZONTAL_BLANKING = common dso_local global i32 0, align 4
@MT9T031_VERTICAL_BLANKING = common dso_local global i32 0, align 4
@MT9T031_COLUMN_ADDRESS_MODE = common dso_local global i32 0, align 4
@MT9T031_ROW_ADDRESS_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"new physical left %u, top %u\0A\00", align 1
@MT9T031_COLUMN_START = common dso_local global i32 0, align 4
@MT9T031_ROW_START = common dso_local global i32 0, align 4
@MT9T031_WINDOW_WIDTH = common dso_local global i32 0, align 4
@MT9T031_WINDOW_HEIGHT = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.v4l2_rect*, i32, i32)* @mt9t031_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_set_params(%struct.i2c_client* %0, %struct.v4l2_rect* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt9t031*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %17 = call %struct.mt9t031* @to_mt9t031(%struct.i2c_client* %16)
  store %struct.mt9t031* %17, %struct.mt9t031** %10, align 8
  %18 = load i32, i32* @MT9T031_HORIZONTAL_BLANK, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @MT9T031_VERTICAL_BLANK, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @min(i32 %20, i32 3)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @min(i32 %22, i32 3)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %55 [
    i32 1, label %25
    i32 2, label %30
    i32 3, label %35
  ]

25:                                               ; preds = %4
  %26 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, -2
  store i32 %29, i32* %27, align 4
  br label %55

30:                                               ; preds = %4
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, -4
  store i32 %34, i32* %32, align 4
  br label %55

35:                                               ; preds = %4
  %36 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MT9T031_COLUMN_SKIP, align 4
  %40 = call i32 @roundup(i32 %39, i32 6)
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 6
  %47 = mul nsw i32 %46, 6
  br label %51

48:                                               ; preds = %35
  %49 = load i32, i32* @MT9T031_COLUMN_SKIP, align 4
  %50 = call i32 @roundup(i32 %49, i32 6)
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i32 [ %47, %42 ], [ %50, %48 ]
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %4, %30, %25
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -2
  store i32 %59, i32* %57, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75)
  %77 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %78 = load i32, i32* @MT9T031_OUTPUT_CONTROL, align 4
  %79 = call i32 @reg_set(%struct.i2c_client* %77, i32 %78, i32 1)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %55
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %247

84:                                               ; preds = %55
  %85 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %86 = load i32, i32* @MT9T031_HORIZONTAL_BLANKING, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @reg_write(%struct.i2c_client* %85, i32 %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %93 = load i32, i32* @MT9T031_VERTICAL_BLANKING, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @reg_write(%struct.i2c_client* %92, i32 %93, i32 %94)
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %91, %84
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %99 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %105 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %102, %96
  %109 = load i32, i32* %11, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %113 = load i32, i32* @MT9T031_COLUMN_ADDRESS_MODE, align 4
  %114 = load i32, i32* %12, align 4
  %115 = sub nsw i32 %114, 1
  %116 = shl i32 %115, 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %117, 1
  %119 = or i32 %116, %118
  %120 = call i32 @reg_write(%struct.i2c_client* %112, i32 %113, i32 %119)
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %111, %108
  %122 = load i32, i32* %11, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %126 = load i32, i32* @MT9T031_ROW_ADDRESS_MODE, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %127, 1
  %129 = shl i32 %128, 4
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 %130, 1
  %132 = or i32 %129, %131
  %133 = call i32 @reg_write(%struct.i2c_client* %125, i32 %126, i32 %132)
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %124, %121
  br label %135

135:                                              ; preds = %134, %102
  %136 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %139 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %142 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %143)
  %145 = load i32, i32* %11, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %135
  %148 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %149 = load i32, i32* @MT9T031_COLUMN_START, align 4
  %150 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %151 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @reg_write(%struct.i2c_client* %148, i32 %149, i32 %152)
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %147, %135
  %155 = load i32, i32* %11, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %159 = load i32, i32* @MT9T031_ROW_START, align 4
  %160 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %161 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @reg_write(%struct.i2c_client* %158, i32 %159, i32 %162)
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %157, %154
  %165 = load i32, i32* %11, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %169 = load i32, i32* @MT9T031_WINDOW_WIDTH, align 4
  %170 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %171 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 1
  %174 = call i32 @reg_write(%struct.i2c_client* %168, i32 %169, i32 %173)
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %167, %164
  %176 = load i32, i32* %11, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %180 = load i32, i32* @MT9T031_WINDOW_HEIGHT, align 4
  %181 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %182 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %185 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %183, %186
  %188 = sub nsw i32 %187, 1
  %189 = call i32 @reg_write(%struct.i2c_client* %179, i32 %180, i32 %188)
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %178, %175
  %191 = load i32, i32* %11, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %217

193:                                              ; preds = %190
  %194 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %195 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @v4l2_ctrl_g_ctrl(i32 %196)
  %198 = load i64, i64* @V4L2_EXPOSURE_AUTO, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %193
  %201 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %202 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %205 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %203, %206
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %207, %208
  %210 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %211 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 4
  %212 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %213 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %214 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @set_shutter(%struct.i2c_client* %212, i32 %215)
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %200, %193, %190
  %218 = load i32, i32* %11, align 4
  %219 = icmp sge i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %222 = load i32, i32* @MT9T031_OUTPUT_CONTROL, align 4
  %223 = call i32 @reg_clear(%struct.i2c_client* %221, i32 %222, i32 1)
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %220, %217
  %225 = load i32, i32* %11, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %224
  %228 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %229 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %228, i32 0, i32 4
  %230 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %231 = bitcast %struct.v4l2_rect* %229 to i8*
  %232 = bitcast %struct.v4l2_rect* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %231, i8* align 4 %232, i64 16, i1 false)
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %235 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.mt9t031*, %struct.mt9t031** %10, align 8
  %238 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 4
  br label %239

239:                                              ; preds = %227, %224
  %240 = load i32, i32* %11, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = load i32, i32* %11, align 4
  br label %245

244:                                              ; preds = %239
  br label %245

245:                                              ; preds = %244, %242
  %246 = phi i32 [ %243, %242 ], [ 0, %244 ]
  store i32 %246, i32* %5, align 4
  br label %247

247:                                              ; preds = %245, %82
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local %struct.mt9t031* @to_mt9t031(%struct.i2c_client*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @reg_set(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @set_shutter(%struct.i2c_client*, i32) #1

declare dso_local i32 @reg_clear(%struct.i2c_client*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
