; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_proto_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_proto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i64, i32 }

@DSI_FIFO_SIZE_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DSI_CTRL = common dso_local global i32 0, align 4
@FEAT_DSI_DCS_CMD_CONFIG_VC = common dso_local global i32 0, align 4
@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_proto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_proto_config(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %7)
  store %struct.dsi_data* %8, %struct.dsi_data** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %11 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %12 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %13 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %14 = call i32 @dsi_config_tx_fifo(%struct.platform_device* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %17 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %18 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %19 = load i32, i32* @DSI_FIFO_SIZE_32, align 4
  %20 = call i32 @dsi_config_rx_fifo(%struct.platform_device* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @dsi_set_stop_state_counter(%struct.platform_device* %21, i32 4096, i32 0, i32 0)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @dsi_set_ta_timeout(%struct.platform_device* %23, i32 8191, i32 1, i32 1)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i32 @dsi_set_lp_rx_timeout(%struct.platform_device* %25, i32 8191, i32 1, i32 1)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @dsi_set_hs_tx_timeout(%struct.platform_device* %27, i32 8191, i32 1, i32 1)
  %29 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %30 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dsi_get_pixel_size(i32 %31)
  switch i32 %32, label %36 [
    i32 16, label %33
    i32 18, label %34
    i32 24, label %35
  ]

33:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %40

34:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %40

35:                                               ; preds = %1
  store i32 2, i32* %6, align 4
  br label %40

36:                                               ; preds = %1
  %37 = call i32 (...) @BUG()
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %97

40:                                               ; preds = %35, %34, %33
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @DSI_CTRL, align 4
  %43 = call i32 @dsi_read_reg(%struct.platform_device* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @FLD_MOD(i32 %44, i32 1, i32 1, i32 1)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @FLD_MOD(i32 %46, i32 1, i32 2, i32 2)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @FLD_MOD(i32 %48, i32 1, i32 3, i32 3)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @FLD_MOD(i32 %50, i32 1, i32 4, i32 4)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @FLD_MOD(i32 %52, i32 %53, i32 7, i32 6)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @FLD_MOD(i32 %55, i32 0, i32 8, i32 8)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @FLD_MOD(i32 %57, i32 1, i32 14, i32 14)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @FLD_MOD(i32 %59, i32 1, i32 19, i32 19)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @FEAT_DSI_DCS_CMD_CONFIG_VC, align 4
  %62 = call i32 @dss_has_feature(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %40
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @FLD_MOD(i32 %65, i32 1, i32 24, i32 24)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @FLD_MOD(i32 %67, i32 0, i32 25, i32 25)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %40
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load i32, i32* @DSI_CTRL, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dsi_write_reg(%struct.platform_device* %70, i32 %71, i32 %72)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = call i32 @dsi_config_vp_num_line_buffers(%struct.platform_device* %74)
  %76 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %77 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = call i32 @dsi_config_vp_sync_events(%struct.platform_device* %82)
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = call i32 @dsi_config_blanking_modes(%struct.platform_device* %84)
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = call i32 @dsi_config_cmd_mode_interleaving(%struct.platform_device* %86)
  br label %88

88:                                               ; preds = %81, %69
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i32 @dsi_vc_initial_config(%struct.platform_device* %89, i32 0)
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = call i32 @dsi_vc_initial_config(%struct.platform_device* %91, i32 1)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = call i32 @dsi_vc_initial_config(%struct.platform_device* %93, i32 2)
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = call i32 @dsi_vc_initial_config(%struct.platform_device* %95, i32 3)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %88, %36
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dsi_config_tx_fifo(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_config_rx_fifo(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_set_stop_state_counter(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @dsi_set_ta_timeout(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @dsi_set_lp_rx_timeout(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @dsi_set_hs_tx_timeout(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dss_has_feature(i32) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dsi_config_vp_num_line_buffers(%struct.platform_device*) #1

declare dso_local i32 @dsi_config_vp_sync_events(%struct.platform_device*) #1

declare dso_local i32 @dsi_config_blanking_modes(%struct.platform_device*) #1

declare dso_local i32 @dsi_config_cmd_mode_interleaving(%struct.platform_device*) #1

declare dso_local i32 @dsi_vc_initial_config(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
