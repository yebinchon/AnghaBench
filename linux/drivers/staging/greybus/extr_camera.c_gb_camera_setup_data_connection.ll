; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_setup_data_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_camera.c_gb_camera_setup_data_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_camera = type { %struct.gb_connection*, %struct.TYPE_2__*, i32, i32 }
%struct.gb_connection = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gb_camera_configure_streams_response = type { i32 }
%struct.gb_camera_csi_params = type { i32, i32 }
%struct.ap_csi_config_request = type { i32, i32, i32, i32, i64 }

@GB_CONNECTION_FLAG_NO_FLOWCTRL = common dso_local global i32 0, align 4
@GB_CONNECTION_FLAG_CDSI1 = common dso_local global i32 0, align 4
@GB_CAMERA_CSI_NUM_DATA_LANES = common dso_local global i32 0, align 4
@GB_CAMERA_CSI_CLK_FREQ_MARGIN = common dso_local global i64 0, align 8
@GB_CAMERA_CSI_CLK_FREQ_MIN = common dso_local global i32 0, align 4
@GB_CAMERA_CSI_CLK_FREQ_MAX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GB_APB_REQUEST_CSI_TX_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to start the CSI transmitter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_camera*, %struct.gb_camera_configure_streams_response*, %struct.gb_camera_csi_params*)* @gb_camera_setup_data_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_camera_setup_data_connection(%struct.gb_camera* %0, %struct.gb_camera_configure_streams_response* %1, %struct.gb_camera_csi_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_camera*, align 8
  %6 = alloca %struct.gb_camera_configure_streams_response*, align 8
  %7 = alloca %struct.gb_camera_csi_params*, align 8
  %8 = alloca %struct.ap_csi_config_request, align 8
  %9 = alloca %struct.gb_connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gb_camera* %0, %struct.gb_camera** %5, align 8
  store %struct.gb_camera_configure_streams_response* %1, %struct.gb_camera_configure_streams_response** %6, align 8
  store %struct.gb_camera_csi_params* %2, %struct.gb_camera_csi_params** %7, align 8
  %12 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %13 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %16 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GB_CONNECTION_FLAG_NO_FLOWCTRL, align 4
  %19 = load i32, i32* @GB_CONNECTION_FLAG_CDSI1, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.gb_connection* @gb_connection_create_offloaded(i32 %14, i32 %17, i32 %20)
  store %struct.gb_connection* %21, %struct.gb_connection** %9, align 8
  %22 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %23 = call i64 @IS_ERR(%struct.gb_connection* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %27 = call i32 @PTR_ERR(%struct.gb_connection* %26)
  store i32 %27, i32* %4, align 4
  br label %119

28:                                               ; preds = %3
  %29 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %30 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %31 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %30, i32 0, i32 0
  store %struct.gb_connection* %29, %struct.gb_connection** %31, align 8
  %32 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %33 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %34 = call i32 @gb_connection_set_data(%struct.gb_connection* %32, %struct.gb_camera* %33)
  %35 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %36 = call i32 @gb_connection_enable(%struct.gb_connection* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %111

40:                                               ; preds = %28
  %41 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %42 = call i32 @gb_camera_set_power_mode(%struct.gb_camera* %41, i32 1)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %106

46:                                               ; preds = %40
  %47 = call i32 @memset(%struct.ap_csi_config_request* %8, i32 0, i32 24)
  %48 = getelementptr inbounds %struct.ap_csi_config_request, %struct.ap_csi_config_request* %8, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.ap_csi_config_request, %struct.ap_csi_config_request* %8, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @GB_CAMERA_CSI_NUM_DATA_LANES, align 4
  %51 = getelementptr inbounds %struct.ap_csi_config_request, %struct.ap_csi_config_request* %8, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %6, align 8
  %53 = getelementptr inbounds %struct.gb_camera_configure_streams_response, %struct.gb_camera_configure_streams_response* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 2
  %56 = load i32, i32* @GB_CAMERA_CSI_NUM_DATA_LANES, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @GB_CAMERA_CSI_CLK_FREQ_MARGIN, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* @GB_CAMERA_CSI_CLK_FREQ_MIN, align 4
  %63 = load i32, i32* @GB_CAMERA_CSI_CLK_FREQ_MAX, align 4
  %64 = call i32 @clamp(i64 %61, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds %struct.ap_csi_config_request, %struct.ap_csi_config_request* %8, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %68 = load %struct.gb_camera_configure_streams_response*, %struct.gb_camera_configure_streams_response** %6, align 8
  %69 = call i32 @gb_camera_get_max_pkt_size(%struct.gb_camera* %67, %struct.gb_camera_configure_streams_response* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %46
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %103

75:                                               ; preds = %46
  %76 = load i32, i32* %11, align 4
  %77 = getelementptr inbounds %struct.ap_csi_config_request, %struct.ap_csi_config_request* %8, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %79 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GB_APB_REQUEST_CSI_TX_CONTROL, align 4
  %84 = call i32 @gb_hd_output(i32 %82, %struct.ap_csi_config_request* %8, i32 24, i32 %83, i32 0)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %89 = call i32 @gcam_err(%struct.gb_camera* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %103

90:                                               ; preds = %75
  %91 = load %struct.gb_camera_csi_params*, %struct.gb_camera_csi_params** %7, align 8
  %92 = icmp ne %struct.gb_camera_csi_params* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.ap_csi_config_request, %struct.ap_csi_config_request* %8, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.gb_camera_csi_params*, %struct.gb_camera_csi_params** %7, align 8
  %97 = getelementptr inbounds %struct.gb_camera_csi_params, %struct.gb_camera_csi_params* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.ap_csi_config_request, %struct.ap_csi_config_request* %8, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.gb_camera_csi_params*, %struct.gb_camera_csi_params** %7, align 8
  %101 = getelementptr inbounds %struct.gb_camera_csi_params, %struct.gb_camera_csi_params* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %93, %90
  store i32 0, i32* %4, align 4
  br label %119

103:                                              ; preds = %87, %72
  %104 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %105 = call i32 @gb_camera_set_power_mode(%struct.gb_camera* %104, i32 0)
  br label %106

106:                                              ; preds = %103, %45
  %107 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %108 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %107, i32 0, i32 0
  %109 = load %struct.gb_connection*, %struct.gb_connection** %108, align 8
  %110 = call i32 @gb_connection_disable(%struct.gb_connection* %109)
  br label %111

111:                                              ; preds = %106, %39
  %112 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %113 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %112, i32 0, i32 0
  %114 = load %struct.gb_connection*, %struct.gb_connection** %113, align 8
  %115 = call i32 @gb_connection_destroy(%struct.gb_connection* %114)
  %116 = load %struct.gb_camera*, %struct.gb_camera** %5, align 8
  %117 = getelementptr inbounds %struct.gb_camera, %struct.gb_camera* %116, i32 0, i32 0
  store %struct.gb_connection* null, %struct.gb_connection** %117, align 8
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %111, %102, %25
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.gb_connection* @gb_connection_create_offloaded(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_camera*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @gb_camera_set_power_mode(%struct.gb_camera*, i32) #1

declare dso_local i32 @memset(%struct.ap_csi_config_request*, i32, i32) #1

declare dso_local i32 @clamp(i64, i32, i32) #1

declare dso_local i32 @gb_camera_get_max_pkt_size(%struct.gb_camera*, %struct.gb_camera_configure_streams_response*) #1

declare dso_local i32 @gb_hd_output(i32, %struct.ap_csi_config_request*, i32, i32, i32) #1

declare dso_local i32 @gcam_err(%struct.gb_camera*, i8*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
