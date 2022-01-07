; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.backlight_properties = type { i32, i32 }
%struct.panel_drv_data = type { %struct.backlight_device*, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.omap_dss_device, %struct.platform_device* }
%struct.backlight_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.omap_dss_device = type { i32, %struct.TYPE_5__, i32, i32, i32*, %struct.device* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }

@.str = private unnamed_addr constant [7 x i8] c"probe\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dsicm_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DSI = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@OMAP_DSS_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_CAP_TEAR_ELIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to register panel\0A\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"taal rst\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to request reset gpio\0A\00", align 1
@GPIOF_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"taal irq\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"GPIO request failed\0A\00", align 1
@dsicm_te_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"taal vsync\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"IRQ request failed\0A\00", align 1
@dsicm_te_timeout_work_callback = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Using GPIO TE\0A\00", align 1
@dsicm_ulps_work = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@dsicm_bl_ops = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i8* null, align 8
@dsicm_attr_group = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to create sysfs files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsicm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca %struct.backlight_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.omap_dss_device*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.backlight_device* null, %struct.backlight_device** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = call i32 @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %221

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.panel_drv_data* @devm_kzalloc(%struct.device* %23, i32 112, i32 %24)
  store %struct.panel_drv_data* %25, %struct.panel_drv_data** %5, align 8
  %26 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %27 = icmp ne %struct.panel_drv_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %221

31:                                               ; preds = %22
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.panel_drv_data* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %37 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %36, i32 0, i32 10
  store %struct.platform_device* %35, %struct.platform_device** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i32 @dsicm_probe_of(%struct.platform_device* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %2, align 4
  br label %221

44:                                               ; preds = %31
  %45 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %46 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 864, i32* %47, align 8
  %48 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %49 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 480, i32* %50, align 4
  %51 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %52 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 24883200, i32* %53, align 8
  %54 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %55 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %54, i32 0, i32 9
  store %struct.omap_dss_device* %55, %struct.omap_dss_device** %8, align 8
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %58 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %57, i32 0, i32 5
  store %struct.device* %56, %struct.device** %58, align 8
  %59 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %60 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %59, i32 0, i32 4
  store i32* @dsicm_ops, i32** %60, align 8
  %61 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %62 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %65 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %64, i32 0, i32 8
  %66 = bitcast %struct.TYPE_4__* %63 to i8*
  %67 = bitcast %struct.TYPE_4__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 8 %67, i64 12, i1 false)
  %68 = load i32, i32* @OMAP_DISPLAY_TYPE_DSI, align 4
  %69 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %70 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @THIS_MODULE, align 4
  %72 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %73 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @OMAP_DSS_DSI_FMT_RGB888, align 4
  %75 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %76 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE, align 4
  %79 = load i32, i32* @OMAP_DSS_DISPLAY_CAP_TEAR_ELIM, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %82 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %84 = call i32 @omapdss_register_display(%struct.omap_dss_device* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %44
  %88 = load %struct.device*, %struct.device** %7, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %219

90:                                               ; preds = %44
  %91 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %92 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %91, i32 0, i32 7
  %93 = call i32 @mutex_init(i32* %92)
  %94 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %95 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %94, i32 0, i32 6
  %96 = call i32 @atomic_set(i32* %95, i32 0)
  %97 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %98 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @gpio_is_valid(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %90
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %105 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %108 = call i32 @devm_gpio_request_one(%struct.device* %103, i32 %106, i32 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load %struct.device*, %struct.device** %7, align 8
  %113 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %2, align 4
  br label %221

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %90
  %117 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %118 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @gpio_is_valid(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %116
  %123 = load %struct.device*, %struct.device** %7, align 8
  %124 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %125 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @GPIOF_IN, align 4
  %128 = call i32 @devm_gpio_request_one(%struct.device* %123, i32 %126, i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %122
  %132 = load %struct.device*, %struct.device** %7, align 8
  %133 = call i32 @dev_err(%struct.device* %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %2, align 4
  br label %221

135:                                              ; preds = %122
  %136 = load %struct.device*, %struct.device** %7, align 8
  %137 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %138 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @gpio_to_irq(i32 %139)
  %141 = load i32, i32* @dsicm_te_isr, align 4
  %142 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %143 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %144 = call i32 @devm_request_irq(%struct.device* %136, i32 %140, i32 %141, i32 %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %struct.panel_drv_data* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %135
  %148 = load %struct.device*, %struct.device** %7, align 8
  %149 = call i32 @dev_err(%struct.device* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %2, align 4
  br label %221

151:                                              ; preds = %135
  %152 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %153 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %152, i32 0, i32 3
  %154 = load i32, i32* @dsicm_te_timeout_work_callback, align 4
  %155 = call i32 @INIT_DEFERRABLE_WORK(i32* %153, i32 %154)
  %156 = load %struct.device*, %struct.device** %7, align 8
  %157 = call i32 @dev_dbg(%struct.device* %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %158

158:                                              ; preds = %151, %116
  %159 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %160 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %159, i32 0, i32 2
  %161 = load i32, i32* @dsicm_ulps_work, align 4
  %162 = call i32 @INIT_DELAYED_WORK(i32* %160, i32 %161)
  %163 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %164 = call i32 @dsicm_hw_reset(%struct.panel_drv_data* %163)
  %165 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %166 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %202

169:                                              ; preds = %158
  %170 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 8)
  %171 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 255, i32* %171, align 4
  %172 = load i32, i32* @BACKLIGHT_RAW, align 4
  %173 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %172, i32* %173, align 4
  %174 = load %struct.device*, %struct.device** %7, align 8
  %175 = call i32 @dev_name(%struct.device* %174)
  %176 = load %struct.device*, %struct.device** %7, align 8
  %177 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %178 = call %struct.backlight_device* @backlight_device_register(i32 %175, %struct.device* %176, %struct.panel_drv_data* %177, i32* @dsicm_bl_ops, %struct.backlight_properties* %4)
  store %struct.backlight_device* %178, %struct.backlight_device** %6, align 8
  %179 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %180 = call i64 @IS_ERR(%struct.backlight_device* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %169
  %183 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %184 = call i32 @PTR_ERR(%struct.backlight_device* %183)
  store i32 %184, i32* %9, align 4
  br label %219

185:                                              ; preds = %169
  %186 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %187 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %188 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %187, i32 0, i32 0
  store %struct.backlight_device* %186, %struct.backlight_device** %188, align 8
  %189 = load i8*, i8** @FB_BLANK_UNBLANK, align 8
  %190 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %191 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  store i8* %189, i8** %192, align 8
  %193 = load i8*, i8** @FB_BLANK_UNBLANK, align 8
  %194 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %195 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  store i8* %193, i8** %196, align 8
  %197 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %198 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  store i32 255, i32* %199, align 8
  %200 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %201 = call i32 @dsicm_bl_update_status(%struct.backlight_device* %200)
  br label %202

202:                                              ; preds = %185, %158
  %203 = load %struct.device*, %struct.device** %7, align 8
  %204 = getelementptr inbounds %struct.device, %struct.device* %203, i32 0, i32 0
  %205 = call i32 @sysfs_create_group(i32* %204, i32* @dsicm_attr_group)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %202
  %209 = load %struct.device*, %struct.device** %7, align 8
  %210 = call i32 @dev_err(%struct.device* %209, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %212

211:                                              ; preds = %202
  store i32 0, i32* %2, align 4
  br label %221

212:                                              ; preds = %208
  %213 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %214 = icmp ne %struct.backlight_device* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %217 = call i32 @backlight_device_unregister(%struct.backlight_device* %216)
  br label %218

218:                                              ; preds = %215, %212
  br label %219

219:                                              ; preds = %218, %182, %87
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %219, %211, %147, %131, %111, %42, %28, %19
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_probe_of(%struct.platform_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @omapdss_register_display(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.panel_drv_data*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @dsicm_hw_reset(%struct.panel_drv_data*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i32, %struct.device*, %struct.panel_drv_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @dsicm_bl_update_status(%struct.backlight_device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @backlight_device_unregister(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
