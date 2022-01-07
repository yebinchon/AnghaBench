; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_data_path_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_data_path_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_data_path_params_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.acx_data_path_params = type { i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"acx data path params\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DP_RX_PACKET_RING_CHUNK_SIZE = common dso_local global i32 0, align 4
@DP_TX_PACKET_RING_CHUNK_SIZE = common dso_local global i32 0, align 4
@DP_RX_PACKET_RING_CHUNK_NUM = common dso_local global i32 0, align 4
@DP_TX_PACKET_RING_CHUNK_NUM = common dso_local global i32 0, align 4
@FW_TX_CMPLT_BLOCK_SIZE = common dso_local global i32 0, align 4
@DP_TX_COMPLETE_TIME_OUT = common dso_local global i32 0, align 4
@ACX_DATA_PATH_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to read data path parameters: %d\00", align 1
@CMD_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"data path parameter acx status failed\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_data_path_params(%struct.wl1251* %0, %struct.acx_data_path_params_resp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca %struct.acx_data_path_params_resp*, align 8
  %6 = alloca %struct.acx_data_path_params*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store %struct.acx_data_path_params_resp* %1, %struct.acx_data_path_params_resp** %5, align 8
  %8 = load i32, i32* @DEBUG_ACX, align 4
  %9 = call i32 @wl1251_debug(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.acx_data_path_params* @kzalloc(i32 28, i32 %10)
  store %struct.acx_data_path_params* %11, %struct.acx_data_path_params** %6, align 8
  %12 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %6, align 8
  %13 = icmp ne %struct.acx_data_path_params* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load i32, i32* @DP_RX_PACKET_RING_CHUNK_SIZE, align 4
  %19 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %6, align 8
  %20 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @DP_TX_PACKET_RING_CHUNK_SIZE, align 4
  %22 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %6, align 8
  %23 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @DP_RX_PACKET_RING_CHUNK_NUM, align 4
  %25 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %6, align 8
  %26 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DP_TX_PACKET_RING_CHUNK_NUM, align 4
  %28 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %6, align 8
  %29 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %6, align 8
  %31 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @FW_TX_CMPLT_BLOCK_SIZE, align 4
  %33 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %6, align 8
  %34 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @DP_TX_COMPLETE_TIME_OUT, align 4
  %36 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %6, align 8
  %37 = getelementptr inbounds %struct.acx_data_path_params, %struct.acx_data_path_params* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %39 = load i32, i32* @ACX_DATA_PATH_PARAMS, align 4
  %40 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %6, align 8
  %41 = call i32 @wl1251_cmd_configure(%struct.wl1251* %38, i32 %39, %struct.acx_data_path_params* %40, i32 28)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %17
  br label %69

45:                                               ; preds = %17
  %46 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %47 = load i32, i32* @ACX_DATA_PATH_PARAMS, align 4
  %48 = load %struct.acx_data_path_params_resp*, %struct.acx_data_path_params_resp** %5, align 8
  %49 = call i32 @wl1251_cmd_interrogate(%struct.wl1251* %46, i32 %47, %struct.acx_data_path_params_resp* %48, i32 8)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i8*, ...) @wl1251_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %69

55:                                               ; preds = %45
  %56 = load %struct.acx_data_path_params_resp*, %struct.acx_data_path_params_resp** %5, align 8
  %57 = getelementptr inbounds %struct.acx_data_path_params_resp, %struct.acx_data_path_params_resp* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CMD_STATUS_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = call i32 (i8*, ...) @wl1251_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %69

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %63, %52, %44
  %70 = load %struct.acx_data_path_params*, %struct.acx_data_path_params** %6, align 8
  %71 = call i32 @kfree(%struct.acx_data_path_params* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_data_path_params* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_data_path_params*, i32) #1

declare dso_local i32 @wl1251_cmd_interrogate(%struct.wl1251*, i32, %struct.acx_data_path_params_resp*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, ...) #1

declare dso_local i32 @kfree(%struct.acx_data_path_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
