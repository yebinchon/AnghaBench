; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_8__, i32, %struct.omap_dss_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.omap_dss_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.omap_dss_device*, %struct.TYPE_8__*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_dsi_config*)*, i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)* }
%struct.omap_dss_dsi_config = type { i32, i32, i32, i32, i32*, i32, i32 }

@OMAP_DSS_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@OMAP_DSS_DSI_CMD_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to configure DSI pins\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to configure DSI\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to enable DSI\0A\00", align 1
@DCS_BRIGHTNESS = common dso_local global i32 0, align 4
@DCS_CTRL_DISPLAY = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_PIXEL_FMT_24BIT = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"panel revision %02x.%02x.%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"error while enabling panel, issuing HW reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*)* @dsicm_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_power_on(%struct.panel_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_dss_dsi_config, align 8
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  %10 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %11 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %10, i32 0, i32 7
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  store %struct.omap_dss_device* %12, %struct.omap_dss_device** %4, align 8
  %13 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 0
  store i32 150000000, i32* %13, align 8
  %14 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 1
  store i32 300000000, i32* %14, align 4
  %15 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 2
  store i32 7000000, i32* %15, align 8
  %16 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 3
  store i32 10000000, i32* %16, align 4
  %17 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 4
  %18 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %19 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %18, i32 0, i32 6
  store i32* %19, i32** %17, align 8
  %20 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 5
  %21 = load i32, i32* @OMAP_DSS_DSI_FMT_RGB888, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 6
  %23 = load i32, i32* @OMAP_DSS_DSI_CMD_MODE, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %25 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %1
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %31 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.omap_dss_device*, %struct.TYPE_8__*)*, i32 (%struct.omap_dss_device*, %struct.TYPE_8__*)** %34, align 8
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %37 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %38 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %37, i32 0, i32 5
  %39 = call i32 %35(%struct.omap_dss_device* %36, %struct.TYPE_8__* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %44 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %207

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %51 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32 (%struct.omap_dss_device*, %struct.omap_dss_dsi_config*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_dsi_config*)** %54, align 8
  %56 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %57 = call i32 %55(%struct.omap_dss_device* %56, %struct.omap_dss_dsi_config* %9)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %62 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %207

66:                                               ; preds = %49
  %67 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %68 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %71, align 8
  %73 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %74 = call i32 %72(%struct.omap_dss_device* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %79 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %207

83:                                               ; preds = %66
  %84 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %85 = call i32 @dsicm_hw_reset(%struct.panel_drv_data* %84)
  %86 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %87 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  %91 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %90, align 8
  %92 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %93 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %94 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %91(%struct.omap_dss_device* %92, i32 %95, i32 0)
  %97 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %98 = call i32 @dsicm_sleep_out(%struct.panel_drv_data* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %83
  br label %191

102:                                              ; preds = %83
  %103 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %104 = call i32 @dsicm_get_id(%struct.panel_drv_data* %103, i32* %5, i32* %6, i32* %7)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %191

108:                                              ; preds = %102
  %109 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %110 = load i32, i32* @DCS_BRIGHTNESS, align 4
  %111 = call i32 @dsicm_dcs_write_1(%struct.panel_drv_data* %109, i32 %110, i32 255)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %191

115:                                              ; preds = %108
  %116 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %117 = load i32, i32* @DCS_CTRL_DISPLAY, align 4
  %118 = call i32 @dsicm_dcs_write_1(%struct.panel_drv_data* %116, i32 %117, i32 36)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %191

122:                                              ; preds = %115
  %123 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %124 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %125 = load i32, i32* @MIPI_DCS_PIXEL_FMT_24BIT, align 4
  %126 = call i32 @dsicm_dcs_write_1(%struct.panel_drv_data* %123, i32 %124, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %191

130:                                              ; preds = %122
  %131 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %132 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %133 = call i32 @dsicm_dcs_write_0(%struct.panel_drv_data* %131, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %191

137:                                              ; preds = %130
  %138 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %139 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %140 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @_dsicm_enable_te(%struct.panel_drv_data* %138, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %191

146:                                              ; preds = %137
  %147 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %148 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %151, align 8
  %153 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %154 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %155 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 %152(%struct.omap_dss_device* %153, i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  br label %191

161:                                              ; preds = %146
  %162 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %163 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  %164 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %165 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %161
  %169 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %170 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %169, i32 0, i32 2
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @dev_info(i32* %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %173, i32 %174, i32 %175)
  %177 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %178 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %168, %161
  %180 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %181 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 5
  %185 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %184, align 8
  %186 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %187 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %188 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 %185(%struct.omap_dss_device* %186, i32 %189, i32 1)
  store i32 0, i32* %2, align 4
  br label %209

191:                                              ; preds = %160, %145, %136, %129, %121, %114, %107, %101
  %192 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %193 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %192, i32 0, i32 2
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = call i32 @dev_err(i32* %195, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %197 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %198 = call i32 @dsicm_hw_reset(%struct.panel_drv_data* %197)
  %199 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %200 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 4
  %204 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %203, align 8
  %205 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %206 = call i32 %204(%struct.omap_dss_device* %205, i32 1, i32 0)
  br label %207

207:                                              ; preds = %191, %77, %60, %42
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %207, %179
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dsicm_hw_reset(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_sleep_out(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_get_id(%struct.panel_drv_data*, i32*, i32*, i32*) #1

declare dso_local i32 @dsicm_dcs_write_1(%struct.panel_drv_data*, i32, i32) #1

declare dso_local i32 @dsicm_dcs_write_0(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @_dsicm_enable_te(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
