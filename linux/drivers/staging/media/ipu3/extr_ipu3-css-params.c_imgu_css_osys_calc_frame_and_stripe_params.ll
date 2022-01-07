; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_osys_calc_frame_and_stripe_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_osys_calc_frame_and_stripe_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { i32, %struct.imgu_css_pipe* }
%struct.imgu_css_pipe = type { %struct.TYPE_10__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.imgu_abi_osys_config = type { i32 }
%struct.imgu_css_scaler_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.imgu_css_frame_params = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i64, i64, i64 }
%struct.imgu_css_stripe_params = type { i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.imgu_css_reso = type { i32, i32, i64*, i64*, i32, i32, i32, i32, i32*, i32*, i32 }

@IPU3_CSS_RECT_GDC = common dso_local global i64 0, align 8
@IPU3_CSS_QUEUE_VF = common dso_local global i64 0, align 8
@IPU3_CSS_QUEUE_OUT = common dso_local global i64 0, align 8
@IMGU_ABI_OSYS_PIN_OUT = common dso_local global i64 0, align 8
@IMGU_ABI_OSYS_PIN_VF = common dso_local global i64 0, align 8
@IMGU_ABI_OSYS_PINS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMGU_OSYS_DMA_CROP_W_LIMIT = common dso_local global i32 0, align 4
@IMGU_OSYS_DMA_CROP_H_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"osys scaler procmode is %u\00", align 1
@IMGU_OSYS_BLOCK_WIDTH = common dso_local global i32 0, align 4
@IMGU_OSYS_BLOCK_HEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"OSYS input width is not multiple of 8 or\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"height is not multiple of 4\0A\00", align 1
@IPU3_UAPI_ISP_VEC_ELEMS = common dso_local global i32 0, align 4
@IMGU_LUMA_TO_CHROMA_RATIO = common dso_local global i32 0, align 4
@IMGU_OSYS_FIR_PHASES = common dso_local global i32 0, align 4
@IMGU_OSYS_TAPS_UV = common dso_local global i32 0, align 4
@IMGU_INPUT_BLOCK_WIDTH = common dso_local global i32 0, align 4
@IMGU_OSYS_TAPS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_css*, i32, %struct.imgu_abi_osys_config*, %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info*, %struct.imgu_css_frame_params*, %struct.imgu_css_stripe_params*, i32)* @imgu_css_osys_calc_frame_and_stripe_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_css_osys_calc_frame_and_stripe_params(%struct.imgu_css* %0, i32 %1, %struct.imgu_abi_osys_config* %2, %struct.imgu_css_scaler_info* %3, %struct.imgu_css_scaler_info* %4, %struct.imgu_css_frame_params* %5, %struct.imgu_css_stripe_params* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.imgu_css*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.imgu_abi_osys_config*, align 8
  %13 = alloca %struct.imgu_css_scaler_info*, align 8
  %14 = alloca %struct.imgu_css_scaler_info*, align 8
  %15 = alloca %struct.imgu_css_frame_params*, align 8
  %16 = alloca %struct.imgu_css_stripe_params*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.imgu_css_reso, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.imgu_css_pipe*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.imgu_abi_osys_config* %2, %struct.imgu_abi_osys_config** %12, align 8
  store %struct.imgu_css_scaler_info* %3, %struct.imgu_css_scaler_info** %13, align 8
  store %struct.imgu_css_scaler_info* %4, %struct.imgu_css_scaler_info** %14, align 8
  store %struct.imgu_css_frame_params* %5, %struct.imgu_css_frame_params** %15, align 8
  store %struct.imgu_css_stripe_params* %6, %struct.imgu_css_stripe_params** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %26, align 4
  %60 = load %struct.imgu_css*, %struct.imgu_css** %10, align 8
  %61 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %60, i32 0, i32 1
  %62 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %62, i64 %64
  store %struct.imgu_css_pipe* %65, %struct.imgu_css_pipe** %27, align 8
  %66 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %67 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i64, i64* @IPU3_CSS_RECT_GDC, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %22, align 4
  %73 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %74 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i64, i64* @IPU3_CSS_RECT_GDC, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %23, align 4
  %80 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %81 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i64, i64* @IPU3_CSS_QUEUE_VF, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %24, align 4
  %89 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %90 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i64, i64* @IPU3_CSS_QUEUE_VF, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %25, align 4
  %98 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %99 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i64, i64* @IPU3_CSS_RECT_GDC, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %107 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i64, i64* @IPU3_CSS_RECT_GDC, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  %114 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %115 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i64, i64* @IPU3_CSS_QUEUE_OUT, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 10
  store i32 %122, i32* %123, align 8
  %124 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %125 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load i64, i64* @IPU3_CSS_QUEUE_OUT, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 2
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* @IMGU_ABI_OSYS_PIN_OUT, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  store i64 %133, i64* %137, align 8
  %138 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %139 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i64, i64* @IPU3_CSS_QUEUE_OUT, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 3
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* @IMGU_ABI_OSYS_PIN_OUT, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  store i64 %147, i64* %151, align 8
  %152 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %153 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %152, i32 0, i32 0
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = load i64, i64* @IPU3_CSS_QUEUE_OUT, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 8
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @IMGU_ABI_OSYS_PIN_OUT, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32 %158, i32* %162, align 4
  %163 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %164 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %163, i32 0, i32 0
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load i64, i64* @IPU3_CSS_QUEUE_OUT, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 9
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* @IMGU_ABI_OSYS_PIN_OUT, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32 %171, i32* %175, align 4
  %176 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %177 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load i64, i64* @IPU3_CSS_QUEUE_VF, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 2
  %187 = load i64*, i64** %186, align 8
  %188 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  store i64 %185, i64* %189, align 8
  %190 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %191 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %190, i32 0, i32 0
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = load i64, i64* @IPU3_CSS_QUEUE_VF, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 3
  %201 = load i64*, i64** %200, align 8
  %202 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  store i64 %199, i64* %203, align 8
  %204 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %205 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %204, i32 0, i32 0
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = load i64, i64* @IPU3_CSS_QUEUE_VF, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 8
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  store i32 %210, i32* %214, align 4
  %215 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %216 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %215, i32 0, i32 0
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = load i64, i64* @IPU3_CSS_QUEUE_VF, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 9
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 %223, i32* %227, align 4
  %228 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %229 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %228, i32 0, i32 0
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = load i64, i64* @IPU3_CSS_QUEUE_OUT, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %238 = load i64, i64* @IMGU_ABI_OSYS_PIN_OUT, align 8
  %239 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %237, i64 %238
  %240 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %239, i32 0, i32 0
  store i32 %236, i32* %240, align 8
  %241 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %242 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %241, i32 0, i32 0
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = load i64, i64* @IPU3_CSS_QUEUE_OUT, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %251 = load i64, i64* @IMGU_ABI_OSYS_PIN_OUT, align 8
  %252 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %250, i64 %251
  %253 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %252, i32 0, i32 1
  store i32 %249, i32* %253, align 4
  %254 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %255 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %254, i32 0, i32 0
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = load i64, i64* @IPU3_CSS_QUEUE_VF, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %264 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %265 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %263, i64 %264
  %266 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %265, i32 0, i32 0
  store i32 %262, i32* %266, align 8
  %267 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %27, align 8
  %268 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %267, i32 0, i32 0
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = load i64, i64* @IPU3_CSS_QUEUE_VF, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %277 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %278 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %276, i64 %277
  %279 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %278, i32 0, i32 1
  store i32 %275, i32* %279, align 4
  %280 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %281 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %282 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %280, i64 %281
  %283 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %282, i32 0, i32 6
  store i8* null, i8** %283, align 8
  %284 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %285 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %286 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %284, i64 %285
  %287 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %286, i32 0, i32 7
  store i8* null, i8** %287, align 8
  store i32 0, i32* %20, align 4
  br label %288

288:                                              ; preds = %461, %8
  %289 = load i32, i32* %20, align 4
  %290 = load i32, i32* @IMGU_ABI_OSYS_PINS, align 4
  %291 = icmp ult i32 %289, %290
  br i1 %291, label %292, label %464

292:                                              ; preds = %288
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %293 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %294 = load i32, i32* %20, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %293, i64 %295
  %297 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %296, i32 0, i32 11
  store i64 0, i64* %297, align 8
  %298 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %299 = load i32, i32* %20, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %298, i64 %300
  %302 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %301, i32 0, i32 10
  store i64 0, i64* %302, align 8
  %303 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %304 = load i32, i32* %20, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %303, i64 %305
  %307 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %306, i32 0, i32 9
  store i64 0, i64* %307, align 8
  %308 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 2
  %309 = load i64*, i64** %308, align 8
  %310 = load i32, i32* %20, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %424

315:                                              ; preds = %292
  %316 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 3
  %317 = load i64*, i64** %316, align 8
  %318 = load i32, i32* %20, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds i64, i64* %317, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %424

323:                                              ; preds = %315
  store i32 1, i32* %28, align 4
  %324 = load i32, i32* %20, align 4
  %325 = zext i32 %324 to i64
  %326 = load i64, i64* @IMGU_ABI_OSYS_PIN_OUT, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %392

328:                                              ; preds = %323
  %329 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 2
  %333 = load i64*, i64** %332, align 8
  %334 = load i32, i32* %20, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = icmp slt i64 %331, %337
  br i1 %338, label %350, label %339

339:                                              ; preds = %328
  %340 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 3
  %344 = load i64*, i64** %343, align 8
  %345 = load i32, i32* %20, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %344, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = icmp slt i64 %342, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %339, %328
  %351 = load i32, i32* @EINVAL, align 4
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %9, align 4
  br label %1168

353:                                              ; preds = %339
  %354 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 2
  %358 = load i64*, i64** %357, align 8
  %359 = load i32, i32* %20, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i64, i64* %358, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = sub nsw i64 %356, %362
  %364 = sdiv i64 %363, 2
  %365 = trunc i64 %364 to i32
  %366 = load i32, i32* @IMGU_OSYS_DMA_CROP_W_LIMIT, align 4
  %367 = call i8* @roundclosest_down(i32 %365, i32 %366)
  %368 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %369 = load i32, i32* %20, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %368, i64 %370
  %372 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %371, i32 0, i32 7
  store i8* %367, i8** %372, align 8
  %373 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 3
  %377 = load i64*, i64** %376, align 8
  %378 = load i32, i32* %20, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i64, i64* %377, i64 %379
  %381 = load i64, i64* %380, align 8
  %382 = sub nsw i64 %375, %381
  %383 = sdiv i64 %382, 2
  %384 = trunc i64 %383 to i32
  %385 = load i32, i32* @IMGU_OSYS_DMA_CROP_H_LIMIT, align 4
  %386 = call i8* @roundclosest_down(i32 %384, i32 %385)
  %387 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %388 = load i32, i32* %20, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %387, i64 %389
  %391 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %390, i32 0, i32 6
  store i8* %386, i8** %391, align 8
  br label %416

392:                                              ; preds = %323
  %393 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 2
  %394 = load i64*, i64** %393, align 8
  %395 = load i32, i32* %20, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds i64, i64* %394, i64 %396
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = sext i32 %400 to i64
  %402 = icmp ne i64 %398, %401
  br i1 %402, label %414, label %403

403:                                              ; preds = %392
  %404 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 3
  %405 = load i64*, i64** %404, align 8
  %406 = load i32, i32* %20, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds i64, i64* %405, i64 %407
  %409 = load i64, i64* %408, align 8
  %410 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = icmp ne i64 %409, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %403, %392
  store i32 1, i32* %29, align 4
  br label %415

415:                                              ; preds = %414, %403
  br label %416

416:                                              ; preds = %415, %353
  %417 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 9
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %20, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @imgu_css_osys_set_format(i32 %422, i32* %30, i32* %31)
  br label %425

424:                                              ; preds = %315, %292
  store i32 0, i32* %28, align 4
  br label %425

425:                                              ; preds = %424, %416
  %426 = load i32, i32* %28, align 4
  %427 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %428 = load i32, i32* %20, align 4
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %427, i64 %429
  %431 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %430, i32 0, i32 2
  store i32 %426, i32* %431, align 8
  %432 = load i32, i32* %30, align 4
  %433 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %434 = load i32, i32* %20, align 4
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %433, i64 %435
  %437 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %436, i32 0, i32 3
  store i32 %432, i32* %437, align 4
  %438 = load i32, i32* %31, align 4
  %439 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %440 = load i32, i32* %20, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %439, i64 %441
  %443 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %442, i32 0, i32 4
  store i32 %438, i32* %443, align 8
  %444 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 8
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %20, align 4
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %451 = load i32, i32* %20, align 4
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %450, i64 %452
  %454 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %453, i32 0, i32 8
  store i32 %449, i32* %454, align 8
  %455 = load i32, i32* %29, align 4
  %456 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %457 = load i32, i32* %20, align 4
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %456, i64 %458
  %460 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %459, i32 0, i32 5
  store i32 %455, i32* %460, align 4
  br label %461

461:                                              ; preds = %425
  %462 = load i32, i32* %20, align 4
  %463 = add i32 %462, 1
  store i32 %463, i32* %20, align 4
  br label %288

464:                                              ; preds = %288
  %465 = load i32, i32* %22, align 4
  %466 = load i32, i32* %23, align 4
  %467 = load i32, i32* %24, align 4
  %468 = load i32, i32* %25, align 4
  %469 = load %struct.imgu_abi_osys_config*, %struct.imgu_abi_osys_config** %12, align 8
  %470 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %471 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %472 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 2
  %473 = load i64*, i64** %472, align 8
  %474 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %475 = getelementptr inbounds i64, i64* %473, i64 %474
  %476 = bitcast i64* %475 to i32*
  %477 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 3
  %478 = load i64*, i64** %477, align 8
  %479 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %480 = getelementptr inbounds i64, i64* %478, i64 %479
  %481 = bitcast i64* %480 to i32*
  %482 = call i32 @imgu_css_scaler_calc(i32 %465, i32 %466, i32 %467, i32 %468, %struct.imgu_abi_osys_config* %469, %struct.imgu_css_scaler_info* %470, %struct.imgu_css_scaler_info* %471, i32* %476, i32* %481, i32* %26)
  %483 = load %struct.imgu_css*, %struct.imgu_css** %10, align 8
  %484 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* %26, align 4
  %487 = call i32 @dev_dbg(i32 %485, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %486)
  %488 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 2
  %489 = load i64*, i64** %488, align 8
  %490 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %491 = getelementptr inbounds i64, i64* %489, i64 %490
  %492 = load i64, i64* %491, align 8
  %493 = trunc i64 %492 to i32
  store i32 %493, i32* %19, align 4
  %494 = load i32, i32* %19, align 4
  %495 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = sdiv i32 %496, 2
  %498 = icmp ult i32 %494, %497
  br i1 %498, label %499, label %504

499:                                              ; preds = %464
  %500 = load i32, i32* @IMGU_OSYS_BLOCK_WIDTH, align 4
  %501 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 4
  store i32 %500, i32* %501, align 8
  %502 = load i32, i32* @IMGU_OSYS_BLOCK_WIDTH, align 4
  %503 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 5
  store i32 %502, i32* %503, align 4
  br label %510

504:                                              ; preds = %464
  %505 = load i32, i32* @IMGU_OSYS_BLOCK_WIDTH, align 4
  %506 = sdiv i32 %505, 2
  %507 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 4
  store i32 %506, i32* %507, align 8
  %508 = load i32, i32* @IMGU_OSYS_BLOCK_WIDTH, align 4
  %509 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 5
  store i32 %508, i32* %509, align 4
  br label %510

510:                                              ; preds = %504, %499
  %511 = load i32, i32* %19, align 4
  %512 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = mul nsw i32 %513, 7
  %515 = sdiv i32 %514, 8
  %516 = icmp ule i32 %511, %515
  br i1 %516, label %517, label %522

517:                                              ; preds = %510
  %518 = load i32, i32* @IMGU_OSYS_BLOCK_HEIGHT, align 4
  %519 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 6
  store i32 %518, i32* %519, align 8
  %520 = load i32, i32* @IMGU_OSYS_BLOCK_HEIGHT, align 4
  %521 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 7
  store i32 %520, i32* %521, align 4
  br label %528

522:                                              ; preds = %510
  %523 = load i32, i32* @IMGU_OSYS_BLOCK_HEIGHT, align 4
  %524 = sdiv i32 %523, 2
  %525 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 6
  store i32 %524, i32* %525, align 8
  %526 = load i32, i32* @IMGU_OSYS_BLOCK_HEIGHT, align 4
  %527 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 7
  store i32 %526, i32* %527, align 4
  br label %528

528:                                              ; preds = %522, %517
  %529 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %530 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %531 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %529, i64 %530
  %532 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 8
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %599

535:                                              ; preds = %528
  %536 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 2
  %537 = load i64*, i64** %536, align 8
  %538 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %539 = getelementptr inbounds i64, i64* %537, i64 %538
  %540 = load i64, i64* %539, align 8
  %541 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %542 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %543 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %541, i64 %542
  %544 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = sext i32 %545 to i64
  %547 = sub nsw i64 %540, %546
  %548 = trunc i64 %547 to i32
  store i32 %548, i32* %32, align 4
  %549 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 3
  %550 = load i64*, i64** %549, align 8
  %551 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %552 = getelementptr inbounds i64, i64* %550, i64 %551
  %553 = load i64, i64* %552, align 8
  %554 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %555 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %556 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %554, i64 %555
  %557 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 4
  %559 = sext i32 %558 to i64
  %560 = sub nsw i64 %553, %559
  %561 = trunc i64 %560 to i32
  store i32 %561, i32* %33, align 4
  %562 = load i32, i32* %32, align 4
  %563 = sdiv i32 %562, 2
  %564 = load i32, i32* @IMGU_OSYS_DMA_CROP_W_LIMIT, align 4
  %565 = call i8* @roundclosest_down(i32 %563, i32 %564)
  %566 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %567 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %568 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %566, i64 %567
  %569 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %568, i32 0, i32 7
  store i8* %565, i8** %569, align 8
  %570 = load i32, i32* %33, align 4
  %571 = sdiv i32 %570, 2
  %572 = load i32, i32* @IMGU_OSYS_DMA_CROP_H_LIMIT, align 4
  %573 = call i8* @roundclosest_down(i32 %571, i32 %572)
  %574 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %575 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %576 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %574, i64 %575
  %577 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %576, i32 0, i32 6
  store i8* %573, i8** %577, align 8
  %578 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = srem i32 %579, 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %587, label %582

582:                                              ; preds = %535
  %583 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 0
  %584 = load i32, i32* %583, align 8
  %585 = srem i32 %584, 8
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %598

587:                                              ; preds = %582, %535
  %588 = load %struct.imgu_css*, %struct.imgu_css** %10, align 8
  %589 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = call i32 @dev_err(i32 %590, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %592 = load %struct.imgu_css*, %struct.imgu_css** %10, align 8
  %593 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = call i32 @dev_err(i32 %594, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %596 = load i32, i32* @EINVAL, align 4
  %597 = sub nsw i32 0, %596
  store i32 %597, i32* %9, align 4
  br label %1168

598:                                              ; preds = %582
  br label %599

599:                                              ; preds = %598, %528
  %600 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %601 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %602 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %600, i64 %601
  %603 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %602, i32 0, i32 2
  %604 = load i32, i32* %603, align 8
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %613

606:                                              ; preds = %599
  %607 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 2
  %608 = load i64*, i64** %607, align 8
  %609 = load i64, i64* @IMGU_ABI_OSYS_PIN_VF, align 8
  %610 = getelementptr inbounds i64, i64* %608, i64 %609
  %611 = load i64, i64* %610, align 8
  %612 = trunc i64 %611 to i32
  store i32 %612, i32* %19, align 4
  br label %616

613:                                              ; preds = %599
  %614 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  store i32 %615, i32* %19, align 4
  br label %616

616:                                              ; preds = %613, %606
  store i32 0, i32* %21, align 4
  br label %617

617:                                              ; preds = %1164, %616
  %618 = load i32, i32* %21, align 4
  %619 = load i32, i32* %11, align 4
  %620 = icmp ult i32 %618, %619
  br i1 %620, label %621, label %1167

621:                                              ; preds = %617
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %622 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %623 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 4
  store i32 %624, i32* %38, align 4
  %625 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %626 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 4
  store i32 %627, i32* %39, align 4
  store i32 0, i32* %40, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  store i32 0, i32* %43, align 4
  %628 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %629 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  store i32 %630, i32* %44, align 4
  %631 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %632 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %631, i32 0, i32 1
  %633 = load i32, i32* %632, align 4
  store i32 %633, i32* %45, align 4
  %634 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %635 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %634, i32 0, i32 2
  %636 = load i32, i32* %635, align 4
  store i32 %636, i32* %46, align 4
  %637 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %638 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %637, i32 0, i32 2
  %639 = load i32, i32* %638, align 4
  store i32 %639, i32* %47, align 4
  %640 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %641 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %640, i32 0, i32 3
  %642 = load i32, i32* %641, align 4
  store i32 %642, i32* %48, align 4
  %643 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %644 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %643, i32 0, i32 3
  %645 = load i32, i32* %644, align 4
  store i32 %645, i32* %49, align 4
  %646 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 0
  %647 = load i32, i32* %646, align 8
  store i32 %647, i32* %50, align 4
  store i32 0, i32* %51, align 4
  %648 = load i32, i32* %19, align 4
  store i32 %648, i32* %52, align 4
  store i32 0, i32* %53, align 4
  store i32 0, i32* %54, align 4
  store i32 0, i32* %55, align 4
  store i32 0, i32* %56, align 4
  %649 = load i32, i32* %11, align 4
  %650 = icmp ugt i32 %649, 1
  br i1 %650, label %651, label %873

651:                                              ; preds = %621
  %652 = load i32, i32* %21, align 4
  %653 = icmp ugt i32 %652, 0
  br i1 %653, label %654, label %790

654:                                              ; preds = %651
  %655 = load i32, i32* %19, align 4
  %656 = load i32, i32* %21, align 4
  %657 = mul i32 %655, %656
  %658 = load i32, i32* %11, align 4
  %659 = udiv i32 %657, %658
  store i32 %659, i32* %36, align 4
  %660 = load i32, i32* %36, align 4
  %661 = load i32, i32* @IPU3_UAPI_ISP_VEC_ELEMS, align 4
  %662 = call i32 @rounddown(i32 %660, i32 %661)
  store i32 %662, i32* %36, align 4
  %663 = load i32, i32* %36, align 4
  %664 = load i32, i32* @IMGU_LUMA_TO_CHROMA_RATIO, align 4
  %665 = sdiv i32 %663, %664
  store i32 %665, i32* %37, align 4
  %666 = load i32, i32* %36, align 4
  %667 = load i32, i32* @IMGU_OSYS_FIR_PHASES, align 4
  %668 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %669 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 4
  %671 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %672 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %671, i32 0, i32 4
  %673 = load i32, i32* %672, align 4
  %674 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %675 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %674, i32 0, i32 1
  %676 = load i32, i32* %675, align 4
  %677 = call i32 @imgu_css_osys_calc_stripe_offset(i32 %666, i32 %667, i32 %670, i32 %673, i32 %676)
  store i32 %677, i32* %34, align 4
  %678 = load i32, i32* %37, align 4
  %679 = load i32, i32* @IMGU_OSYS_FIR_PHASES, align 4
  %680 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %681 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 4
  %683 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %684 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %683, i32 0, i32 4
  %685 = load i32, i32* %684, align 4
  %686 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %687 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %686, i32 0, i32 1
  %688 = load i32, i32* %687, align 4
  %689 = call i32 @imgu_css_osys_calc_stripe_offset(i32 %678, i32 %679, i32 %682, i32 %685, i32 %688)
  store i32 %689, i32* %35, align 4
  %690 = load i32, i32* %36, align 4
  %691 = load i32, i32* @IMGU_OSYS_FIR_PHASES, align 4
  %692 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %693 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %692, i32 0, i32 0
  %694 = load i32, i32* %693, align 4
  %695 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %696 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %695, i32 0, i32 4
  %697 = load i32, i32* %696, align 4
  %698 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %699 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %698, i32 0, i32 1
  %700 = load i32, i32* %699, align 4
  %701 = call i32 @imgu_css_osys_calc_stripe_phase_init(i32 %690, i32 %691, i32 %694, i32 %697, i32 %700)
  store i32 %701, i32* %38, align 4
  %702 = load i32, i32* %37, align 4
  %703 = load i32, i32* @IMGU_OSYS_FIR_PHASES, align 4
  %704 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %705 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 4
  %707 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %708 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %707, i32 0, i32 4
  %709 = load i32, i32* %708, align 4
  %710 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %711 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %710, i32 0, i32 1
  %712 = load i32, i32* %711, align 4
  %713 = call i32 @imgu_css_osys_calc_stripe_phase_init(i32 %702, i32 %703, i32 %706, i32 %709, i32 %712)
  store i32 %713, i32* %39, align 4
  %714 = load i32, i32* %34, align 4
  %715 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 4
  %716 = load i32, i32* %715, align 8
  %717 = call i32 @rounddown(i32 %714, i32 %716)
  store i32 %717, i32* %54, align 4
  %718 = load i32, i32* %35, align 4
  %719 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 4
  %720 = load i32, i32* %719, align 8
  %721 = load i32, i32* @IMGU_LUMA_TO_CHROMA_RATIO, align 4
  %722 = sdiv i32 %720, %721
  %723 = call i32 @rounddown(i32 %718, i32 %722)
  store i32 %723, i32* %55, align 4
  %724 = load i32, i32* %54, align 4
  %725 = load i32, i32* %55, align 4
  %726 = load i32, i32* @IMGU_LUMA_TO_CHROMA_RATIO, align 4
  %727 = mul nsw i32 %725, %726
  %728 = icmp ne i32 %724, %727
  br i1 %728, label %729, label %746

729:                                              ; preds = %654
  %730 = load i32, i32* %35, align 4
  %731 = sub nsw i32 %730, 1
  store i32 %731, i32* %35, align 4
  %732 = load i32, i32* %49, align 4
  %733 = add nsw i32 %732, 1
  store i32 %733, i32* %49, align 4
  %734 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %735 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %734, i32 0, i32 4
  %736 = load i32, i32* %735, align 4
  %737 = load i32, i32* %39, align 4
  %738 = sub nsw i32 %737, %736
  store i32 %738, i32* %39, align 4
  %739 = load i32, i32* %39, align 4
  %740 = icmp slt i32 %739, 0
  br i1 %740, label %741, label %745

741:                                              ; preds = %729
  %742 = load i32, i32* %39, align 4
  %743 = load i32, i32* @IMGU_OSYS_FIR_PHASES, align 4
  %744 = add nsw i32 %742, %743
  store i32 %744, i32* %39, align 4
  br label %745

745:                                              ; preds = %741, %729
  br label %746

746:                                              ; preds = %745, %654
  %747 = load i32, i32* %35, align 4
  %748 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 4
  %749 = load i32, i32* %748, align 8
  %750 = load i32, i32* @IMGU_LUMA_TO_CHROMA_RATIO, align 4
  %751 = sdiv i32 %749, %750
  %752 = call i32 @roundup(i32 %747, i32 %751)
  store i32 %752, i32* %56, align 4
  %753 = load i32, i32* %35, align 4
  %754 = load i32, i32* %56, align 4
  %755 = load i32, i32* @IMGU_OSYS_TAPS_UV, align 4
  %756 = sub nsw i32 %754, %755
  %757 = icmp eq i32 %753, %756
  br i1 %757, label %758, label %775

758:                                              ; preds = %746
  %759 = load i32, i32* %35, align 4
  %760 = sub nsw i32 %759, 1
  store i32 %760, i32* %35, align 4
  %761 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %762 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %761, i32 0, i32 4
  %763 = load i32, i32* %762, align 4
  %764 = load i32, i32* %39, align 4
  %765 = sub nsw i32 %764, %763
  store i32 %765, i32* %39, align 4
  %766 = load i32, i32* %39, align 4
  %767 = icmp slt i32 %766, 0
  br i1 %767, label %768, label %774

768:                                              ; preds = %758
  %769 = load i32, i32* @IMGU_OSYS_FIR_PHASES, align 4
  %770 = load i32, i32* %39, align 4
  %771 = add nsw i32 %770, %769
  store i32 %771, i32* %39, align 4
  %772 = load i32, i32* %49, align 4
  %773 = add nsw i32 %772, 1
  store i32 %773, i32* %49, align 4
  br label %774

774:                                              ; preds = %768, %758
  br label %775

775:                                              ; preds = %774, %746
  %776 = load i32, i32* %34, align 4
  %777 = load i32, i32* @IMGU_INPUT_BLOCK_WIDTH, align 4
  %778 = call i32 @rounddown(i32 %776, i32 %777)
  store i32 %778, i32* %40, align 4
  %779 = load i32, i32* %35, align 4
  %780 = load i32, i32* @IMGU_INPUT_BLOCK_WIDTH, align 4
  %781 = load i32, i32* @IMGU_LUMA_TO_CHROMA_RATIO, align 4
  %782 = sdiv i32 %780, %781
  %783 = call i32 @rounddown(i32 %779, i32 %782)
  store i32 %783, i32* %41, align 4
  %784 = load i32, i32* %34, align 4
  %785 = load i32, i32* %40, align 4
  %786 = sub nsw i32 %784, %785
  store i32 %786, i32* %42, align 4
  %787 = load i32, i32* %35, align 4
  %788 = load i32, i32* %41, align 4
  %789 = sub nsw i32 %787, %788
  store i32 %789, i32* %43, align 4
  store i32 0, i32* %44, align 4
  store i32 0, i32* %45, align 4
  br label %790

790:                                              ; preds = %775, %651
  %791 = load i32, i32* %21, align 4
  %792 = load i32, i32* %11, align 4
  %793 = sub i32 %792, 1
  %794 = icmp ult i32 %791, %793
  br i1 %794, label %795, label %807

795:                                              ; preds = %790
  store i32 0, i32* %46, align 4
  store i32 0, i32* %47, align 4
  %796 = load i32, i32* %19, align 4
  %797 = load i32, i32* %21, align 4
  %798 = add i32 %797, 1
  %799 = mul i32 %796, %798
  %800 = load i32, i32* %11, align 4
  %801 = udiv i32 %799, %800
  store i32 %801, i32* %57, align 4
  %802 = load i32, i32* %57, align 4
  %803 = call i32 @rounddown(i32 %802, i32 64)
  store i32 %803, i32* %57, align 4
  %804 = load i32, i32* %57, align 4
  %805 = load i32, i32* %36, align 4
  %806 = sub nsw i32 %804, %805
  store i32 %806, i32* %52, align 4
  br label %811

807:                                              ; preds = %790
  %808 = load i32, i32* %19, align 4
  %809 = load i32, i32* %36, align 4
  %810 = sub i32 %808, %809
  store i32 %810, i32* %52, align 4
  br label %811

811:                                              ; preds = %807, %795
  %812 = load i32, i32* %52, align 4
  %813 = load i32, i32* @IMGU_LUMA_TO_CHROMA_RATIO, align 4
  %814 = sdiv i32 %812, %813
  store i32 %814, i32* %53, align 4
  %815 = load i32, i32* %42, align 4
  %816 = load i32, i32* %52, align 4
  %817 = load i32, i32* @IMGU_OSYS_FIR_PHASES, align 4
  %818 = load i32, i32* %38, align 4
  %819 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %820 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %819, i32 0, i32 4
  %821 = load i32, i32* %820, align 4
  %822 = load i32, i32* @IMGU_OSYS_TAPS_Y, align 4
  %823 = load i32, i32* %44, align 4
  %824 = load i32, i32* %46, align 4
  %825 = call i32 @imgu_css_osys_calc_inp_stripe_width(i32 %816, i32 %817, i32 %818, i32 %821, i32 %822, i32 %823, i32 %824)
  %826 = add nsw i32 %815, %825
  store i32 %826, i32* %50, align 4
  %827 = load i32, i32* %43, align 4
  %828 = load i32, i32* %53, align 4
  %829 = load i32, i32* @IMGU_OSYS_FIR_PHASES, align 4
  %830 = load i32, i32* %39, align 4
  %831 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %832 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %831, i32 0, i32 4
  %833 = load i32, i32* %832, align 4
  %834 = load i32, i32* @IMGU_OSYS_TAPS_UV, align 4
  %835 = load i32, i32* %45, align 4
  %836 = load i32, i32* %47, align 4
  %837 = call i32 @imgu_css_osys_calc_inp_stripe_width(i32 %828, i32 %829, i32 %830, i32 %833, i32 %834, i32 %835, i32 %836)
  %838 = add nsw i32 %827, %837
  store i32 %838, i32* %51, align 4
  %839 = load i32, i32* %50, align 4
  %840 = load i32, i32* @IMGU_LUMA_TO_CHROMA_RATIO, align 4
  %841 = call i32 @DIV_ROUND_UP(i32 %839, i32 %840)
  %842 = load i32, i32* %51, align 4
  %843 = call i32 @max(i32 %841, i32 %842)
  store i32 %843, i32* %51, align 4
  %844 = load i32, i32* %51, align 4
  %845 = load i32, i32* @IMGU_LUMA_TO_CHROMA_RATIO, align 4
  %846 = mul nsw i32 %844, %845
  store i32 %846, i32* %50, align 4
  %847 = load i32, i32* %21, align 4
  %848 = load i32, i32* %11, align 4
  %849 = sub i32 %848, 1
  %850 = icmp uge i32 %847, %849
  br i1 %850, label %851, label %856

851:                                              ; preds = %811
  %852 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 0
  %853 = load i32, i32* %852, align 8
  %854 = load i32, i32* %40, align 4
  %855 = sub nsw i32 %853, %854
  store i32 %855, i32* %50, align 4
  br label %856

856:                                              ; preds = %851, %811
  %857 = load i32, i32* %50, align 4
  %858 = call i32 @ALIGN(i32 %857, i32 8)
  store i32 %858, i32* %50, align 4
  %859 = load i32, i32* %50, align 4
  %860 = load i32, i32* @IMGU_OSYS_FIR_PHASES, align 4
  %861 = load i32, i32* %38, align 4
  %862 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %863 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %862, i32 0, i32 4
  %864 = load i32, i32* %863, align 4
  %865 = load i32, i32* @IMGU_OSYS_TAPS_Y, align 4
  %866 = load i32, i32* %44, align 4
  %867 = load i32, i32* %46, align 4
  %868 = load i32, i32* %42, align 4
  %869 = call i32 @imgu_css_osys_out_stripe_width(i32 %859, i32 %860, i32 %861, i32 %864, i32 %865, i32 %866, i32 %867, i32 %868)
  store i32 %869, i32* %52, align 4
  %870 = load i32, i32* %52, align 4
  %871 = load i32, i32* @IMGU_LUMA_TO_CHROMA_RATIO, align 4
  %872 = call i32 @rounddown(i32 %870, i32 %871)
  store i32 %872, i32* %52, align 4
  br label %873

873:                                              ; preds = %856, %621
  store i32 0, i32* %59, align 4
  %874 = load i32, i32* %50, align 4
  %875 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %876 = load i32, i32* %21, align 4
  %877 = zext i32 %876 to i64
  %878 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %875, i64 %877
  %879 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %878, i32 0, i32 0
  store i32 %874, i32* %879, align 8
  %880 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 1
  %881 = load i32, i32* %880, align 4
  %882 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %883 = load i32, i32* %21, align 4
  %884 = zext i32 %883 to i64
  %885 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %882, i64 %884
  %886 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %885, i32 0, i32 1
  store i32 %881, i32* %886, align 4
  store i32 0, i32* %58, align 4
  br label %887

887:                                              ; preds = %986, %873
  %888 = load i32, i32* %58, align 4
  %889 = load i32, i32* @IMGU_ABI_OSYS_PINS, align 4
  %890 = icmp ult i32 %888, %889
  br i1 %890, label %891, label %989

891:                                              ; preds = %887
  %892 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %893 = load i32, i32* %58, align 4
  %894 = zext i32 %893 to i64
  %895 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %892, i64 %894
  %896 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %895, i32 0, i32 5
  %897 = load i32, i32* %896, align 4
  %898 = icmp ne i32 %897, 0
  br i1 %898, label %899, label %944

899:                                              ; preds = %891
  %900 = load i32, i32* %52, align 4
  %901 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %902 = load i32, i32* %21, align 4
  %903 = zext i32 %902 to i64
  %904 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %901, i64 %903
  %905 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %904, i32 0, i32 2
  %906 = load i32*, i32** %905, align 8
  %907 = load i32, i32* %58, align 4
  %908 = zext i32 %907 to i64
  %909 = getelementptr inbounds i32, i32* %906, i64 %908
  store i32 %900, i32* %909, align 4
  %910 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 3
  %911 = load i64*, i64** %910, align 8
  %912 = load i32, i32* %58, align 4
  %913 = zext i32 %912 to i64
  %914 = getelementptr inbounds i64, i64* %911, i64 %913
  %915 = load i64, i64* %914, align 8
  %916 = trunc i64 %915 to i32
  %917 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %918 = load i32, i32* %21, align 4
  %919 = zext i32 %918 to i64
  %920 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %917, i64 %919
  %921 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %920, i32 0, i32 3
  %922 = load i32*, i32** %921, align 8
  %923 = load i32, i32* %58, align 4
  %924 = zext i32 %923 to i64
  %925 = getelementptr inbounds i32, i32* %922, i64 %924
  store i32 %916, i32* %925, align 4
  %926 = load i32, i32* %36, align 4
  %927 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %928 = load i32, i32* %21, align 4
  %929 = zext i32 %928 to i64
  %930 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %927, i64 %929
  %931 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %930, i32 0, i32 4
  %932 = load i32*, i32** %931, align 8
  %933 = load i32, i32* %58, align 4
  %934 = zext i32 %933 to i64
  %935 = getelementptr inbounds i32, i32* %932, i64 %934
  store i32 %926, i32* %935, align 4
  %936 = load %struct.imgu_css_frame_params*, %struct.imgu_css_frame_params** %15, align 8
  %937 = load i32, i32* %58, align 4
  %938 = zext i32 %937 to i64
  %939 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %936, i64 %938
  %940 = getelementptr inbounds %struct.imgu_css_frame_params, %struct.imgu_css_frame_params* %939, i32 0, i32 5
  %941 = load i32, i32* %940, align 4
  %942 = load i32, i32* %59, align 4
  %943 = add nsw i32 %942, %941
  store i32 %943, i32* %59, align 4
  br label %985

944:                                              ; preds = %891
  %945 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %946 = load i32, i32* %21, align 4
  %947 = zext i32 %946 to i64
  %948 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %945, i64 %947
  %949 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %948, i32 0, i32 0
  %950 = load i32, i32* %949, align 8
  %951 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %952 = load i32, i32* %21, align 4
  %953 = zext i32 %952 to i64
  %954 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %951, i64 %953
  %955 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %954, i32 0, i32 2
  %956 = load i32*, i32** %955, align 8
  %957 = load i32, i32* %58, align 4
  %958 = zext i32 %957 to i64
  %959 = getelementptr inbounds i32, i32* %956, i64 %958
  store i32 %950, i32* %959, align 4
  %960 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %961 = load i32, i32* %21, align 4
  %962 = zext i32 %961 to i64
  %963 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %960, i64 %962
  %964 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %963, i32 0, i32 1
  %965 = load i32, i32* %964, align 4
  %966 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %967 = load i32, i32* %21, align 4
  %968 = zext i32 %967 to i64
  %969 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %966, i64 %968
  %970 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %969, i32 0, i32 3
  %971 = load i32*, i32** %970, align 8
  %972 = load i32, i32* %58, align 4
  %973 = zext i32 %972 to i64
  %974 = getelementptr inbounds i32, i32* %971, i64 %973
  store i32 %965, i32* %974, align 4
  %975 = load i32, i32* %40, align 4
  %976 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %977 = load i32, i32* %21, align 4
  %978 = zext i32 %977 to i64
  %979 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %976, i64 %978
  %980 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %979, i32 0, i32 4
  %981 = load i32*, i32** %980, align 8
  %982 = load i32, i32* %58, align 4
  %983 = zext i32 %982 to i64
  %984 = getelementptr inbounds i32, i32* %981, i64 %983
  store i32 %975, i32* %984, align 4
  br label %985

985:                                              ; preds = %944, %899
  br label %986

986:                                              ; preds = %985
  %987 = load i32, i32* %58, align 4
  %988 = add i32 %987, 1
  store i32 %988, i32* %58, align 4
  br label %887

989:                                              ; preds = %887
  %990 = load i32, i32* %26, align 4
  %991 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %992 = load i32, i32* %21, align 4
  %993 = zext i32 %992 to i64
  %994 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %991, i64 %993
  %995 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %994, i32 0, i32 5
  store i32 %990, i32* %995, align 8
  %996 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %997 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %996, i32 0, i32 4
  %998 = load i32, i32* %997, align 4
  %999 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1000 = load i32, i32* %21, align 4
  %1001 = zext i32 %1000 to i64
  %1002 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %999, i64 %1001
  %1003 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1002, i32 0, i32 6
  store i32 %998, i32* %1003, align 4
  %1004 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %1005 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %1004, i32 0, i32 6
  %1006 = load i32, i32* %1005, align 4
  %1007 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1008 = load i32, i32* %21, align 4
  %1009 = zext i32 %1008 to i64
  %1010 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1007, i64 %1009
  %1011 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1010, i32 0, i32 29
  store i32 %1006, i32* %1011, align 8
  %1012 = load i32, i32* %38, align 4
  %1013 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1014 = load i32, i32* %21, align 4
  %1015 = zext i32 %1014 to i64
  %1016 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1013, i64 %1015
  %1017 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1016, i32 0, i32 7
  store i32 %1012, i32* %1017, align 8
  %1018 = load i32, i32* %39, align 4
  %1019 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1020 = load i32, i32* %21, align 4
  %1021 = zext i32 %1020 to i64
  %1022 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1019, i64 %1021
  %1023 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1022, i32 0, i32 8
  store i32 %1018, i32* %1023, align 4
  %1024 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %1025 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %1024, i32 0, i32 0
  %1026 = load i32, i32* %1025, align 4
  %1027 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1028 = load i32, i32* %21, align 4
  %1029 = zext i32 %1028 to i64
  %1030 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1027, i64 %1029
  %1031 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1030, i32 0, i32 9
  store i32 %1026, i32* %1031, align 8
  %1032 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %1033 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %1032, i32 0, i32 0
  %1034 = load i32, i32* %1033, align 4
  %1035 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1036 = load i32, i32* %21, align 4
  %1037 = zext i32 %1036 to i64
  %1038 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1035, i64 %1037
  %1039 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1038, i32 0, i32 10
  store i32 %1034, i32* %1039, align 4
  %1040 = load i32, i32* %44, align 4
  %1041 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1042 = load i32, i32* %21, align 4
  %1043 = zext i32 %1042 to i64
  %1044 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1041, i64 %1043
  %1045 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1044, i32 0, i32 11
  store i32 %1040, i32* %1045, align 8
  %1046 = load i32, i32* %45, align 4
  %1047 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1048 = load i32, i32* %21, align 4
  %1049 = zext i32 %1048 to i64
  %1050 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1047, i64 %1049
  %1051 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1050, i32 0, i32 12
  store i32 %1046, i32* %1051, align 4
  %1052 = load i32, i32* %46, align 4
  %1053 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1054 = load i32, i32* %21, align 4
  %1055 = zext i32 %1054 to i64
  %1056 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1053, i64 %1055
  %1057 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1056, i32 0, i32 13
  store i32 %1052, i32* %1057, align 8
  %1058 = load i32, i32* %47, align 4
  %1059 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1060 = load i32, i32* %21, align 4
  %1061 = zext i32 %1060 to i64
  %1062 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1059, i64 %1061
  %1063 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1062, i32 0, i32 14
  store i32 %1058, i32* %1063, align 4
  %1064 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %1065 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %1064, i32 0, i32 1
  %1066 = load i32, i32* %1065, align 4
  %1067 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1068 = load i32, i32* %21, align 4
  %1069 = zext i32 %1068 to i64
  %1070 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1067, i64 %1069
  %1071 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1070, i32 0, i32 15
  store i32 %1066, i32* %1071, align 8
  %1072 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %1073 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %1072, i32 0, i32 1
  %1074 = load i32, i32* %1073, align 4
  %1075 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1076 = load i32, i32* %21, align 4
  %1077 = zext i32 %1076 to i64
  %1078 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1075, i64 %1077
  %1079 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1078, i32 0, i32 16
  store i32 %1074, i32* %1079, align 4
  %1080 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %1081 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %1080, i32 0, i32 2
  %1082 = load i32, i32* %1081, align 4
  %1083 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1084 = load i32, i32* %21, align 4
  %1085 = zext i32 %1084 to i64
  %1086 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1083, i64 %1085
  %1087 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1086, i32 0, i32 17
  store i32 %1082, i32* %1087, align 8
  %1088 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %1089 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %1088, i32 0, i32 2
  %1090 = load i32, i32* %1089, align 4
  %1091 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1092 = load i32, i32* %21, align 4
  %1093 = zext i32 %1092 to i64
  %1094 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1091, i64 %1093
  %1095 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1094, i32 0, i32 18
  store i32 %1090, i32* %1095, align 4
  %1096 = load i32, i32* %48, align 4
  %1097 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1098 = load i32, i32* %21, align 4
  %1099 = zext i32 %1098 to i64
  %1100 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1097, i64 %1099
  %1101 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1100, i32 0, i32 19
  store i32 %1096, i32* %1101, align 8
  %1102 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %13, align 8
  %1103 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %1102, i32 0, i32 5
  %1104 = load i32, i32* %1103, align 4
  %1105 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1106 = load i32, i32* %21, align 4
  %1107 = zext i32 %1106 to i64
  %1108 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1105, i64 %1107
  %1109 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1108, i32 0, i32 28
  store i32 %1104, i32* %1109, align 4
  %1110 = load i32, i32* %49, align 4
  %1111 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1112 = load i32, i32* %21, align 4
  %1113 = zext i32 %1112 to i64
  %1114 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1111, i64 %1113
  %1115 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1114, i32 0, i32 20
  store i32 %1110, i32* %1115, align 4
  %1116 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %14, align 8
  %1117 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %1116, i32 0, i32 5
  %1118 = load i32, i32* %1117, align 4
  %1119 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1120 = load i32, i32* %21, align 4
  %1121 = zext i32 %1120 to i64
  %1122 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1119, i64 %1121
  %1123 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1122, i32 0, i32 27
  store i32 %1118, i32* %1123, align 8
  %1124 = load i32, i32* %42, align 4
  %1125 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1126 = load i32, i32* %21, align 4
  %1127 = zext i32 %1126 to i64
  %1128 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1125, i64 %1127
  %1129 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1128, i32 0, i32 21
  store i32 %1124, i32* %1129, align 8
  %1130 = load i32, i32* %43, align 4
  %1131 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1132 = load i32, i32* %21, align 4
  %1133 = zext i32 %1132 to i64
  %1134 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1131, i64 %1133
  %1135 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1134, i32 0, i32 22
  store i32 %1130, i32* %1135, align 4
  %1136 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 4
  %1137 = load i32, i32* %1136, align 8
  %1138 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1139 = load i32, i32* %21, align 4
  %1140 = zext i32 %1139 to i64
  %1141 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1138, i64 %1140
  %1142 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1141, i32 0, i32 23
  store i32 %1137, i32* %1142, align 8
  %1143 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 6
  %1144 = load i32, i32* %1143, align 8
  %1145 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1146 = load i32, i32* %21, align 4
  %1147 = zext i32 %1146 to i64
  %1148 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1145, i64 %1147
  %1149 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1148, i32 0, i32 24
  store i32 %1144, i32* %1149, align 4
  %1150 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 5
  %1151 = load i32, i32* %1150, align 4
  %1152 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1153 = load i32, i32* %21, align 4
  %1154 = zext i32 %1153 to i64
  %1155 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1152, i64 %1154
  %1156 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1155, i32 0, i32 25
  store i32 %1151, i32* %1156, align 8
  %1157 = getelementptr inbounds %struct.imgu_css_reso, %struct.imgu_css_reso* %18, i32 0, i32 7
  %1158 = load i32, i32* %1157, align 4
  %1159 = load %struct.imgu_css_stripe_params*, %struct.imgu_css_stripe_params** %16, align 8
  %1160 = load i32, i32* %21, align 4
  %1161 = zext i32 %1160 to i64
  %1162 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1159, i64 %1161
  %1163 = getelementptr inbounds %struct.imgu_css_stripe_params, %struct.imgu_css_stripe_params* %1162, i32 0, i32 26
  store i32 %1158, i32* %1163, align 4
  br label %1164

1164:                                             ; preds = %989
  %1165 = load i32, i32* %21, align 4
  %1166 = add i32 %1165, 1
  store i32 %1166, i32* %21, align 4
  br label %617

1167:                                             ; preds = %617
  store i32 0, i32* %9, align 4
  br label %1168

1168:                                             ; preds = %1167, %587, %350
  %1169 = load i32, i32* %9, align 4
  ret i32 %1169
}

declare dso_local i8* @roundclosest_down(i32, i32) #1

declare dso_local i32 @imgu_css_osys_set_format(i32, i32*, i32*) #1

declare dso_local i32 @imgu_css_scaler_calc(i32, i32, i32, i32, %struct.imgu_abi_osys_config*, %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info*, i32*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @imgu_css_osys_calc_stripe_offset(i32, i32, i32, i32, i32) #1

declare dso_local i32 @imgu_css_osys_calc_stripe_phase_init(i32, i32, i32, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @imgu_css_osys_calc_inp_stripe_width(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @imgu_css_osys_out_stripe_width(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
