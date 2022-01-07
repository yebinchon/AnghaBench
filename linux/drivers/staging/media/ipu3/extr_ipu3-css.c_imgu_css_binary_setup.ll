; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_binary_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_binary_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { i32, %struct.TYPE_10__*, %struct.imgu_css_pipe* }
%struct.TYPE_10__ = type { %struct.imgu_fw_info* }
%struct.imgu_fw_info = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32 }
%struct.imgu_css_pipe = type { i64, %struct.TYPE_18__*, %struct.TYPE_13__*, i32** }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.imgu_device = type { i32 }

@imgu_css_binary_setup.BYPC = internal constant i32 2, align 4
@IMGU_ABI_PARAM_CLASS_CONFIG = common dso_local global i32 0, align 4
@IMGU_ABI_PARAM_CLASS_NUM = common dso_local global i32 0, align 4
@IMGU_ABI_NUM_MEMORIES = common dso_local global i32 0, align 4
@IPU3_CSS_AUX_FRAME_REF = common dso_local global i64 0, align 8
@IPU3_CSS_RECT_BDS = common dso_local global i64 0, align 8
@IMGU_DVS_BLOCK_H = common dso_local global i32 0, align 4
@IMGU_GDC_BUF_Y = common dso_local global i32 0, align 4
@IPU3_UAPI_ISP_VEC_ELEMS = common dso_local global i32 0, align 4
@IMGU_GDC_BUF_X = common dso_local global i32 0, align 4
@IPU3_CSS_AUX_FRAMES = common dso_local global i32 0, align 4
@IPU3_CSS_AUX_FRAME_TNR = common dso_local global i64 0, align 8
@IPU3_CSS_RECT_GDC = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_css*, i32)* @imgu_css_binary_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_css_binary_setup(%struct.imgu_css* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imgu_css*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imgu_css_pipe*, align 8
  %7 = alloca %struct.imgu_fw_info*, align 8
  %8 = alloca %struct.imgu_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %15 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %14, i32 0, i32 2
  %16 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %16, i64 %18
  store %struct.imgu_css_pipe* %19, %struct.imgu_css_pipe** %6, align 8
  %20 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %21 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %23, align 8
  %25 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %26 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %24, i64 %27
  store %struct.imgu_fw_info* %28, %struct.imgu_fw_info** %7, align 8
  %29 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %30 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.imgu_device* @dev_get_drvdata(i32 %31)
  store %struct.imgu_device* %32, %struct.imgu_device** %8, align 8
  %33 = load i32, i32* @IMGU_ABI_PARAM_CLASS_CONFIG, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %80, %2
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @IMGU_ABI_PARAM_CLASS_NUM, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %83

38:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %76, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @IMGU_ABI_NUM_MEMORIES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %39
  %44 = load %struct.imgu_device*, %struct.imgu_device** %8, align 8
  %45 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %46 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %45, i32 0, i32 3
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %47, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %7, align 8
  %57 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %62, i64 %64
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @imgu_css_dma_buffer_resize(%struct.imgu_device* %44, i32* %55, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %43
  br label %298

75:                                               ; preds = %43
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %39

79:                                               ; preds = %39
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %34

83:                                               ; preds = %34
  %84 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %85 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %84, i32 0, i32 1
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = load i64, i64* @IPU3_CSS_AUX_FRAME_REF, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  store i32 2, i32* %89, align 8
  %90 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %91 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %90, i32 0, i32 2
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i64, i64* @IPU3_CSS_RECT_BDS, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %98 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %97, i32 0, i32 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = load i64, i64* @IPU3_CSS_AUX_FRAME_REF, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  store i32 %96, i32* %102, align 4
  %103 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %104 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %103, i32 0, i32 2
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = load i64, i64* @IPU3_CSS_RECT_BDS, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IMGU_DVS_BLOCK_H, align 4
  %111 = call i32 @ALIGN(i32 %109, i32 %110)
  %112 = load i32, i32* @IMGU_GDC_BUF_Y, align 4
  %113 = mul nsw i32 2, %112
  %114 = add i32 %111, %113
  %115 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %116 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %115, i32 0, i32 1
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = load i64, i64* @IPU3_CSS_AUX_FRAME_REF, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  store i32 %114, i32* %120, align 8
  %121 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %122 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %121, i32 0, i32 1
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = load i64, i64* @IPU3_CSS_AUX_FRAME_REF, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %13, align 4
  %128 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %129 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %128, i32 0, i32 2
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = load i64, i64* @IPU3_CSS_RECT_BDS, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IPU3_UAPI_ISP_VEC_ELEMS, align 4
  %136 = mul nsw i32 2, %135
  %137 = call i32 @ALIGN(i32 %134, i32 %136)
  %138 = load i32, i32* @IMGU_GDC_BUF_X, align 4
  %139 = mul nsw i32 2, %138
  %140 = add i32 %137, %139
  store i32 %140, i32* %12, align 4
  %141 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %142 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %141, i32 0, i32 1
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = load i64, i64* @IPU3_CSS_AUX_FRAME_REF, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = mul i32 %147, %148
  %150 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %151 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %150, i32 0, i32 1
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = load i64, i64* @IPU3_CSS_AUX_FRAME_REF, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 3
  store i32 %149, i32* %155, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = mul i32 %156, %157
  %159 = mul i32 %158, 2
  %160 = load i32, i32* %12, align 4
  %161 = udiv i32 %160, 2
  %162 = load i32, i32* %13, align 4
  %163 = udiv i32 %162, 2
  %164 = mul i32 %161, %163
  %165 = mul i32 %164, 2
  %166 = mul i32 %165, 2
  %167 = add i32 %159, %166
  store i32 %167, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %189, %83
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @IPU3_CSS_AUX_FRAMES, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %192

172:                                              ; preds = %168
  %173 = load %struct.imgu_device*, %struct.imgu_device** %8, align 8
  %174 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %175 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %174, i32 0, i32 1
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = load i64, i64* @IPU3_CSS_AUX_FRAME_REF, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %11, align 4
  %185 = call i64 @imgu_css_dma_buffer_resize(%struct.imgu_device* %173, i32* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %172
  br label %298

188:                                              ; preds = %172
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %168

192:                                              ; preds = %168
  %193 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %194 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %193, i32 0, i32 1
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %194, align 8
  %196 = load i64, i64* @IPU3_CSS_AUX_FRAME_TNR, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  %199 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %200 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %199, i32 0, i32 2
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = load i64, i64* @IPU3_CSS_RECT_GDC, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %7, align 8
  %207 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @IPU3_UAPI_ISP_VEC_ELEMS, align 4
  %214 = mul nsw i32 %212, %213
  %215 = call i8* @roundup(i32 %205, i32 %214)
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %218 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %217, i32 0, i32 1
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %218, align 8
  %220 = load i64, i64* @IPU3_CSS_AUX_FRAME_TNR, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  store i32 %216, i32* %222, align 4
  %223 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %224 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %223, i32 0, i32 2
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %224, align 8
  %226 = load i64, i64* @IPU3_CSS_RECT_GDC, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %7, align 8
  %231 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @roundup(i32 %229, i32 %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %240 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %239, i32 0, i32 1
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = load i64, i64* @IPU3_CSS_AUX_FRAME_TNR, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 2
  store i32 %238, i32* %244, align 8
  %245 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %246 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %245, i32 0, i32 1
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = load i64, i64* @IPU3_CSS_AUX_FRAME_TNR, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  %253 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %254 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %253, i32 0, i32 1
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %254, align 8
  %256 = load i64, i64* @IPU3_CSS_AUX_FRAME_TNR, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 3
  store i32 %252, i32* %258, align 4
  %259 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %260 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %259, i32 0, i32 1
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %260, align 8
  %262 = load i64, i64* @IPU3_CSS_AUX_FRAME_TNR, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  store i32 %265, i32* %13, align 4
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* %13, align 4
  %268 = mul i32 %267, 3
  %269 = udiv i32 %268, 2
  %270 = add i32 %269, 3
  %271 = call i32 @ALIGN(i32 %270, i32 2)
  %272 = mul i32 %266, %271
  store i32 %272, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %273

273:                                              ; preds = %294, %192
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* @IPU3_CSS_AUX_FRAMES, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %297

277:                                              ; preds = %273
  %278 = load %struct.imgu_device*, %struct.imgu_device** %8, align 8
  %279 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %6, align 8
  %280 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %279, i32 0, i32 1
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = load i64, i64* @IPU3_CSS_AUX_FRAME_TNR, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 4
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %9, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %11, align 4
  %290 = call i64 @imgu_css_dma_buffer_resize(%struct.imgu_device* %278, i32* %288, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %277
  br label %298

293:                                              ; preds = %277
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %9, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %9, align 4
  br label %273

297:                                              ; preds = %273
  store i32 0, i32* %3, align 4
  br label %304

298:                                              ; preds = %292, %187, %74
  %299 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %300 = load i32, i32* %5, align 4
  %301 = call i32 @imgu_css_binary_cleanup(%struct.imgu_css* %299, i32 %300)
  %302 = load i32, i32* @ENOMEM, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %3, align 4
  br label %304

304:                                              ; preds = %298, %297
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local %struct.imgu_device* @dev_get_drvdata(i32) #1

declare dso_local i64 @imgu_css_dma_buffer_resize(%struct.imgu_device*, i32*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local i32 @imgu_css_binary_cleanup(%struct.imgu_css*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
