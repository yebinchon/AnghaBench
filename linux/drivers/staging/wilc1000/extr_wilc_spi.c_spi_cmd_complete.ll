; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_spi_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_spi_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.wilc_spi*, i32 }
%struct.wilc_spi = type { i32 }
%struct.spi_device = type { i32 }

@N_OK = common dso_local global i32 0, align 4
@N_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"spi buffer size too small (%d) (%zu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed cmd write, bus error...\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed cmd response, cmd (%02x), resp (%02x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed cmd state response state (%02x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Error, data read response (%02x)\0A\00", align 1
@N_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"buffer overrun when reading data.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"buffer overrun when reading crc.\0A\00", align 1
@DATA_PKT_SZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed block read, bus err\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed block crc read, bus err\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Failed resp read, bus err\0A\00", align 1
@NUM_CRC_BYTES = common dso_local global i32 0, align 4
@NUM_DATA_BYTES = common dso_local global i32 0, align 4
@NUM_DATA_HDR_BYTES = common dso_local global i32 0, align 4
@NUM_DUMMY_BYTES = common dso_local global i32 0, align 4
@NUM_RSP_BYTES = common dso_local global i32 0, align 4
@NUM_SKIP_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32, i32, i32*, i32, i32)* @spi_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_cmd_complete(%struct.wilc* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wilc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.spi_device*, align 8
  %15 = alloca %struct.wilc_spi*, align 8
  %16 = alloca [32 x i32], align 16
  %17 = alloca [32 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [2 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %30 = load %struct.wilc*, %struct.wilc** %8, align 8
  %31 = getelementptr inbounds %struct.wilc, %struct.wilc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.spi_device* @to_spi_device(i32 %32)
  store %struct.spi_device* %33, %struct.spi_device** %14, align 8
  %34 = load %struct.wilc*, %struct.wilc** %8, align 8
  %35 = getelementptr inbounds %struct.wilc, %struct.wilc* %34, i32 0, i32 0
  %36 = load %struct.wilc_spi*, %struct.wilc_spi** %35, align 8
  store %struct.wilc_spi* %36, %struct.wilc_spi** %15, align 8
  store i32 0, i32* %22, align 4
  %37 = load i32, i32* @N_OK, align 4
  store i32 %37, i32* %23, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %163 [
    i32 130, label %41
    i32 134, label %50
    i32 128, label %65
    i32 132, label %69
    i32 131, label %73
    i32 135, label %77
    i32 136, label %77
    i32 137, label %91
    i32 138, label %91
    i32 133, label %108
    i32 129, label %138
  ]

41:                                               ; preds = %6
  %42 = load i32, i32* %10, align 4
  %43 = ashr i32 %42, 16
  %44 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 8
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 2
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 3
  store i32 %48, i32* %49, align 4
  store i32 5, i32* %22, align 4
  br label %165

50:                                               ; preds = %6
  %51 = load i32, i32* %10, align 4
  %52 = ashr i32 %51, 8
  %53 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = call i32 @BIT(i32 7)
  %58 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %50
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 2
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 3
  store i32 0, i32* %64, align 4
  store i32 5, i32* %22, align 4
  br label %165

65:                                               ; preds = %6
  %66 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %66, align 4
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 2
  store i32 0, i32* %67, align 8
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 3
  store i32 0, i32* %68, align 4
  store i32 5, i32* %22, align 4
  br label %165

69:                                               ; preds = %6
  %70 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 2
  store i32 0, i32* %71, align 8
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 3
  store i32 0, i32* %72, align 4
  store i32 5, i32* %22, align 4
  br label %165

73:                                               ; preds = %6
  %74 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  store i32 255, i32* %74, align 4
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 2
  store i32 255, i32* %75, align 8
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 3
  store i32 255, i32* %76, align 4
  store i32 5, i32* %22, align 4
  br label %165

77:                                               ; preds = %6, %6
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 16
  %80 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %81, 8
  %83 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 2
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 3
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %12, align 4
  %87 = ashr i32 %86, 8
  %88 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 4
  store i32 %87, i32* %88, align 16
  %89 = load i32, i32* %12, align 4
  %90 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 5
  store i32 %89, i32* %90, align 4
  store i32 7, i32* %22, align 4
  br label %165

91:                                               ; preds = %6, %6
  %92 = load i32, i32* %10, align 4
  %93 = ashr i32 %92, 16
  %94 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %10, align 4
  %96 = ashr i32 %95, 8
  %97 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 2
  store i32 %96, i32* %97, align 8
  %98 = load i32, i32* %10, align 4
  %99 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 3
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %12, align 4
  %101 = ashr i32 %100, 16
  %102 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 4
  store i32 %101, i32* %102, align 16
  %103 = load i32, i32* %12, align 4
  %104 = ashr i32 %103, 8
  %105 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 5
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %12, align 4
  %107 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 6
  store i32 %106, i32* %107, align 8
  store i32 8, i32* %22, align 4
  br label %165

108:                                              ; preds = %6
  %109 = load i32, i32* %10, align 4
  %110 = ashr i32 %109, 8
  %111 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = call i32 @BIT(i32 7)
  %116 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %108
  %120 = load i32, i32* %10, align 4
  %121 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 2
  store i32 %120, i32* %121, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 3
  store i32 %124, i32* %125, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 4
  store i32 %128, i32* %129, align 16
  %130 = load i32*, i32** %11, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 5
  store i32 %132, i32* %133, align 4
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 6
  store i32 %136, i32* %137, align 8
  store i32 8, i32* %22, align 4
  br label %165

138:                                              ; preds = %6
  %139 = load i32, i32* %10, align 4
  %140 = ashr i32 %139, 16
  %141 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 1
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %10, align 4
  %143 = ashr i32 %142, 8
  %144 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 2
  store i32 %143, i32* %144, align 8
  %145 = load i32, i32* %10, align 4
  %146 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 3
  store i32 %145, i32* %146, align 4
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 4
  store i32 %149, i32* %150, align 16
  %151 = load i32*, i32** %11, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 5
  store i32 %153, i32* %154, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 6
  store i32 %157, i32* %158, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 7
  store i32 %161, i32* %162, align 4
  store i32 9, i32* %22, align 4
  br label %165

163:                                              ; preds = %6
  %164 = load i32, i32* @N_FAIL, align 4
  store i32 %164, i32* %23, align 4
  br label %165

165:                                              ; preds = %163, %138, %119, %91, %77, %73, %69, %65, %61, %41
  %166 = load i32, i32* %23, align 4
  %167 = load i32, i32* @N_OK, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* %23, align 4
  store i32 %170, i32* %7, align 4
  br label %587

171:                                              ; preds = %165
  %172 = load %struct.wilc_spi*, %struct.wilc_spi** %15, align 8
  %173 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %178 = load i32, i32* %22, align 4
  %179 = sub nsw i32 %178, 1
  %180 = call i32 @crc7(i32 127, i32* %177, i32 %179)
  %181 = shl i32 %180, 1
  %182 = load i32, i32* %22, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %184
  store i32 %181, i32* %185, align 4
  br label %189

186:                                              ; preds = %171
  %187 = load i32, i32* %22, align 4
  %188 = sub nsw i32 %187, 1
  store i32 %188, i32* %22, align 4
  br label %189

189:                                              ; preds = %186, %176
  %190 = load i32, i32* %9, align 4
  %191 = icmp eq i32 %190, 131
  br i1 %191, label %198, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %9, align 4
  %194 = icmp eq i32 %193, 128
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %9, align 4
  %197 = icmp eq i32 %196, 132
  br i1 %197, label %198, label %201

198:                                              ; preds = %195, %192, %189
  %199 = load i32, i32* %22, align 4
  %200 = add nsw i32 %199, 6
  store i32 %200, i32* %20, align 4
  br label %226

201:                                              ; preds = %195
  %202 = load i32, i32* %9, align 4
  %203 = icmp eq i32 %202, 134
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %9, align 4
  %206 = icmp eq i32 %205, 130
  br i1 %206, label %207, label %222

207:                                              ; preds = %204, %201
  store i32 10, i32* %26, align 4
  %208 = load %struct.wilc_spi*, %struct.wilc_spi** %15, align 8
  %209 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %207
  %213 = load i32, i32* %22, align 4
  %214 = load i32, i32* %26, align 4
  %215 = add nsw i32 %213, %214
  %216 = add nsw i32 %215, 2
  store i32 %216, i32* %20, align 4
  br label %221

217:                                              ; preds = %207
  %218 = load i32, i32* %22, align 4
  %219 = load i32, i32* %26, align 4
  %220 = add nsw i32 %218, %219
  store i32 %220, i32* %20, align 4
  br label %221

221:                                              ; preds = %217, %212
  br label %225

222:                                              ; preds = %204
  %223 = load i32, i32* %22, align 4
  %224 = add nsw i32 %223, 5
  store i32 %224, i32* %20, align 4
  br label %225

225:                                              ; preds = %222, %221
  br label %226

226:                                              ; preds = %225, %198
  %227 = load i32, i32* %20, align 4
  %228 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %229 = call i32 @ARRAY_SIZE(i32* %228)
  %230 = icmp sgt i32 %227, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %226
  %232 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %233 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %232, i32 0, i32 0
  %234 = load i32, i32* %20, align 4
  %235 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %236 = call i32 @ARRAY_SIZE(i32* %235)
  %237 = call i32 (i32*, i8*, ...) @dev_err(i32* %233, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %234, i32 %236)
  %238 = load i32, i32* @N_FAIL, align 4
  store i32 %238, i32* %7, align 4
  br label %587

239:                                              ; preds = %226
  %240 = load i32, i32* %22, align 4
  store i32 %240, i32* %18, align 4
  br label %241

241:                                              ; preds = %249, %239
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* %20, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %241
  %246 = load i32, i32* %18, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %247
  store i32 0, i32* %248, align 4
  br label %249

249:                                              ; preds = %245
  %250 = load i32, i32* %18, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %18, align 4
  br label %241

252:                                              ; preds = %241
  %253 = load i32, i32* %22, align 4
  store i32 %253, i32* %19, align 4
  %254 = load %struct.wilc*, %struct.wilc** %8, align 8
  %255 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %256 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %257 = load i32, i32* %20, align 4
  %258 = call i64 @wilc_spi_tx_rx(%struct.wilc* %254, i32* %255, i32* %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %252
  %261 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %262 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %261, i32 0, i32 0
  %263 = call i32 (i32*, i8*, ...) @dev_err(i32* %262, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %264 = load i32, i32* @N_FAIL, align 4
  store i32 %264, i32* %7, align 4
  br label %587

265:                                              ; preds = %252
  %266 = load i32, i32* %9, align 4
  %267 = icmp eq i32 %266, 131
  br i1 %267, label %274, label %268

268:                                              ; preds = %265
  %269 = load i32, i32* %9, align 4
  %270 = icmp eq i32 %269, 128
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %9, align 4
  %273 = icmp eq i32 %272, 132
  br i1 %273, label %274, label %277

274:                                              ; preds = %271, %268, %265
  %275 = load i32, i32* %19, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %19, align 4
  br label %277

277:                                              ; preds = %274, %271
  %278 = load i32, i32* %19, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %19, align 4
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %21, align 4
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* %9, align 4
  %285 = icmp ne i32 %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %277
  %287 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %288 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %287, i32 0, i32 0
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* %21, align 4
  %291 = call i32 (i32*, i8*, ...) @dev_err(i32* %288, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %289, i32 %290)
  %292 = load i32, i32* @N_FAIL, align 4
  store i32 %292, i32* %7, align 4
  br label %587

293:                                              ; preds = %277
  %294 = load i32, i32* %19, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %19, align 4
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %21, align 4
  %299 = load i32, i32* %21, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %293
  %302 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %303 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %302, i32 0, i32 0
  %304 = load i32, i32* %21, align 4
  %305 = call i32 (i32*, i8*, ...) @dev_err(i32* %303, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %304)
  %306 = load i32, i32* @N_FAIL, align 4
  store i32 %306, i32* %7, align 4
  br label %587

307:                                              ; preds = %293
  %308 = load i32, i32* %9, align 4
  %309 = icmp eq i32 %308, 134
  br i1 %309, label %319, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %9, align 4
  %312 = icmp eq i32 %311, 130
  br i1 %312, label %319, label %313

313:                                              ; preds = %310
  %314 = load i32, i32* %9, align 4
  %315 = icmp eq i32 %314, 136
  br i1 %315, label %319, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* %9, align 4
  %318 = icmp eq i32 %317, 138
  br i1 %318, label %319, label %352

319:                                              ; preds = %316, %313, %310, %307
  store i32 100, i32* %24, align 4
  br label %320

320:                                              ; preds = %338, %319
  %321 = load i32, i32* %19, align 4
  %322 = load i32, i32* %20, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %330

324:                                              ; preds = %320
  %325 = load i32, i32* %19, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %19, align 4
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %21, align 4
  br label %331

330:                                              ; preds = %320
  store i32 0, i32* %24, align 4
  br label %342

331:                                              ; preds = %324
  %332 = load i32, i32* %21, align 4
  %333 = ashr i32 %332, 4
  %334 = and i32 %333, 15
  %335 = icmp eq i32 %334, 15
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  br label %342

337:                                              ; preds = %331
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %24, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %24, align 4
  %341 = icmp ne i32 %339, 0
  br i1 %341, label %320, label %342

342:                                              ; preds = %338, %336, %330
  %343 = load i32, i32* %24, align 4
  %344 = icmp sle i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %342
  %346 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %347 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %346, i32 0, i32 0
  %348 = load i32, i32* %21, align 4
  %349 = call i32 (i32*, i8*, ...) @dev_err(i32* %347, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %348)
  %350 = load i32, i32* @N_RESET, align 4
  store i32 %350, i32* %7, align 4
  br label %587

351:                                              ; preds = %342
  br label %352

352:                                              ; preds = %351, %316
  %353 = load i32, i32* %9, align 4
  %354 = icmp eq i32 %353, 134
  br i1 %354, label %358, label %355

355:                                              ; preds = %352
  %356 = load i32, i32* %9, align 4
  %357 = icmp eq i32 %356, 130
  br i1 %357, label %358, label %427

358:                                              ; preds = %355, %352
  %359 = load i32, i32* %19, align 4
  %360 = add nsw i32 %359, 3
  %361 = load i32, i32* %20, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %392

363:                                              ; preds = %358
  %364 = load i32, i32* %19, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %19, align 4
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32*, i32** %11, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  store i32 %368, i32* %370, align 4
  %371 = load i32, i32* %19, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %19, align 4
  %373 = sext i32 %371 to i64
  %374 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = load i32*, i32** %11, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 1
  store i32 %375, i32* %377, align 4
  %378 = load i32, i32* %19, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %19, align 4
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load i32*, i32** %11, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 2
  store i32 %382, i32* %384, align 4
  %385 = load i32, i32* %19, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %19, align 4
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** %11, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 3
  store i32 %389, i32* %391, align 4
  br label %397

392:                                              ; preds = %358
  %393 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %394 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %393, i32 0, i32 0
  %395 = call i32 (i32*, i8*, ...) @dev_err(i32* %394, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %396 = load i32, i32* @N_FAIL, align 4
  store i32 %396, i32* %7, align 4
  br label %587

397:                                              ; preds = %363
  %398 = load %struct.wilc_spi*, %struct.wilc_spi** %15, align 8
  %399 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %426, label %402

402:                                              ; preds = %397
  %403 = load i32, i32* %19, align 4
  %404 = add nsw i32 %403, 1
  %405 = load i32, i32* %20, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %420

407:                                              ; preds = %402
  %408 = load i32, i32* %19, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %19, align 4
  %410 = sext i32 %408 to i64
  %411 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 %412, i32* %413, align 4
  %414 = load i32, i32* %19, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %19, align 4
  %416 = sext i32 %414 to i64
  %417 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  store i32 %418, i32* %419, align 4
  br label %425

420:                                              ; preds = %402
  %421 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %422 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %421, i32 0, i32 0
  %423 = call i32 (i32*, i8*, ...) @dev_err(i32* %422, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %424 = load i32, i32* @N_FAIL, align 4
  store i32 %424, i32* %7, align 4
  br label %587

425:                                              ; preds = %407
  br label %426

426:                                              ; preds = %425, %397
  br label %585

427:                                              ; preds = %355
  %428 = load i32, i32* %9, align 4
  %429 = icmp eq i32 %428, 136
  br i1 %429, label %433, label %430

430:                                              ; preds = %427
  %431 = load i32, i32* %9, align 4
  %432 = icmp eq i32 %431, 138
  br i1 %432, label %433, label %584

433:                                              ; preds = %430, %427
  store i32 0, i32* %27, align 4
  br label %434

434:                                              ; preds = %444, %433
  %435 = load i32, i32* %19, align 4
  %436 = load i32, i32* %20, align 4
  %437 = icmp slt i32 %435, %436
  br i1 %437, label %438, label %442

438:                                              ; preds = %434
  %439 = load i32, i32* %27, align 4
  %440 = load i32, i32* %12, align 4
  %441 = icmp slt i32 %439, %440
  br label %442

442:                                              ; preds = %438, %434
  %443 = phi i1 [ false, %434 ], [ %441, %438 ]
  br i1 %443, label %444, label %455

444:                                              ; preds = %442
  %445 = load i32, i32* %19, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %19, align 4
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = load i32*, i32** %11, align 8
  %451 = load i32, i32* %27, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %27, align 4
  %453 = sext i32 %451 to i64
  %454 = getelementptr inbounds i32, i32* %450, i64 %453
  store i32 %449, i32* %454, align 4
  br label %434

455:                                              ; preds = %442
  %456 = load i32, i32* %27, align 4
  %457 = load i32, i32* %12, align 4
  %458 = sub nsw i32 %457, %456
  store i32 %458, i32* %12, align 4
  %459 = load i32, i32* %12, align 4
  %460 = icmp sgt i32 %459, 0
  br i1 %460, label %461, label %509

461:                                              ; preds = %455
  %462 = load i32, i32* %12, align 4
  %463 = load i32, i32* @DATA_PKT_SZ, align 4
  %464 = load i32, i32* %27, align 4
  %465 = sub nsw i32 %463, %464
  %466 = icmp sle i32 %462, %465
  br i1 %466, label %467, label %469

467:                                              ; preds = %461
  %468 = load i32, i32* %12, align 4
  store i32 %468, i32* %28, align 4
  br label %473

469:                                              ; preds = %461
  %470 = load i32, i32* @DATA_PKT_SZ, align 4
  %471 = load i32, i32* %27, align 4
  %472 = sub nsw i32 %470, %471
  store i32 %472, i32* %28, align 4
  br label %473

473:                                              ; preds = %469, %467
  %474 = load %struct.wilc*, %struct.wilc** %8, align 8
  %475 = load i32*, i32** %11, align 8
  %476 = load i32, i32* %27, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %28, align 4
  %480 = call i64 @wilc_spi_rx(%struct.wilc* %474, i32* %478, i32 %479)
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %473
  %483 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %484 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %483, i32 0, i32 0
  %485 = call i32 (i32*, i8*, ...) @dev_err(i32* %484, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %486 = load i32, i32* @N_FAIL, align 4
  store i32 %486, i32* %7, align 4
  br label %587

487:                                              ; preds = %473
  %488 = load %struct.wilc_spi*, %struct.wilc_spi** %15, align 8
  %489 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %502, label %492

492:                                              ; preds = %487
  %493 = load %struct.wilc*, %struct.wilc** %8, align 8
  %494 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %495 = call i64 @wilc_spi_rx(%struct.wilc* %493, i32* %494, i32 2)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %502

497:                                              ; preds = %492
  %498 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %499 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %498, i32 0, i32 0
  %500 = call i32 (i32*, i8*, ...) @dev_err(i32* %499, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %501 = load i32, i32* @N_FAIL, align 4
  store i32 %501, i32* %7, align 4
  br label %587

502:                                              ; preds = %492, %487
  %503 = load i32, i32* %28, align 4
  %504 = load i32, i32* %27, align 4
  %505 = add nsw i32 %504, %503
  store i32 %505, i32* %27, align 4
  %506 = load i32, i32* %28, align 4
  %507 = load i32, i32* %12, align 4
  %508 = sub nsw i32 %507, %506
  store i32 %508, i32* %12, align 4
  br label %509

509:                                              ; preds = %502, %455
  br label %510

510:                                              ; preds = %576, %509
  %511 = load i32, i32* %12, align 4
  %512 = icmp sgt i32 %511, 0
  br i1 %512, label %513, label %583

513:                                              ; preds = %510
  %514 = load i32, i32* %12, align 4
  %515 = load i32, i32* @DATA_PKT_SZ, align 4
  %516 = icmp sle i32 %514, %515
  br i1 %516, label %517, label %519

517:                                              ; preds = %513
  %518 = load i32, i32* %12, align 4
  store i32 %518, i32* %29, align 4
  br label %521

519:                                              ; preds = %513
  %520 = load i32, i32* @DATA_PKT_SZ, align 4
  store i32 %520, i32* %29, align 4
  br label %521

521:                                              ; preds = %519, %517
  store i32 10, i32* %24, align 4
  br label %522

522:                                              ; preds = %538, %521
  %523 = load %struct.wilc*, %struct.wilc** %8, align 8
  %524 = call i64 @wilc_spi_rx(%struct.wilc* %523, i32* %21, i32 1)
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %531

526:                                              ; preds = %522
  %527 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %528 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %527, i32 0, i32 0
  %529 = call i32 (i32*, i8*, ...) @dev_err(i32* %528, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %530 = load i32, i32* @N_FAIL, align 4
  store i32 %530, i32* %23, align 4
  br label %542

531:                                              ; preds = %522
  %532 = load i32, i32* %21, align 4
  %533 = ashr i32 %532, 4
  %534 = and i32 %533, 15
  %535 = icmp eq i32 %534, 15
  br i1 %535, label %536, label %537

536:                                              ; preds = %531
  br label %542

537:                                              ; preds = %531
  br label %538

538:                                              ; preds = %537
  %539 = load i32, i32* %24, align 4
  %540 = add nsw i32 %539, -1
  store i32 %540, i32* %24, align 4
  %541 = icmp ne i32 %539, 0
  br i1 %541, label %522, label %542

542:                                              ; preds = %538, %536, %526
  %543 = load i32, i32* %23, align 4
  %544 = load i32, i32* @N_FAIL, align 4
  %545 = icmp eq i32 %543, %544
  br i1 %545, label %546, label %547

546:                                              ; preds = %542
  br label %583

547:                                              ; preds = %542
  %548 = load %struct.wilc*, %struct.wilc** %8, align 8
  %549 = load i32*, i32** %11, align 8
  %550 = load i32, i32* %27, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %29, align 4
  %554 = call i64 @wilc_spi_rx(%struct.wilc* %548, i32* %552, i32 %553)
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %561

556:                                              ; preds = %547
  %557 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %558 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %557, i32 0, i32 0
  %559 = call i32 (i32*, i8*, ...) @dev_err(i32* %558, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %560 = load i32, i32* @N_FAIL, align 4
  store i32 %560, i32* %23, align 4
  br label %583

561:                                              ; preds = %547
  %562 = load %struct.wilc_spi*, %struct.wilc_spi** %15, align 8
  %563 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %576, label %566

566:                                              ; preds = %561
  %567 = load %struct.wilc*, %struct.wilc** %8, align 8
  %568 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %569 = call i64 @wilc_spi_rx(%struct.wilc* %567, i32* %568, i32 2)
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %576

571:                                              ; preds = %566
  %572 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  %573 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %572, i32 0, i32 0
  %574 = call i32 (i32*, i8*, ...) @dev_err(i32* %573, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %575 = load i32, i32* @N_FAIL, align 4
  store i32 %575, i32* %23, align 4
  br label %583

576:                                              ; preds = %566, %561
  %577 = load i32, i32* %29, align 4
  %578 = load i32, i32* %27, align 4
  %579 = add nsw i32 %578, %577
  store i32 %579, i32* %27, align 4
  %580 = load i32, i32* %29, align 4
  %581 = load i32, i32* %12, align 4
  %582 = sub nsw i32 %581, %580
  store i32 %582, i32* %12, align 4
  br label %510

583:                                              ; preds = %571, %556, %546, %510
  br label %584

584:                                              ; preds = %583, %430
  br label %585

585:                                              ; preds = %584, %426
  %586 = load i32, i32* %23, align 4
  store i32 %586, i32* %7, align 4
  br label %587

587:                                              ; preds = %585, %497, %482, %420, %392, %345, %301, %286, %260, %231, %169
  %588 = load i32, i32* %7, align 4
  ret i32 %588
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @crc7(i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @wilc_spi_tx_rx(%struct.wilc*, i32*, i32*, i32) #1

declare dso_local i64 @wilc_spi_rx(%struct.wilc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
