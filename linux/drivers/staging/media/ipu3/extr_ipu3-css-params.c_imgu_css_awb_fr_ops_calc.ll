; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_awb_fr_ops_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_awb_fr_ops_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css = type { %struct.TYPE_12__*, %struct.imgu_css_pipe* }
%struct.TYPE_12__ = type { %struct.imgu_fw_info* }
%struct.imgu_fw_info = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.imgu_css_pipe = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.imgu_abi_awb_fr_config = type { %struct.TYPE_17__*, %struct.TYPE_15__, %struct.imgu_abi_awb_fr_intra_frame_operations_data }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.imgu_abi_awb_fr_intra_frame_operations_data = type { i32, i32 }
%struct.process_lines = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@IPU3_UAPI_GRID_START_MASK = common dso_local global i32 0, align 4
@IMGU_ABI_AWB_FR_MAX_PROCESS_LINES = common dso_local global i32 0, align 4
@IMGU_ABI_AWB_FR_MAX_OPERATIONS = common dso_local global i32 0, align 4
@IPU3_CSS_RECT_BDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_css*, i32, %struct.imgu_abi_awb_fr_config*)* @imgu_css_awb_fr_ops_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_css_awb_fr_ops_calc(%struct.imgu_css* %0, i32 %1, %struct.imgu_abi_awb_fr_config* %2) #0 {
  %4 = alloca %struct.imgu_css*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imgu_abi_awb_fr_config*, align 8
  %7 = alloca %struct.imgu_abi_awb_fr_intra_frame_operations_data*, align 8
  %8 = alloca %struct.imgu_css_pipe*, align 8
  %9 = alloca %struct.imgu_fw_info*, align 8
  %10 = alloca %struct.process_lines, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.imgu_abi_awb_fr_config* %2, %struct.imgu_abi_awb_fr_config** %6, align 8
  %11 = load %struct.imgu_abi_awb_fr_config*, %struct.imgu_abi_awb_fr_config** %6, align 8
  %12 = getelementptr inbounds %struct.imgu_abi_awb_fr_config, %struct.imgu_abi_awb_fr_config* %11, i32 0, i32 2
  store %struct.imgu_abi_awb_fr_intra_frame_operations_data* %12, %struct.imgu_abi_awb_fr_intra_frame_operations_data** %7, align 8
  %13 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %14 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %13, i32 0, i32 1
  %15 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %15, i64 %17
  store %struct.imgu_css_pipe* %18, %struct.imgu_css_pipe** %8, align 8
  %19 = load %struct.imgu_css*, %struct.imgu_css** %4, align 8
  %20 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %22, align 8
  %24 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %8, align 8
  %25 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %23, i64 %26
  store %struct.imgu_fw_info* %27, %struct.imgu_fw_info** %9, align 8
  %28 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 0
  %29 = load %struct.imgu_abi_awb_fr_config*, %struct.imgu_abi_awb_fr_config** %6, align 8
  %30 = getelementptr inbounds %struct.imgu_abi_awb_fr_config, %struct.imgu_abi_awb_fr_config* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  store i32 %34, i32* %28, align 4
  %35 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 1
  %36 = load %struct.imgu_abi_awb_fr_config*, %struct.imgu_abi_awb_fr_config** %6, align 8
  %37 = getelementptr inbounds %struct.imgu_abi_awb_fr_config, %struct.imgu_abi_awb_fr_config* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IPU3_UAPI_GRID_START_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %35, align 4
  %43 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 2
  %44 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %9, align 8
  %45 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %43, align 4
  %51 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 3
  %52 = load i32, i32* @IMGU_ABI_AWB_FR_MAX_PROCESS_LINES, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 4
  %54 = load i32, i32* @IMGU_ABI_AWB_FR_MAX_OPERATIONS, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 5
  %56 = load %struct.imgu_abi_awb_fr_config*, %struct.imgu_abi_awb_fr_config** %6, align 8
  %57 = getelementptr inbounds %struct.imgu_abi_awb_fr_config, %struct.imgu_abi_awb_fr_config* %56, i32 0, i32 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %55, align 4
  %63 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 6
  %64 = load %struct.imgu_abi_awb_fr_config*, %struct.imgu_abi_awb_fr_config** %6, align 8
  %65 = getelementptr inbounds %struct.imgu_abi_awb_fr_config, %struct.imgu_abi_awb_fr_config* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %63, align 4
  %69 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 7
  %70 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %8, align 8
  %71 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %70, i32 0, i32 1
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = load i64, i64* @IPU3_CSS_RECT_BDS, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %69, align 4
  %77 = load %struct.imgu_abi_awb_fr_intra_frame_operations_data*, %struct.imgu_abi_awb_fr_intra_frame_operations_data** %7, align 8
  %78 = getelementptr inbounds %struct.imgu_abi_awb_fr_intra_frame_operations_data, %struct.imgu_abi_awb_fr_intra_frame_operations_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.imgu_abi_awb_fr_intra_frame_operations_data*, %struct.imgu_abi_awb_fr_intra_frame_operations_data** %7, align 8
  %81 = getelementptr inbounds %struct.imgu_abi_awb_fr_intra_frame_operations_data, %struct.imgu_abi_awb_fr_intra_frame_operations_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @imgu_css_acc_process_lines(%struct.process_lines* %10, i32 %79, i32 %82, i32* null)
  ret i32 %83
}

declare dso_local i32 @imgu_css_acc_process_lines(%struct.process_lines*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
