; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_cfg_vmem0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_cfg_vmem0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, i32*, i32* }
%struct.imgu_css = type { %struct.TYPE_22__*, %struct.TYPE_14__* }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.imgu_fw_info* }
%struct.imgu_fw_info = type { %struct.TYPE_21__, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.ipu3_uapi_flags = type { i64, i64, i64 }
%struct.ipu3_uapi_params = type { i32, i32, i32 }
%struct.imgu_fw_param_memory_offsets = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.ipu3_uapi_isp_lin_vmem_params = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.ipu3_uapi_isp_tnr3_vmem_params = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.ipu3_uapi_isp_xnr3_vmem_params = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@IMGU_ABI_PARAM_CLASS_PARAM = common dso_local global i64 0, align 8
@IMGU_ABI_MEM_ISP_VMEM0 = common dso_local global i32 0, align 4
@IPU3_UAPI_LIN_LUT_SIZE = common dso_local global i32 0, align 4
@IPU3_CSS_PIPE_ID_VIDEO = common dso_local global i64 0, align 8
@IPU3_UAPI_ISP_TNR3_VMEM_LEN = common dso_local global i32 0, align 4
@imgu_css_xnr3_vmem_defaults = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@IMGU_XNR3_VMEM_LUT_LEN = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_css_cfg_vmem0(%struct.imgu_css* %0, i32 %1, %struct.ipu3_uapi_flags* %2, i8* %3, i8* %4, %struct.ipu3_uapi_params* %5) #0 {
  %7 = alloca %struct.imgu_css*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipu3_uapi_flags*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ipu3_uapi_params*, align 8
  %13 = alloca %struct.imgu_fw_info*, align 8
  %14 = alloca %struct.imgu_fw_param_memory_offsets*, align 8
  %15 = alloca %struct.ipu3_uapi_isp_lin_vmem_params*, align 8
  %16 = alloca %struct.ipu3_uapi_isp_tnr3_vmem_params*, align 8
  %17 = alloca %struct.ipu3_uapi_isp_xnr3_vmem_params*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ipu3_uapi_flags* %2, %struct.ipu3_uapi_flags** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.ipu3_uapi_params* %5, %struct.ipu3_uapi_params** %12, align 8
  %21 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %22 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %21, i32 0, i32 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %24, align 8
  %26 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %27 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %26, i32 0, i32 0
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %25, i64 %33
  store %struct.imgu_fw_info* %34, %struct.imgu_fw_info** %13, align 8
  %35 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %36 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = bitcast %struct.TYPE_14__* %37 to i8*
  %39 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %13, align 8
  %40 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @IMGU_ABI_PARAM_CLASS_PARAM, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %38, i64 %47
  %49 = bitcast i8* %48 to %struct.imgu_fw_param_memory_offsets*
  store %struct.imgu_fw_param_memory_offsets* %49, %struct.imgu_fw_param_memory_offsets** %14, align 8
  store %struct.ipu3_uapi_isp_lin_vmem_params* null, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  store %struct.ipu3_uapi_isp_tnr3_vmem_params* null, %struct.ipu3_uapi_isp_tnr3_vmem_params** %16, align 8
  store %struct.ipu3_uapi_isp_xnr3_vmem_params* null, %struct.ipu3_uapi_isp_xnr3_vmem_params** %17, align 8
  %50 = load i64, i64* @IMGU_ABI_PARAM_CLASS_PARAM, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* @IMGU_ABI_MEM_ISP_VMEM0, align 4
  store i32 %52, i32* %19, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %13, align 8
  %55 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %60, i64 %62
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = load i32, i32* %19, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memset(i8* %53, i32 0, i32 %69)
  %71 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ipu3_uapi_flags*, %struct.ipu3_uapi_flags** %9, align 8
  %74 = icmp ne %struct.ipu3_uapi_flags* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %6
  %76 = load %struct.ipu3_uapi_flags*, %struct.ipu3_uapi_flags** %9, align 8
  %77 = getelementptr inbounds %struct.ipu3_uapi_flags, %struct.ipu3_uapi_flags* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %75, %6
  %81 = phi i1 [ false, %6 ], [ %79, %75 ]
  %82 = zext i1 %81 to i32
  %83 = load %struct.ipu3_uapi_params*, %struct.ipu3_uapi_params** %12, align 8
  %84 = getelementptr inbounds %struct.ipu3_uapi_params, %struct.ipu3_uapi_params* %83, i32 0, i32 2
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load %struct.imgu_fw_param_memory_offsets*, %struct.imgu_fw_param_memory_offsets** %14, align 8
  %89 = getelementptr inbounds %struct.imgu_fw_param_memory_offsets, %struct.imgu_fw_param_memory_offsets* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = call %struct.ipu3_uapi_isp_xnr3_vmem_params* @imgu_css_cfg_copy(%struct.imgu_css* %71, i32 %72, i32 %82, i32* %84, i8* %85, i8* %86, i32 %87, i32* %90, i32 104)
  %92 = bitcast %struct.ipu3_uapi_isp_xnr3_vmem_params* %91 to %struct.ipu3_uapi_isp_lin_vmem_params*
  store %struct.ipu3_uapi_isp_lin_vmem_params* %92, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %93 = load %struct.ipu3_uapi_isp_lin_vmem_params*, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %94 = bitcast %struct.ipu3_uapi_isp_lin_vmem_params* %93 to %struct.ipu3_uapi_isp_xnr3_vmem_params*
  %95 = call i32 @IS_ERR_OR_NULL(%struct.ipu3_uapi_isp_xnr3_vmem_params* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %163, label %97

97:                                               ; preds = %80
  store i32 0, i32* %20, align 4
  br label %98

98:                                               ; preds = %159, %97
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* @IPU3_UAPI_LIN_LUT_SIZE, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %162

102:                                              ; preds = %98
  %103 = load i32, i32* %20, align 4
  %104 = mul i32 32, %103
  %105 = load %struct.ipu3_uapi_isp_lin_vmem_params*, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %106 = getelementptr inbounds %struct.ipu3_uapi_isp_lin_vmem_params, %struct.ipu3_uapi_isp_lin_vmem_params* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %20, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = load i32, i32* %20, align 4
  %112 = mul i32 32, %111
  %113 = load %struct.ipu3_uapi_isp_lin_vmem_params*, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %114 = getelementptr inbounds %struct.ipu3_uapi_isp_lin_vmem_params, %struct.ipu3_uapi_isp_lin_vmem_params* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %20, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  %119 = load i32, i32* %20, align 4
  %120 = mul i32 32, %119
  %121 = load %struct.ipu3_uapi_isp_lin_vmem_params*, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %122 = getelementptr inbounds %struct.ipu3_uapi_isp_lin_vmem_params, %struct.ipu3_uapi_isp_lin_vmem_params* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %20, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %120, i32* %126, align 4
  %127 = load i32, i32* %20, align 4
  %128 = mul i32 32, %127
  %129 = load %struct.ipu3_uapi_isp_lin_vmem_params*, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %130 = getelementptr inbounds %struct.ipu3_uapi_isp_lin_vmem_params, %struct.ipu3_uapi_isp_lin_vmem_params* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %20, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load %struct.ipu3_uapi_isp_lin_vmem_params*, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %136 = getelementptr inbounds %struct.ipu3_uapi_isp_lin_vmem_params, %struct.ipu3_uapi_isp_lin_vmem_params* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %20, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 32, i32* %140, align 4
  %141 = load %struct.ipu3_uapi_isp_lin_vmem_params*, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %142 = getelementptr inbounds %struct.ipu3_uapi_isp_lin_vmem_params, %struct.ipu3_uapi_isp_lin_vmem_params* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %20, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 32, i32* %146, align 4
  %147 = load %struct.ipu3_uapi_isp_lin_vmem_params*, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %148 = getelementptr inbounds %struct.ipu3_uapi_isp_lin_vmem_params, %struct.ipu3_uapi_isp_lin_vmem_params* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %20, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 32, i32* %152, align 4
  %153 = load %struct.ipu3_uapi_isp_lin_vmem_params*, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %154 = getelementptr inbounds %struct.ipu3_uapi_isp_lin_vmem_params, %struct.ipu3_uapi_isp_lin_vmem_params* %153, i32 0, i32 7
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %20, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 32, i32* %158, align 4
  br label %159

159:                                              ; preds = %102
  %160 = load i32, i32* %20, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %20, align 4
  br label %98

162:                                              ; preds = %98
  br label %163

163:                                              ; preds = %162, %80
  %164 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %165 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %164, i32 0, i32 0
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @IPU3_CSS_PIPE_ID_VIDEO, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %218

174:                                              ; preds = %163
  %175 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.ipu3_uapi_flags*, %struct.ipu3_uapi_flags** %9, align 8
  %178 = icmp ne %struct.ipu3_uapi_flags* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.ipu3_uapi_flags*, %struct.ipu3_uapi_flags** %9, align 8
  %181 = getelementptr inbounds %struct.ipu3_uapi_flags, %struct.ipu3_uapi_flags* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br label %184

184:                                              ; preds = %179, %174
  %185 = phi i1 [ false, %174 ], [ %183, %179 ]
  %186 = zext i1 %185 to i32
  %187 = load %struct.ipu3_uapi_params*, %struct.ipu3_uapi_params** %12, align 8
  %188 = getelementptr inbounds %struct.ipu3_uapi_params, %struct.ipu3_uapi_params* %187, i32 0, i32 1
  %189 = load i8*, i8** %11, align 8
  %190 = load i8*, i8** %10, align 8
  %191 = load i32, i32* %19, align 4
  %192 = load %struct.imgu_fw_param_memory_offsets*, %struct.imgu_fw_param_memory_offsets** %14, align 8
  %193 = getelementptr inbounds %struct.imgu_fw_param_memory_offsets, %struct.imgu_fw_param_memory_offsets* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = call %struct.ipu3_uapi_isp_xnr3_vmem_params* @imgu_css_cfg_copy(%struct.imgu_css* %175, i32 %176, i32 %186, i32* %188, i8* %189, i8* %190, i32 %191, i32* %194, i32 104)
  %196 = bitcast %struct.ipu3_uapi_isp_xnr3_vmem_params* %195 to %struct.ipu3_uapi_isp_tnr3_vmem_params*
  store %struct.ipu3_uapi_isp_tnr3_vmem_params* %196, %struct.ipu3_uapi_isp_tnr3_vmem_params** %16, align 8
  %197 = load %struct.ipu3_uapi_isp_tnr3_vmem_params*, %struct.ipu3_uapi_isp_tnr3_vmem_params** %16, align 8
  %198 = bitcast %struct.ipu3_uapi_isp_tnr3_vmem_params* %197 to %struct.ipu3_uapi_isp_xnr3_vmem_params*
  %199 = call i32 @IS_ERR_OR_NULL(%struct.ipu3_uapi_isp_xnr3_vmem_params* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %217, label %201

201:                                              ; preds = %184
  store i32 0, i32* %20, align 4
  br label %202

202:                                              ; preds = %213, %201
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* @IPU3_UAPI_ISP_TNR3_VMEM_LEN, align 4
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %202
  %207 = load %struct.ipu3_uapi_isp_tnr3_vmem_params*, %struct.ipu3_uapi_isp_tnr3_vmem_params** %16, align 8
  %208 = getelementptr inbounds %struct.ipu3_uapi_isp_tnr3_vmem_params, %struct.ipu3_uapi_isp_tnr3_vmem_params* %207, i32 0, i32 8
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %20, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 256, i32* %212, align 4
  br label %213

213:                                              ; preds = %206
  %214 = load i32, i32* %20, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %20, align 4
  br label %202

216:                                              ; preds = %202
  br label %217

217:                                              ; preds = %216, %184
  br label %218

218:                                              ; preds = %217, %163
  %219 = load i32, i32* @IPU3_UAPI_ISP_TNR3_VMEM_LEN, align 4
  store i32 %219, i32* %20, align 4
  %220 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.ipu3_uapi_flags*, %struct.ipu3_uapi_flags** %9, align 8
  %223 = icmp ne %struct.ipu3_uapi_flags* %222, null
  br i1 %223, label %224, label %229

224:                                              ; preds = %218
  %225 = load %struct.ipu3_uapi_flags*, %struct.ipu3_uapi_flags** %9, align 8
  %226 = getelementptr inbounds %struct.ipu3_uapi_flags, %struct.ipu3_uapi_flags* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br label %229

229:                                              ; preds = %224, %218
  %230 = phi i1 [ false, %218 ], [ %228, %224 ]
  %231 = zext i1 %230 to i32
  %232 = load %struct.ipu3_uapi_params*, %struct.ipu3_uapi_params** %12, align 8
  %233 = getelementptr inbounds %struct.ipu3_uapi_params, %struct.ipu3_uapi_params* %232, i32 0, i32 0
  %234 = load i8*, i8** %11, align 8
  %235 = load i8*, i8** %10, align 8
  %236 = load i32, i32* %19, align 4
  %237 = load %struct.imgu_fw_param_memory_offsets*, %struct.imgu_fw_param_memory_offsets** %14, align 8
  %238 = getelementptr inbounds %struct.imgu_fw_param_memory_offsets, %struct.imgu_fw_param_memory_offsets* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = call %struct.ipu3_uapi_isp_xnr3_vmem_params* @imgu_css_cfg_copy(%struct.imgu_css* %220, i32 %221, i32 %231, i32* %233, i8* %234, i8* %235, i32 %236, i32* %239, i32 104)
  store %struct.ipu3_uapi_isp_xnr3_vmem_params* %240, %struct.ipu3_uapi_isp_xnr3_vmem_params** %17, align 8
  %241 = load %struct.ipu3_uapi_isp_xnr3_vmem_params*, %struct.ipu3_uapi_isp_xnr3_vmem_params** %17, align 8
  %242 = call i32 @IS_ERR_OR_NULL(%struct.ipu3_uapi_isp_xnr3_vmem_params* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %297, label %244

244:                                              ; preds = %229
  %245 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @imgu_css_xnr3_vmem_defaults, i32 0, i32 3), align 8
  %246 = load i32, i32* %20, align 4
  %247 = load i32, i32* @IMGU_XNR3_VMEM_LUT_LEN, align 4
  %248 = urem i32 %246, %247
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %245, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.ipu3_uapi_isp_xnr3_vmem_params*, %struct.ipu3_uapi_isp_xnr3_vmem_params** %17, align 8
  %253 = getelementptr inbounds %struct.ipu3_uapi_isp_xnr3_vmem_params, %struct.ipu3_uapi_isp_xnr3_vmem_params* %252, i32 0, i32 12
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %20, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 %251, i32* %257, align 4
  %258 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @imgu_css_xnr3_vmem_defaults, i32 0, i32 2), align 8
  %259 = load i32, i32* %20, align 4
  %260 = load i32, i32* @IMGU_XNR3_VMEM_LUT_LEN, align 4
  %261 = urem i32 %259, %260
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %258, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ipu3_uapi_isp_xnr3_vmem_params*, %struct.ipu3_uapi_isp_xnr3_vmem_params** %17, align 8
  %266 = getelementptr inbounds %struct.ipu3_uapi_isp_xnr3_vmem_params, %struct.ipu3_uapi_isp_xnr3_vmem_params* %265, i32 0, i32 11
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %20, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  store i32 %264, i32* %270, align 4
  %271 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @imgu_css_xnr3_vmem_defaults, i32 0, i32 1), align 8
  %272 = load i32, i32* %20, align 4
  %273 = load i32, i32* @IMGU_XNR3_VMEM_LUT_LEN, align 4
  %274 = urem i32 %272, %273
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %271, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.ipu3_uapi_isp_xnr3_vmem_params*, %struct.ipu3_uapi_isp_xnr3_vmem_params** %17, align 8
  %279 = getelementptr inbounds %struct.ipu3_uapi_isp_xnr3_vmem_params, %struct.ipu3_uapi_isp_xnr3_vmem_params* %278, i32 0, i32 10
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %20, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  store i32 %277, i32* %283, align 4
  %284 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @imgu_css_xnr3_vmem_defaults, i32 0, i32 0), align 8
  %285 = load i32, i32* %20, align 4
  %286 = load i32, i32* @IMGU_XNR3_VMEM_LUT_LEN, align 4
  %287 = urem i32 %285, %286
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %284, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.ipu3_uapi_isp_xnr3_vmem_params*, %struct.ipu3_uapi_isp_xnr3_vmem_params** %17, align 8
  %292 = getelementptr inbounds %struct.ipu3_uapi_isp_xnr3_vmem_params, %struct.ipu3_uapi_isp_xnr3_vmem_params* %291, i32 0, i32 9
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %20, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 %290, i32* %296, align 4
  br label %297

297:                                              ; preds = %244, %229
  %298 = load %struct.ipu3_uapi_isp_lin_vmem_params*, %struct.ipu3_uapi_isp_lin_vmem_params** %15, align 8
  %299 = bitcast %struct.ipu3_uapi_isp_lin_vmem_params* %298 to %struct.ipu3_uapi_isp_xnr3_vmem_params*
  %300 = call i64 @IS_ERR(%struct.ipu3_uapi_isp_xnr3_vmem_params* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %311, label %302

302:                                              ; preds = %297
  %303 = load %struct.ipu3_uapi_isp_tnr3_vmem_params*, %struct.ipu3_uapi_isp_tnr3_vmem_params** %16, align 8
  %304 = bitcast %struct.ipu3_uapi_isp_tnr3_vmem_params* %303 to %struct.ipu3_uapi_isp_xnr3_vmem_params*
  %305 = call i64 @IS_ERR(%struct.ipu3_uapi_isp_xnr3_vmem_params* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %302
  %308 = load %struct.ipu3_uapi_isp_xnr3_vmem_params*, %struct.ipu3_uapi_isp_xnr3_vmem_params** %17, align 8
  %309 = call i64 @IS_ERR(%struct.ipu3_uapi_isp_xnr3_vmem_params* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %307, %302, %297
  %312 = load i32, i32* @EPROTO, align 4
  %313 = sub nsw i32 0, %312
  br label %315

314:                                              ; preds = %307
  br label %315

315:                                              ; preds = %314, %311
  %316 = phi i32 [ %313, %311 ], [ 0, %314 ]
  ret i32 %316
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.ipu3_uapi_isp_xnr3_vmem_params* @imgu_css_cfg_copy(%struct.imgu_css*, i32, i32, i32*, i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ipu3_uapi_isp_xnr3_vmem_params*) #1

declare dso_local i64 @IS_ERR(%struct.ipu3_uapi_isp_xnr3_vmem_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
