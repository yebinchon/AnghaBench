; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_cfg_dmem0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_cfg_dmem0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.TYPE_12__*, %struct.imgu_css_pipe* }
%struct.TYPE_12__ = type { %struct.imgu_fw_info* }
%struct.imgu_fw_info = type { %struct.TYPE_19__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.imgu_css_pipe = type { i64, i64 }
%struct.ipu3_uapi_flags = type { i64, i64 }
%struct.ipu3_uapi_params = type { i32, i32 }
%struct.imgu_fw_param_memory_offsets = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.ipu3_uapi_isp_tnr3_params = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.ipu3_uapi_isp_xnr3_params = type { i32, i32, %struct.TYPE_11__ }

@IMGU_ABI_PARAM_CLASS_PARAM = common dso_local global i64 0, align 8
@IMGU_ABI_MEM_ISP_DMEM0 = common dso_local global i32 0, align 4
@IPU3_CSS_PIPE_ID_VIDEO = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_css_cfg_dmem0(%struct.imgu_css* %0, i32 %1, %struct.ipu3_uapi_flags* %2, i8* %3, i8* %4, %struct.ipu3_uapi_params* %5) #0 {
  %7 = alloca %struct.imgu_css*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipu3_uapi_flags*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ipu3_uapi_params*, align 8
  %13 = alloca %struct.imgu_css_pipe*, align 8
  %14 = alloca %struct.imgu_fw_info*, align 8
  %15 = alloca %struct.imgu_fw_param_memory_offsets*, align 8
  %16 = alloca %struct.ipu3_uapi_isp_tnr3_params*, align 8
  %17 = alloca %struct.ipu3_uapi_isp_xnr3_params*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ipu3_uapi_flags* %2, %struct.ipu3_uapi_flags** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.ipu3_uapi_params* %5, %struct.ipu3_uapi_params** %12, align 8
  %20 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %21 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %20, i32 0, i32 1
  %22 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %22, i64 %24
  store %struct.imgu_css_pipe* %25, %struct.imgu_css_pipe** %13, align 8
  %26 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %27 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %29, align 8
  %31 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %13, align 8
  %32 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %30, i64 %33
  store %struct.imgu_fw_info* %34, %struct.imgu_fw_info** %14, align 8
  %35 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %36 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = bitcast %struct.TYPE_12__* %37 to i8*
  %39 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %14, align 8
  %40 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @IMGU_ABI_PARAM_CLASS_PARAM, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %38, i64 %47
  %49 = bitcast i8* %48 to %struct.imgu_fw_param_memory_offsets*
  store %struct.imgu_fw_param_memory_offsets* %49, %struct.imgu_fw_param_memory_offsets** %15, align 8
  store %struct.ipu3_uapi_isp_tnr3_params* null, %struct.ipu3_uapi_isp_tnr3_params** %16, align 8
  %50 = load i64, i64* @IMGU_ABI_PARAM_CLASS_PARAM, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* @IMGU_ABI_MEM_ISP_DMEM0, align 4
  store i32 %52, i32* %19, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %14, align 8
  %55 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %60, i64 %62
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = load i32, i32* %19, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memset(i8* %53, i32 0, i32 %69)
  %71 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %13, align 8
  %72 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IPU3_CSS_PIPE_ID_VIDEO, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %6
  %77 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.ipu3_uapi_flags*, %struct.ipu3_uapi_flags** %9, align 8
  %80 = icmp ne %struct.ipu3_uapi_flags* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.ipu3_uapi_flags*, %struct.ipu3_uapi_flags** %9, align 8
  %83 = getelementptr inbounds %struct.ipu3_uapi_flags, %struct.ipu3_uapi_flags* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ false, %76 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = load %struct.ipu3_uapi_params*, %struct.ipu3_uapi_params** %12, align 8
  %90 = getelementptr inbounds %struct.ipu3_uapi_params, %struct.ipu3_uapi_params* %89, i32 0, i32 1
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %19, align 4
  %94 = load %struct.imgu_fw_param_memory_offsets*, %struct.imgu_fw_param_memory_offsets** %15, align 8
  %95 = getelementptr inbounds %struct.imgu_fw_param_memory_offsets, %struct.imgu_fw_param_memory_offsets* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = call %struct.ipu3_uapi_isp_xnr3_params* @imgu_css_cfg_copy(%struct.imgu_css* %77, i32 %78, i32 %88, i32* %90, i8* %91, i8* %92, i32 %93, i32* %96, i32 20)
  %98 = bitcast %struct.ipu3_uapi_isp_xnr3_params* %97 to %struct.ipu3_uapi_isp_tnr3_params*
  store %struct.ipu3_uapi_isp_tnr3_params* %98, %struct.ipu3_uapi_isp_tnr3_params** %16, align 8
  %99 = load %struct.ipu3_uapi_isp_tnr3_params*, %struct.ipu3_uapi_isp_tnr3_params** %16, align 8
  %100 = bitcast %struct.ipu3_uapi_isp_tnr3_params* %99 to %struct.ipu3_uapi_isp_xnr3_params*
  %101 = call i32 @IS_ERR_OR_NULL(%struct.ipu3_uapi_isp_xnr3_params* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %86
  %104 = load %struct.ipu3_uapi_isp_tnr3_params*, %struct.ipu3_uapi_isp_tnr3_params** %16, align 8
  %105 = getelementptr inbounds %struct.ipu3_uapi_isp_tnr3_params, %struct.ipu3_uapi_isp_tnr3_params* %104, i32 0, i32 0
  store i32 768, i32* %105, align 4
  %106 = load %struct.ipu3_uapi_isp_tnr3_params*, %struct.ipu3_uapi_isp_tnr3_params** %16, align 8
  %107 = getelementptr inbounds %struct.ipu3_uapi_isp_tnr3_params, %struct.ipu3_uapi_isp_tnr3_params* %106, i32 0, i32 1
  store i32 1280, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %86
  br label %109

109:                                              ; preds = %108, %6
  %110 = load %struct.imgu_css*, %struct.imgu_css** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.ipu3_uapi_flags*, %struct.ipu3_uapi_flags** %9, align 8
  %113 = icmp ne %struct.ipu3_uapi_flags* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.ipu3_uapi_flags*, %struct.ipu3_uapi_flags** %9, align 8
  %116 = getelementptr inbounds %struct.ipu3_uapi_flags, %struct.ipu3_uapi_flags* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i1 [ false, %109 ], [ %118, %114 ]
  %121 = zext i1 %120 to i32
  %122 = load %struct.ipu3_uapi_params*, %struct.ipu3_uapi_params** %12, align 8
  %123 = getelementptr inbounds %struct.ipu3_uapi_params, %struct.ipu3_uapi_params* %122, i32 0, i32 0
  %124 = load i8*, i8** %11, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load i32, i32* %19, align 4
  %127 = load %struct.imgu_fw_param_memory_offsets*, %struct.imgu_fw_param_memory_offsets** %15, align 8
  %128 = getelementptr inbounds %struct.imgu_fw_param_memory_offsets, %struct.imgu_fw_param_memory_offsets* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = call %struct.ipu3_uapi_isp_xnr3_params* @imgu_css_cfg_copy(%struct.imgu_css* %110, i32 %111, i32 %121, i32* %123, i8* %124, i8* %125, i32 %126, i32* %129, i32 20)
  store %struct.ipu3_uapi_isp_xnr3_params* %130, %struct.ipu3_uapi_isp_xnr3_params** %17, align 8
  %131 = load %struct.ipu3_uapi_isp_xnr3_params*, %struct.ipu3_uapi_isp_xnr3_params** %17, align 8
  %132 = call i32 @IS_ERR_OR_NULL(%struct.ipu3_uapi_isp_xnr3_params* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %119
  %135 = load %struct.ipu3_uapi_isp_xnr3_params*, %struct.ipu3_uapi_isp_xnr3_params** %17, align 8
  %136 = getelementptr inbounds %struct.ipu3_uapi_isp_xnr3_params, %struct.ipu3_uapi_isp_xnr3_params* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i32 2047, i32* %137, align 4
  %138 = load %struct.ipu3_uapi_isp_xnr3_params*, %struct.ipu3_uapi_isp_xnr3_params** %17, align 8
  %139 = getelementptr inbounds %struct.ipu3_uapi_isp_xnr3_params, %struct.ipu3_uapi_isp_xnr3_params* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  store i32 2047, i32* %140, align 4
  %141 = load %struct.ipu3_uapi_isp_xnr3_params*, %struct.ipu3_uapi_isp_xnr3_params** %17, align 8
  %142 = getelementptr inbounds %struct.ipu3_uapi_isp_xnr3_params, %struct.ipu3_uapi_isp_xnr3_params* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  store i32 2047, i32* %143, align 4
  br label %144

144:                                              ; preds = %134, %119
  %145 = load %struct.ipu3_uapi_isp_tnr3_params*, %struct.ipu3_uapi_isp_tnr3_params** %16, align 8
  %146 = bitcast %struct.ipu3_uapi_isp_tnr3_params* %145 to %struct.ipu3_uapi_isp_xnr3_params*
  %147 = call i64 @IS_ERR(%struct.ipu3_uapi_isp_xnr3_params* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = load %struct.ipu3_uapi_isp_xnr3_params*, %struct.ipu3_uapi_isp_xnr3_params** %17, align 8
  %151 = call i64 @IS_ERR(%struct.ipu3_uapi_isp_xnr3_params* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149, %144
  %154 = load i32, i32* @EPROTO, align 4
  %155 = sub nsw i32 0, %154
  br label %157

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %153
  %158 = phi i32 [ %155, %153 ], [ 0, %156 ]
  ret i32 %158
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.ipu3_uapi_isp_xnr3_params* @imgu_css_cfg_copy(%struct.imgu_css*, i32, i32, i32*, i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ipu3_uapi_isp_xnr3_params*) #1

declare dso_local i64 @IS_ERR(%struct.ipu3_uapi_isp_xnr3_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
