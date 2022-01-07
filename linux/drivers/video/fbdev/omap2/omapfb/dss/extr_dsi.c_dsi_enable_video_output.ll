; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_enable_video_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_enable_video_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }
%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i64, %struct.TYPE_2__, %struct.omap_dss_device }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"failed to enable display: no output/manager\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@MIPI_DSI_PACKED_PIXEL_STREAM_24 = common dso_local global i32 0, align 4
@MIPI_DSI_PIXEL_STREAM_3BYTE_18 = common dso_local global i32 0, align 4
@MIPI_DSI_PACKED_PIXEL_STREAM_18 = common dso_local global i32 0, align 4
@MIPI_DSI_PACKED_PIXEL_STREAM_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32)* @dsi_enable_video_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_enable_video_output(%struct.omap_dss_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.dsi_data*, align 8
  %8 = alloca %struct.omap_overlay_manager*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_dss_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %15 = call %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device* %14)
  store %struct.platform_device* %15, %struct.platform_device** %6, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %17 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %16)
  store %struct.dsi_data* %17, %struct.dsi_data** %7, align 8
  %18 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %19, i32 0, i32 0
  %21 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %20, align 8
  store %struct.omap_overlay_manager* %21, %struct.omap_overlay_manager** %8, align 8
  %22 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %23 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dsi_get_pixel_size(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %27 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %26, i32 0, i32 3
  store %struct.omap_dss_device* %27, %struct.omap_dss_device** %10, align 8
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %29 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %28, i32 0, i32 0
  %30 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %29, align 8
  %31 = icmp eq %struct.omap_overlay_manager* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = call i32 @DSSERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %117

36:                                               ; preds = %2
  %37 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %38 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %39 = call i32 @dsi_display_init_dispc(%struct.platform_device* %37, %struct.omap_overlay_manager* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %115

43:                                               ; preds = %36
  %44 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %45 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %91

49:                                               ; preds = %43
  %50 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %51 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %61 [
    i32 128, label %53
    i32 130, label %55
    i32 129, label %57
    i32 131, label %59
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_24, align 4
  store i32 %54, i32* %11, align 4
  br label %64

55:                                               ; preds = %49
  %56 = load i32, i32* @MIPI_DSI_PIXEL_STREAM_3BYTE_18, align 4
  store i32 %56, i32* %11, align 4
  br label %64

57:                                               ; preds = %49
  %58 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_18, align 4
  store i32 %58, i32* %11, align 4
  br label %64

59:                                               ; preds = %49
  %60 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_16, align 4
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %49
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %111

64:                                               ; preds = %59, %57, %55, %53
  %65 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %66 = call i32 @dsi_if_enable(%struct.platform_device* %65, i32 0)
  %67 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @dsi_vc_enable(%struct.platform_device* %67, i32 %68, i32 0)
  %70 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @DSI_VC_CTRL(i32 %71)
  %73 = call i32 @REG_FLD_MOD(%struct.platform_device* %70, i32 %72, i32 1, i32 4, i32 4)
  %74 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %75 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %77, %78
  %80 = call i32 @DIV_ROUND_UP(i32 %79, i32 8)
  store i32 %80, i32* %12, align 4
  %81 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @dsi_vc_write_long_header(%struct.platform_device* %81, i32 %82, i32 %83, i32 %84, i32 0)
  %86 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @dsi_vc_enable(%struct.platform_device* %86, i32 %87, i32 1)
  %89 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %90 = call i32 @dsi_if_enable(%struct.platform_device* %89, i32 1)
  br label %91

91:                                               ; preds = %64, %43
  %92 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %93 = call i32 @dss_mgr_enable(%struct.omap_overlay_manager* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %98

97:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %117

98:                                               ; preds = %96
  %99 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %100 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %106 = call i32 @dsi_if_enable(%struct.platform_device* %105, i32 0)
  %107 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @dsi_vc_enable(%struct.platform_device* %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %61
  %112 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %113 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %114 = call i32 @dsi_display_uninit_dispc(%struct.platform_device* %112, %struct.omap_overlay_manager* %113)
  br label %115

115:                                              ; preds = %111, %42
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %97, %32
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_display_init_dispc(%struct.platform_device*, %struct.omap_overlay_manager*) #1

declare dso_local i32 @dsi_if_enable(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_vc_enable(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dsi_vc_write_long_header(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dss_mgr_enable(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dsi_display_uninit_dispc(%struct.platform_device*, %struct.omap_overlay_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
