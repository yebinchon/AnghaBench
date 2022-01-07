; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_awb_ops_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_awb_ops_calc.c"
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
%struct.imgu_abi_awb_config = type { %struct.TYPE_17__*, %struct.TYPE_15__, %struct.imgu_abi_awb_intra_frame_operations_data }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.imgu_abi_awb_intra_frame_operations_data = type { i32, i32, i32 }
%struct.process_lines = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@IMGU_ABI_AWB_MAX_TRANSFERS = common dso_local global i32 0, align 4
@IMGU_ABI_AWB_MAX_OPERATIONS = common dso_local global i32 0, align 4
@IPU3_CSS_RECT_BDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_css*, i32, %struct.imgu_abi_awb_config*)* @imgu_css_awb_ops_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_css_awb_ops_calc(%struct.imgu_css* %0, i32 %1, %struct.imgu_abi_awb_config* %2) #0 {
  %4 = alloca %struct.imgu_css*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imgu_abi_awb_config*, align 8
  %7 = alloca %struct.imgu_abi_awb_intra_frame_operations_data*, align 8
  %8 = alloca %struct.imgu_css_pipe*, align 8
  %9 = alloca %struct.imgu_fw_info*, align 8
  %10 = alloca %struct.process_lines, align 4
  store %struct.imgu_css* %0, %struct.imgu_css** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.imgu_abi_awb_config* %2, %struct.imgu_abi_awb_config** %6, align 8
  %11 = load %struct.imgu_abi_awb_config*, %struct.imgu_abi_awb_config** %6, align 8
  %12 = getelementptr inbounds %struct.imgu_abi_awb_config, %struct.imgu_abi_awb_config* %11, i32 0, i32 2
  store %struct.imgu_abi_awb_intra_frame_operations_data* %12, %struct.imgu_abi_awb_intra_frame_operations_data** %7, align 8
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
  %29 = load %struct.imgu_abi_awb_config*, %struct.imgu_abi_awb_config** %6, align 8
  %30 = getelementptr inbounds %struct.imgu_abi_awb_config, %struct.imgu_abi_awb_config* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  store i32 %34, i32* %28, align 4
  %35 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 1
  %36 = load %struct.imgu_fw_info*, %struct.imgu_fw_info** %9, align 8
  %37 = getelementptr inbounds %struct.imgu_fw_info, %struct.imgu_fw_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %35, align 4
  %43 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 2
  %44 = load i32, i32* @IMGU_ABI_AWB_MAX_TRANSFERS, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 3
  %46 = load i32, i32* @IMGU_ABI_AWB_MAX_OPERATIONS, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 4
  %48 = load %struct.imgu_abi_awb_config*, %struct.imgu_abi_awb_config** %6, align 8
  %49 = getelementptr inbounds %struct.imgu_abi_awb_config, %struct.imgu_abi_awb_config* %48, i32 0, i32 0
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %47, align 4
  %55 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 5
  %56 = load %struct.imgu_abi_awb_config*, %struct.imgu_abi_awb_config** %6, align 8
  %57 = getelementptr inbounds %struct.imgu_abi_awb_config, %struct.imgu_abi_awb_config* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %55, align 4
  %61 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 6
  %62 = load %struct.imgu_abi_awb_config*, %struct.imgu_abi_awb_config** %6, align 8
  %63 = getelementptr inbounds %struct.imgu_abi_awb_config, %struct.imgu_abi_awb_config* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %61, align 4
  %67 = getelementptr inbounds %struct.process_lines, %struct.process_lines* %10, i32 0, i32 7
  %68 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %8, align 8
  %69 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load i64, i64* @IPU3_CSS_RECT_BDS, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %67, align 4
  %75 = load %struct.imgu_abi_awb_intra_frame_operations_data*, %struct.imgu_abi_awb_intra_frame_operations_data** %7, align 8
  %76 = getelementptr inbounds %struct.imgu_abi_awb_intra_frame_operations_data, %struct.imgu_abi_awb_intra_frame_operations_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.imgu_abi_awb_intra_frame_operations_data*, %struct.imgu_abi_awb_intra_frame_operations_data** %7, align 8
  %79 = getelementptr inbounds %struct.imgu_abi_awb_intra_frame_operations_data, %struct.imgu_abi_awb_intra_frame_operations_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.imgu_abi_awb_intra_frame_operations_data*, %struct.imgu_abi_awb_intra_frame_operations_data** %7, align 8
  %82 = getelementptr inbounds %struct.imgu_abi_awb_intra_frame_operations_data, %struct.imgu_abi_awb_intra_frame_operations_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @imgu_css_acc_process_lines(%struct.process_lines* %10, i32 %77, i32 %80, i32 %83)
  ret i32 %84
}

declare dso_local i32 @imgu_css_acc_process_lines(%struct.process_lines*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
