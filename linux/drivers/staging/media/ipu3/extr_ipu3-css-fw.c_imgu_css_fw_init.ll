; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-fw.c_imgu_css_fw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-fw.c_imgu_css_fw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { i32, i32*, i64, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.imgu_fw_header*, %struct.device* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.imgu_fw_header = type { %struct.imgu_fw_info*, %struct.TYPE_16__ }
%struct.imgu_fw_info = type { i64, %struct.TYPE_15__, %struct.TYPE_26__ }
%struct.TYPE_15__ = type { i32, i64, i64, i64, i64, i64, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_25__ = type { i64, i64, i64*, i64*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.imgu_device = type { i32 }

@imgu_css_fw_init.BLOCK_MAX = internal constant i64 65536, align 8
@IMGU_FW_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"loaded firmware version %.64s, %u binaries, %zu bytes\0A\00", align 1
@IMGU_ABI_MAX_BINARY_NAME = common dso_local global i64 0, align 8
@IMGU_FW_BOOTLOADER_FIRMWARE = common dso_local global i64 0, align 8
@IMGU_FW_SP_FIRMWARE = common dso_local global i64 0, align 8
@IMGU_FW_SP1_FIRMWARE = common dso_local global i64 0, align 8
@IMGU_FW_ISP_FIRMWARE = common dso_local global i64 0, align 8
@IPU3_CSS_PIPE_ID_NUM = common dso_local global i64 0, align 8
@IPU3_UAPI_MAX_STRIPES = common dso_local global i64 0, align 8
@IMGU_ABI_FRAME_FORMAT_NUM = common dso_local global i64 0, align 8
@IMGU_ABI_PARAM_CLASS_PARAM = common dso_local global i64 0, align 8
@IMGU_ABI_PARAM_CLASS_CONFIG = common dso_local global i64 0, align 8
@IMGU_ABI_PARAM_CLASS_STATE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid firmware binary, size %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_css_fw_init(%struct.imgu_css* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imgu_css*, align 8
  %4 = alloca %struct.imgu_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.imgu_fw_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.imgu_fw_info*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.imgu_css* %0, %struct.imgu_css** %3, align 8
  %16 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %17 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %16, i32 0, i32 6
  %18 = load %struct.device*, %struct.device** %17, align 8
  %19 = call %struct.imgu_device* @dev_get_drvdata(%struct.device* %18)
  store %struct.imgu_device* %19, %struct.imgu_device** %4, align 8
  %20 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %21 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %20, i32 0, i32 6
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %5, align 8
  %23 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %24 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %23, i32 0, i32 3
  %25 = load i32, i32* @IMGU_FW_NAME, align 4
  %26 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %27 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %26, i32 0, i32 6
  %28 = load %struct.device*, %struct.device** %27, align 8
  %29 = call i32 @request_firmware(%struct.TYPE_17__** %24, i32 %25, %struct.device* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %2, align 4
  br label %704

34:                                               ; preds = %1
  %35 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %36 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %35, i32 0, i32 3
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.imgu_fw_header*
  %41 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %42 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %41, i32 0, i32 5
  store %struct.imgu_fw_header* %40, %struct.imgu_fw_header** %42, align 8
  %43 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %44 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %43, i32 0, i32 3
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 8
  br i1 %49, label %59, label %50

50:                                               ; preds = %34
  %51 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %52 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %51, i32 0, i32 5
  %53 = load %struct.imgu_fw_header*, %struct.imgu_fw_header** %52, align 8
  %54 = getelementptr inbounds %struct.imgu_fw_header, %struct.imgu_fw_header* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 4
  br i1 %58, label %59, label %60

59:                                               ; preds = %50, %34
  br label %690

60:                                               ; preds = %50
  %61 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %62 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %61, i32 0, i32 5
  %63 = load %struct.imgu_fw_header*, %struct.imgu_fw_header** %62, align 8
  %64 = getelementptr inbounds %struct.imgu_fw_header, %struct.imgu_fw_header* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 240
  %69 = add i64 4, %68
  %70 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %71 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %70, i32 0, i32 3
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp ugt i64 %69, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  br label %690

78:                                               ; preds = %60
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %81 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %80, i32 0, i32 5
  %82 = load %struct.imgu_fw_header*, %struct.imgu_fw_header** %81, align 8
  %83 = getelementptr inbounds %struct.imgu_fw_header, %struct.imgu_fw_header* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %87 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %86, i32 0, i32 5
  %88 = load %struct.imgu_fw_header*, %struct.imgu_fw_header** %87, align 8
  %89 = getelementptr inbounds %struct.imgu_fw_header, %struct.imgu_fw_header* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %93 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %92, i32 0, i32 3
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dev_info(%struct.device* %79, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %91, i32 %96)
  %98 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %99 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %98, i32 0, i32 5
  %100 = load %struct.imgu_fw_header*, %struct.imgu_fw_header** %99, align 8
  %101 = getelementptr inbounds %struct.imgu_fw_header, %struct.imgu_fw_header* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %8, align 4
  %104 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %105 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %104, i32 0, i32 0
  store i32 -1, i32* %105, align 8
  %106 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %107 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 -1, i32* %109, align 4
  %110 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %111 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 -1, i32* %113, align 4
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %592, %78
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %595

118:                                              ; preds = %114
  %119 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %120 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %119, i32 0, i32 5
  %121 = load %struct.imgu_fw_header*, %struct.imgu_fw_header** %120, align 8
  %122 = getelementptr inbounds %struct.imgu_fw_header, %struct.imgu_fw_header* %121, i32 0, i32 0
  %123 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %123, i64 %125
  store %struct.imgu_fw_info* %126, %struct.imgu_fw_info** %10, align 8
  %127 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %128 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %127, i32 0, i32 5
  %129 = load %struct.imgu_fw_header*, %struct.imgu_fw_header** %128, align 8
  %130 = bitcast %struct.imgu_fw_header* %129 to i8*
  %131 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %132 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr i8, i8* %130, i64 %135
  store i8* %136, i8** %11, align 8
  %137 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %138 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %142 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %141, i32 0, i32 3
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sge i32 %140, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %118
  br label %690

148:                                              ; preds = %118
  %149 = load i8*, i8** %11, align 8
  %150 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %151 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %150, i32 0, i32 3
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %156 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %154, %158
  %160 = call i64 @strnlen(i8* %149, i32 %159)
  store i64 %160, i64* %12, align 8
  %161 = load i64, i64* %12, align 8
  %162 = add i64 %161, 1
  %163 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %164 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %163, i32 0, i32 3
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %169 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %167, %171
  %173 = sext i32 %172 to i64
  %174 = icmp ugt i64 %162, %173
  br i1 %174, label %180, label %175

175:                                              ; preds = %148
  %176 = load i64, i64* %12, align 8
  %177 = add i64 %176, 1
  %178 = load i64, i64* @IMGU_ABI_MAX_BINARY_NAME, align 8
  %179 = icmp uge i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %175, %148
  br label %690

181:                                              ; preds = %175
  %182 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %183 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %187 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %191 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %189, %193
  %195 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %196 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %194, %198
  %200 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %201 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %199, %203
  %205 = icmp ne i64 %185, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %181
  br label %690

207:                                              ; preds = %181
  %208 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %209 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %214 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %212, %216
  %218 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %219 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %218, i32 0, i32 3
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = icmp sgt i64 %217, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %207
  br label %690

226:                                              ; preds = %207
  %227 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %228 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @IMGU_FW_BOOTLOADER_FIRMWARE, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %267

232:                                              ; preds = %226
  %233 = load i32, i32* %6, align 4
  %234 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %235 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %237 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %242 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = icmp sge i64 %240, %243
  br i1 %244, label %265, label %245

245:                                              ; preds = %232
  %246 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %247 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %252 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp sge i64 %250, %253
  br i1 %254, label %265, label %255

255:                                              ; preds = %245
  %256 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %257 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %262 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp sge i64 %260, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %255, %245, %232
  br label %690

266:                                              ; preds = %255
  br label %267

267:                                              ; preds = %266, %226
  %268 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %269 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @IMGU_FW_SP_FIRMWARE, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %279, label %273

273:                                              ; preds = %267
  %274 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %275 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @IMGU_FW_SP1_FIRMWARE, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %395

279:                                              ; preds = %273, %267
  %280 = load i32, i32* %6, align 4
  %281 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %282 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %285 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @IMGU_FW_SP_FIRMWARE, align 8
  %288 = icmp eq i64 %286, %287
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i32 0, i32 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %283, i64 %291
  store i32 %280, i32* %292, align 4
  %293 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %294 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %299 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = icmp sge i64 %297, %300
  br i1 %301, label %393, label %302

302:                                              ; preds = %279
  %303 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %304 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %309 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = icmp sge i64 %307, %310
  br i1 %311, label %393, label %312

312:                                              ; preds = %302
  %313 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %314 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %319 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = icmp sge i64 %317, %320
  br i1 %321, label %393, label %322

322:                                              ; preds = %312
  %323 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %324 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %329 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = icmp sge i64 %327, %330
  br i1 %331, label %393, label %332

332:                                              ; preds = %322
  %333 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %334 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 4
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %339 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  %341 = icmp sge i64 %337, %340
  br i1 %341, label %393, label %342

342:                                              ; preds = %332
  %343 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %344 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 5
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %349 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = icmp sge i64 %347, %350
  br i1 %351, label %393, label %352

352:                                              ; preds = %342
  %353 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %354 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 6
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %359 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = icmp sge i64 %357, %360
  br i1 %361, label %393, label %362

362:                                              ; preds = %352
  %363 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %364 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %365, i32 0, i32 7
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %369 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = icmp sge i64 %367, %370
  br i1 %371, label %393, label %372

372:                                              ; preds = %362
  %373 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %374 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 8
  %377 = load i64, i64* %376, align 8
  %378 = add nsw i64 %377, 12
  %379 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %380 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = icmp sge i64 %378, %381
  br i1 %382, label %393, label %383

383:                                              ; preds = %372
  %384 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %385 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %386, i32 0, i32 9
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %390 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = icmp sge i64 %388, %391
  br i1 %392, label %393, label %394

393:                                              ; preds = %383, %372, %362, %352, %342, %332, %322, %312, %302, %279
  br label %690

394:                                              ; preds = %383
  br label %395

395:                                              ; preds = %394, %273
  %396 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %397 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @IMGU_FW_ISP_FIRMWARE, align 8
  %400 = icmp ne i64 %398, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %395
  br label %592

402:                                              ; preds = %395
  %403 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %404 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %405, i32 0, i32 4
  %407 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %406, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @IPU3_CSS_PIPE_ID_NUM, align 8
  %411 = icmp sge i64 %409, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %402
  br label %690

413:                                              ; preds = %402
  %414 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %415 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %416, i32 0, i32 4
  %418 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @IPU3_UAPI_MAX_STRIPES, align 8
  %422 = icmp sgt i64 %420, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %413
  br label %690

424:                                              ; preds = %413
  %425 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %426 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %425, i32 0, i32 2
  %427 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @IMGU_ABI_FRAME_FORMAT_NUM, align 8
  %431 = icmp sgt i64 %429, %430
  br i1 %431, label %440, label %432

432:                                              ; preds = %424
  %433 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %434 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %433, i32 0, i32 2
  %435 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %435, i32 0, i32 1
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* @IMGU_ABI_FRAME_FORMAT_NUM, align 8
  %439 = icmp sgt i64 %437, %438
  br i1 %439, label %440, label %441

440:                                              ; preds = %432, %424
  br label %690

441:                                              ; preds = %432
  store i32 0, i32* %7, align 4
  br label %442

442:                                              ; preds = %465, %441
  %443 = load i32, i32* %7, align 4
  %444 = zext i32 %443 to i64
  %445 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %446 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %445, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = icmp slt i64 %444, %449
  br i1 %450, label %451, label %468

451:                                              ; preds = %442
  %452 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %453 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %452, i32 0, i32 2
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %454, i32 0, i32 2
  %456 = load i64*, i64** %455, align 8
  %457 = load i32, i32* %7, align 4
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds i64, i64* %456, i64 %458
  %460 = load i64, i64* %459, align 8
  %461 = load i64, i64* @IMGU_ABI_FRAME_FORMAT_NUM, align 8
  %462 = icmp sge i64 %460, %461
  br i1 %462, label %463, label %464

463:                                              ; preds = %451
  br label %690

464:                                              ; preds = %451
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %7, align 4
  %467 = add i32 %466, 1
  store i32 %467, i32* %7, align 4
  br label %442

468:                                              ; preds = %442
  store i32 0, i32* %7, align 4
  br label %469

469:                                              ; preds = %492, %468
  %470 = load i32, i32* %7, align 4
  %471 = zext i32 %470 to i64
  %472 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %473 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = icmp slt i64 %471, %476
  br i1 %477, label %478, label %495

478:                                              ; preds = %469
  %479 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %480 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %481, i32 0, i32 3
  %483 = load i64*, i64** %482, align 8
  %484 = load i32, i32* %7, align 4
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds i64, i64* %483, i64 %485
  %487 = load i64, i64* %486, align 8
  %488 = load i64, i64* @IMGU_ABI_FRAME_FORMAT_NUM, align 8
  %489 = icmp sge i64 %487, %488
  br i1 %489, label %490, label %491

490:                                              ; preds = %478
  br label %690

491:                                              ; preds = %478
  br label %492

492:                                              ; preds = %491
  %493 = load i32, i32* %7, align 4
  %494 = add i32 %493, 1
  store i32 %494, i32* %7, align 4
  br label %469

495:                                              ; preds = %469
  %496 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %497 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %496, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %498, i32 0, i32 4
  %500 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = icmp sle i64 %502, 0
  br i1 %503, label %531, label %504

504:                                              ; preds = %495
  %505 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %506 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %505, i32 0, i32 2
  %507 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %507, i32 0, i32 4
  %509 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = icmp sgt i64 %511, 65536
  br i1 %512, label %531, label %513

513:                                              ; preds = %504
  %514 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %515 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %516, i32 0, i32 4
  %518 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %518, i32 0, i32 1
  %520 = load i64, i64* %519, align 8
  %521 = icmp sle i64 %520, 0
  br i1 %521, label %531, label %522

522:                                              ; preds = %513
  %523 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %524 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %523, i32 0, i32 2
  %525 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %525, i32 0, i32 4
  %527 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %527, i32 0, i32 1
  %529 = load i64, i64* %528, align 8
  %530 = icmp sgt i64 %529, 65536
  br i1 %530, label %531, label %532

531:                                              ; preds = %522, %513, %504, %495
  br label %690

532:                                              ; preds = %522
  %533 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %534 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %534, i32 0, i32 7
  %536 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %535, i32 0, i32 0
  %537 = load i32*, i32** %536, align 8
  %538 = load i64, i64* @IMGU_ABI_PARAM_CLASS_PARAM, align 8
  %539 = getelementptr inbounds i32, i32* %537, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  %542 = add i64 %541, 4
  %543 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %544 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %543, i32 0, i32 3
  %545 = load %struct.TYPE_17__*, %struct.TYPE_17__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = sext i32 %547 to i64
  %549 = icmp ugt i64 %542, %548
  br i1 %549, label %586, label %550

550:                                              ; preds = %532
  %551 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %552 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %552, i32 0, i32 7
  %554 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %553, i32 0, i32 0
  %555 = load i32*, i32** %554, align 8
  %556 = load i64, i64* @IMGU_ABI_PARAM_CLASS_CONFIG, align 8
  %557 = getelementptr inbounds i32, i32* %555, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = sext i32 %558 to i64
  %560 = add i64 %559, 4
  %561 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %562 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %561, i32 0, i32 3
  %563 = load %struct.TYPE_17__*, %struct.TYPE_17__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = sext i32 %565 to i64
  %567 = icmp ugt i64 %560, %566
  br i1 %567, label %586, label %568

568:                                              ; preds = %550
  %569 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %570 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %570, i32 0, i32 7
  %572 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %571, i32 0, i32 0
  %573 = load i32*, i32** %572, align 8
  %574 = load i64, i64* @IMGU_ABI_PARAM_CLASS_STATE, align 8
  %575 = getelementptr inbounds i32, i32* %573, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = sext i32 %576 to i64
  %578 = add i64 %577, 4
  %579 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %580 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %579, i32 0, i32 3
  %581 = load %struct.TYPE_17__*, %struct.TYPE_17__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = sext i32 %583 to i64
  %585 = icmp ugt i64 %578, %584
  br i1 %585, label %586, label %587

586:                                              ; preds = %568, %550, %532
  br label %690

587:                                              ; preds = %568
  %588 = load %struct.device*, %struct.device** %5, align 8
  %589 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %10, align 8
  %590 = load i8*, i8** %11, align 8
  %591 = call i32 @imgu_css_fw_show_binary(%struct.device* %588, %struct.imgu_fw_info* %589, i8* %590)
  br label %592

592:                                              ; preds = %587, %401
  %593 = load i32, i32* %6, align 4
  %594 = add i32 %593, 1
  store i32 %594, i32* %6, align 4
  br label %114

595:                                              ; preds = %114
  %596 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %597 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = icmp eq i32 %598, -1
  br i1 %599, label %614, label %600

600:                                              ; preds = %595
  %601 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %602 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %601, i32 0, i32 1
  %603 = load i32*, i32** %602, align 8
  %604 = getelementptr inbounds i32, i32* %603, i64 0
  %605 = load i32, i32* %604, align 4
  %606 = icmp eq i32 %605, -1
  br i1 %606, label %614, label %607

607:                                              ; preds = %600
  %608 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %609 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %608, i32 0, i32 1
  %610 = load i32*, i32** %609, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 1
  %612 = load i32, i32* %611, align 4
  %613 = icmp eq i32 %612, -1
  br i1 %613, label %614, label %615

614:                                              ; preds = %607, %600, %595
  br label %690

615:                                              ; preds = %607
  %616 = load i32, i32* %8, align 4
  %617 = load i32, i32* @GFP_KERNEL, align 4
  %618 = call %struct.TYPE_18__* @kcalloc(i32 %616, i32 4, i32 %617)
  %619 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %620 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %619, i32 0, i32 4
  store %struct.TYPE_18__* %618, %struct.TYPE_18__** %620, align 8
  %621 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %622 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %621, i32 0, i32 4
  %623 = load %struct.TYPE_18__*, %struct.TYPE_18__** %622, align 8
  %624 = icmp ne %struct.TYPE_18__* %623, null
  br i1 %624, label %628, label %625

625:                                              ; preds = %615
  %626 = load i32, i32* @ENOMEM, align 4
  %627 = sub nsw i32 0, %626
  store i32 %627, i32* %9, align 4
  br label %700

628:                                              ; preds = %615
  store i32 0, i32* %6, align 4
  br label %629

629:                                              ; preds = %686, %628
  %630 = load i32, i32* %6, align 4
  %631 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %632 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %631, i32 0, i32 5
  %633 = load %struct.imgu_fw_header*, %struct.imgu_fw_header** %632, align 8
  %634 = getelementptr inbounds %struct.imgu_fw_header, %struct.imgu_fw_header* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 4
  %637 = icmp ult i32 %630, %636
  br i1 %637, label %638, label %689

638:                                              ; preds = %629
  %639 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %640 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %639, i32 0, i32 5
  %641 = load %struct.imgu_fw_header*, %struct.imgu_fw_header** %640, align 8
  %642 = getelementptr inbounds %struct.imgu_fw_header, %struct.imgu_fw_header* %641, i32 0, i32 0
  %643 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %642, align 8
  %644 = load i32, i32* %6, align 4
  %645 = zext i32 %644 to i64
  %646 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %643, i64 %645
  store %struct.imgu_fw_info* %646, %struct.imgu_fw_info** %13, align 8
  %647 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %648 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %647, i32 0, i32 5
  %649 = load %struct.imgu_fw_header*, %struct.imgu_fw_header** %648, align 8
  %650 = bitcast %struct.imgu_fw_header* %649 to i8*
  %651 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %13, align 8
  %652 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %652, i32 0, i32 6
  %654 = load i32, i32* %653, align 8
  %655 = sext i32 %654 to i64
  %656 = getelementptr i8, i8* %650, i64 %655
  store i8* %656, i8** %14, align 8
  %657 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %13, align 8
  %658 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %657, i32 0, i32 1
  %659 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %658, i32 0, i32 1
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %15, align 8
  %661 = load %struct.imgu_device*, %struct.imgu_device** %4, align 8
  %662 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %663 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %662, i32 0, i32 4
  %664 = load %struct.TYPE_18__*, %struct.TYPE_18__** %663, align 8
  %665 = load i32, i32* %6, align 4
  %666 = zext i32 %665 to i64
  %667 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %664, i64 %666
  %668 = load i64, i64* %15, align 8
  %669 = call i32 @imgu_dmamap_alloc(%struct.imgu_device* %661, %struct.TYPE_18__* %667, i64 %668)
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %674, label %671

671:                                              ; preds = %638
  %672 = load i32, i32* @ENOMEM, align 4
  %673 = sub nsw i32 0, %672
  store i32 %673, i32* %9, align 4
  br label %700

674:                                              ; preds = %638
  %675 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %676 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %675, i32 0, i32 4
  %677 = load %struct.TYPE_18__*, %struct.TYPE_18__** %676, align 8
  %678 = load i32, i32* %6, align 4
  %679 = zext i32 %678 to i64
  %680 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %677, i64 %679
  %681 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 4
  %683 = load i8*, i8** %14, align 8
  %684 = load i64, i64* %15, align 8
  %685 = call i32 @memcpy(i32 %682, i8* %683, i64 %684)
  br label %686

686:                                              ; preds = %674
  %687 = load i32, i32* %6, align 4
  %688 = add i32 %687, 1
  store i32 %688, i32* %6, align 4
  br label %629

689:                                              ; preds = %629
  store i32 0, i32* %2, align 4
  br label %704

690:                                              ; preds = %614, %586, %531, %490, %463, %440, %423, %412, %393, %265, %225, %206, %180, %147, %77, %59
  %691 = load %struct.device*, %struct.device** %5, align 8
  %692 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %693 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %692, i32 0, i32 3
  %694 = load %struct.TYPE_17__*, %struct.TYPE_17__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %694, i32 0, i32 0
  %696 = load i32, i32* %695, align 8
  %697 = call i32 @dev_err(%struct.device* %691, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %696)
  %698 = load i32, i32* @ENODEV, align 4
  %699 = sub nsw i32 0, %698
  store i32 %699, i32* %9, align 4
  br label %700

700:                                              ; preds = %690, %671, %625
  %701 = load %struct.imgu_css*, %struct.imgu_css** %3, align 8
  %702 = call i32 @imgu_css_fw_cleanup(%struct.imgu_css* %701)
  %703 = load i32, i32* %9, align 4
  store i32 %703, i32* %2, align 4
  br label %704

704:                                              ; preds = %700, %689, %32
  %705 = load i32, i32* %2, align 4
  ret i32 %705
}

declare dso_local %struct.imgu_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_17__**, i32, %struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local i32 @imgu_css_fw_show_binary(%struct.device*, %struct.imgu_fw_info*, i8*) #1

declare dso_local %struct.TYPE_18__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @imgu_dmamap_alloc(%struct.imgu_device*, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @imgu_css_fw_cleanup(%struct.imgu_css*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
