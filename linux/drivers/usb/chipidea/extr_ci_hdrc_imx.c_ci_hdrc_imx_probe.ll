; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_ci_hdrc_imx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_ci_hdrc_imx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ci_hdrc_imx_data = type { i32, i32, %struct.pinctrl_state*, i32, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.ci_hdrc_imx_platform_flag* }
%struct.pinctrl_state = type { i32 }
%struct.ci_hdrc_imx_platform_flag = type { i32 }
%struct.ci_hdrc_platform_data = type { i32, %struct.pinctrl_state*, i32, i32, i32 }
%struct.of_device_id = type { %struct.ci_hdrc_imx_platform_flag* }

@ci_hdrc_imx_notify_event = common dso_local global i32 0, align 4
@DEF_CAPOFFSET = common dso_local global i32 0, align 4
@ci_hdrc_imx_dt_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBPHY_INTERFACE_MODE_HSIC = common dso_local global i64 0, align 8
@CI_HDRC_IMX_IS_HSIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pinctrl get failed, err=%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"pinctrl_hsic_idle lookup failed, err=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"hsic_idle select failed, err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"pinctrl_hsic_active lookup failed, err=%ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hsic\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Get HSIC pad regulator error: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to enable HSIC pad regulator\0A\00", align 1
@CI_HDRC_PMQOS = common dso_local global i32 0, align 4
@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"fsl,usbphy\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"fsl,imx53-usb\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"fsl,imx51-usb\00", align 1
@USBPHY_INTERFACE_MODE_ULPI = common dso_local global i64 0, align 8
@CI_HDRC_OVERRIDE_PHY_CONTROL = common dso_local global i32 0, align 4
@CI_HDRC_SUPPORTS_RUNTIME_PM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"usbmisc init failed, ret=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"ci_hdrc_add_device failed, err=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"usbmisc post failed, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ci_hdrc_imx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_hdrc_imx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ci_hdrc_imx_data*, align 8
  %5 = alloca %struct.ci_hdrc_platform_data, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.ci_hdrc_imx_platform_flag*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.pinctrl_state*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 1
  store %struct.pinctrl_state* null, %struct.pinctrl_state** %13, align 8
  %14 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 2
  %15 = load i32, i32* @ci_hdrc_imx_notify_event, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 3
  %17 = load i32, i32* @DEF_CAPOFFSET, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 2
  %21 = call i32 @dev_name(%struct.device* %20)
  store i32 %21, i32* %18, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  store %struct.device_node* %25, %struct.device_node** %9, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 2
  store %struct.device* %27, %struct.device** %10, align 8
  %28 = load i32, i32* @ci_hdrc_imx_dt_ids, align 4
  %29 = load %struct.device*, %struct.device** %10, align 8
  %30 = call %struct.of_device_id* @of_match_device(i32 %28, %struct.device* %29)
  store %struct.of_device_id* %30, %struct.of_device_id** %7, align 8
  %31 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %32 = icmp ne %struct.of_device_id* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %417

36:                                               ; preds = %1
  %37 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %38 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %37, i32 0, i32 0
  %39 = load %struct.ci_hdrc_imx_platform_flag*, %struct.ci_hdrc_imx_platform_flag** %38, align 8
  store %struct.ci_hdrc_imx_platform_flag* %39, %struct.ci_hdrc_imx_platform_flag** %8, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 2
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.ci_hdrc_imx_data* @devm_kzalloc(%struct.device* %41, i32 72, i32 %42)
  store %struct.ci_hdrc_imx_data* %43, %struct.ci_hdrc_imx_data** %4, align 8
  %44 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %45 = icmp ne %struct.ci_hdrc_imx_data* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %417

49:                                               ; preds = %36
  %50 = load %struct.ci_hdrc_imx_platform_flag*, %struct.ci_hdrc_imx_platform_flag** %8, align 8
  %51 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %52 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %51, i32 0, i32 9
  store %struct.ci_hdrc_imx_platform_flag* %50, %struct.ci_hdrc_imx_platform_flag** %52, align 8
  %53 = load %struct.ci_hdrc_imx_platform_flag*, %struct.ci_hdrc_imx_platform_flag** %8, align 8
  %54 = getelementptr inbounds %struct.ci_hdrc_imx_platform_flag, %struct.ci_hdrc_imx_platform_flag* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %61 = call i32 @platform_set_drvdata(%struct.platform_device* %59, %struct.ci_hdrc_imx_data* %60)
  %62 = load %struct.device*, %struct.device** %10, align 8
  %63 = call %struct.pinctrl_state* @usbmisc_get_init_data(%struct.device* %62)
  %64 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %65 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %64, i32 0, i32 5
  store %struct.pinctrl_state* %63, %struct.pinctrl_state** %65, align 8
  %66 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %67 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %66, i32 0, i32 5
  %68 = load %struct.pinctrl_state*, %struct.pinctrl_state** %67, align 8
  %69 = call i64 @IS_ERR(%struct.pinctrl_state* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %49
  %72 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %73 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %72, i32 0, i32 5
  %74 = load %struct.pinctrl_state*, %struct.pinctrl_state** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.pinctrl_state* %74)
  store i32 %75, i32* %2, align 4
  br label %417

76:                                               ; preds = %49
  %77 = load %struct.device*, %struct.device** %10, align 8
  %78 = getelementptr inbounds %struct.device, %struct.device* %77, i32 0, i32 0
  %79 = load %struct.device_node*, %struct.device_node** %78, align 8
  %80 = call i64 @of_usb_get_phy_mode(%struct.device_node* %79)
  %81 = load i64, i64* @USBPHY_INTERFACE_MODE_HSIC, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %233

83:                                               ; preds = %76
  %84 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %85 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %84, i32 0, i32 5
  %86 = load %struct.pinctrl_state*, %struct.pinctrl_state** %85, align 8
  %87 = icmp ne %struct.pinctrl_state* %86, null
  br i1 %87, label %88, label %233

88:                                               ; preds = %83
  %89 = load i32, i32* @CI_HDRC_IMX_IS_HSIC, align 4
  %90 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 8
  %93 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %94 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %93, i32 0, i32 5
  %95 = load %struct.pinctrl_state*, %struct.pinctrl_state** %94, align 8
  %96 = getelementptr inbounds %struct.pinctrl_state, %struct.pinctrl_state* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  %97 = load %struct.device*, %struct.device** %10, align 8
  %98 = call %struct.pinctrl_state* @devm_pinctrl_get(%struct.device* %97)
  %99 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %100 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %99, i32 0, i32 8
  store %struct.pinctrl_state* %98, %struct.pinctrl_state** %100, align 8
  %101 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %102 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %101, i32 0, i32 8
  %103 = load %struct.pinctrl_state*, %struct.pinctrl_state** %102, align 8
  %104 = call i64 @IS_ERR(%struct.pinctrl_state* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %88
  %107 = load %struct.device*, %struct.device** %10, align 8
  %108 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %109 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %108, i32 0, i32 8
  %110 = load %struct.pinctrl_state*, %struct.pinctrl_state** %109, align 8
  %111 = call i32 @PTR_ERR(%struct.pinctrl_state* %110)
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %114 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %113, i32 0, i32 8
  %115 = load %struct.pinctrl_state*, %struct.pinctrl_state** %114, align 8
  %116 = call i32 @PTR_ERR(%struct.pinctrl_state* %115)
  store i32 %116, i32* %2, align 4
  br label %417

117:                                              ; preds = %88
  %118 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %119 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %118, i32 0, i32 8
  %120 = load %struct.pinctrl_state*, %struct.pinctrl_state** %119, align 8
  %121 = call i8* @pinctrl_lookup_state(%struct.pinctrl_state* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %122 = bitcast i8* %121 to %struct.pinctrl_state*
  store %struct.pinctrl_state* %122, %struct.pinctrl_state** %11, align 8
  %123 = load %struct.pinctrl_state*, %struct.pinctrl_state** %11, align 8
  %124 = call i64 @IS_ERR(%struct.pinctrl_state* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load %struct.device*, %struct.device** %10, align 8
  %128 = load %struct.pinctrl_state*, %struct.pinctrl_state** %11, align 8
  %129 = call i32 @PTR_ERR(%struct.pinctrl_state* %128)
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load %struct.pinctrl_state*, %struct.pinctrl_state** %11, align 8
  %132 = call i32 @PTR_ERR(%struct.pinctrl_state* %131)
  store i32 %132, i32* %2, align 4
  br label %417

133:                                              ; preds = %117
  %134 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %135 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %134, i32 0, i32 8
  %136 = load %struct.pinctrl_state*, %struct.pinctrl_state** %135, align 8
  %137 = load %struct.pinctrl_state*, %struct.pinctrl_state** %11, align 8
  %138 = call i32 @pinctrl_select_state(%struct.pinctrl_state* %136, %struct.pinctrl_state* %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load %struct.device*, %struct.device** %10, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %417

146:                                              ; preds = %133
  %147 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %148 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %147, i32 0, i32 8
  %149 = load %struct.pinctrl_state*, %struct.pinctrl_state** %148, align 8
  %150 = call i8* @pinctrl_lookup_state(%struct.pinctrl_state* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %151 = bitcast i8* %150 to %struct.pinctrl_state*
  %152 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %153 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %152, i32 0, i32 7
  store %struct.pinctrl_state* %151, %struct.pinctrl_state** %153, align 8
  %154 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %155 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %154, i32 0, i32 7
  %156 = load %struct.pinctrl_state*, %struct.pinctrl_state** %155, align 8
  %157 = call i64 @IS_ERR(%struct.pinctrl_state* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %146
  %160 = load %struct.device*, %struct.device** %10, align 8
  %161 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %162 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %161, i32 0, i32 7
  %163 = load %struct.pinctrl_state*, %struct.pinctrl_state** %162, align 8
  %164 = call i32 @PTR_ERR(%struct.pinctrl_state* %163)
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %160, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  %166 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %167 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %166, i32 0, i32 7
  %168 = load %struct.pinctrl_state*, %struct.pinctrl_state** %167, align 8
  %169 = call i32 @PTR_ERR(%struct.pinctrl_state* %168)
  store i32 %169, i32* %2, align 4
  br label %417

170:                                              ; preds = %146
  %171 = load %struct.device*, %struct.device** %10, align 8
  %172 = call %struct.pinctrl_state* @devm_regulator_get(%struct.device* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %173 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %174 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %173, i32 0, i32 4
  store %struct.pinctrl_state* %172, %struct.pinctrl_state** %174, align 8
  %175 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %176 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %175, i32 0, i32 4
  %177 = load %struct.pinctrl_state*, %struct.pinctrl_state** %176, align 8
  %178 = call i32 @PTR_ERR(%struct.pinctrl_state* %177)
  %179 = load i32, i32* @EPROBE_DEFER, align 4
  %180 = sub nsw i32 0, %179
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %170
  %183 = load i32, i32* @EPROBE_DEFER, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %417

185:                                              ; preds = %170
  %186 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %187 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %186, i32 0, i32 4
  %188 = load %struct.pinctrl_state*, %struct.pinctrl_state** %187, align 8
  %189 = call i32 @PTR_ERR(%struct.pinctrl_state* %188)
  %190 = load i32, i32* @ENODEV, align 4
  %191 = sub nsw i32 0, %190
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %195 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %194, i32 0, i32 4
  store %struct.pinctrl_state* null, %struct.pinctrl_state** %195, align 8
  br label %214

196:                                              ; preds = %185
  %197 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %198 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %197, i32 0, i32 4
  %199 = load %struct.pinctrl_state*, %struct.pinctrl_state** %198, align 8
  %200 = call i64 @IS_ERR(%struct.pinctrl_state* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %196
  %203 = load %struct.device*, %struct.device** %10, align 8
  %204 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %205 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %204, i32 0, i32 4
  %206 = load %struct.pinctrl_state*, %struct.pinctrl_state** %205, align 8
  %207 = call i32 @PTR_ERR(%struct.pinctrl_state* %206)
  %208 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %203, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %207)
  %209 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %210 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %209, i32 0, i32 4
  %211 = load %struct.pinctrl_state*, %struct.pinctrl_state** %210, align 8
  %212 = call i32 @PTR_ERR(%struct.pinctrl_state* %211)
  store i32 %212, i32* %2, align 4
  br label %417

213:                                              ; preds = %196
  br label %214

214:                                              ; preds = %213, %193
  br label %215

215:                                              ; preds = %214
  %216 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %217 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %216, i32 0, i32 4
  %218 = load %struct.pinctrl_state*, %struct.pinctrl_state** %217, align 8
  %219 = icmp ne %struct.pinctrl_state* %218, null
  br i1 %219, label %220, label %232

220:                                              ; preds = %215
  %221 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %222 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %221, i32 0, i32 4
  %223 = load %struct.pinctrl_state*, %struct.pinctrl_state** %222, align 8
  %224 = call i32 @regulator_enable(%struct.pinctrl_state* %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %220
  %228 = load %struct.device*, %struct.device** %10, align 8
  %229 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %228, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %230 = load i32, i32* %6, align 4
  store i32 %230, i32* %2, align 4
  br label %417

231:                                              ; preds = %220
  br label %232

232:                                              ; preds = %231, %215
  br label %233

233:                                              ; preds = %232, %83, %76
  %234 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @CI_HDRC_PMQOS, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %233
  %240 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %241 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %240, i32 0, i32 3
  %242 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %243 = call i32 @pm_qos_add_request(i32* %241, i32 %242, i32 0)
  br label %244

244:                                              ; preds = %239, %233
  %245 = load %struct.device*, %struct.device** %10, align 8
  %246 = call i32 @imx_get_clks(%struct.device* %245)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %393

250:                                              ; preds = %244
  %251 = load %struct.device*, %struct.device** %10, align 8
  %252 = call i32 @imx_prepare_enable_clks(%struct.device* %251)
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %6, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %393

256:                                              ; preds = %250
  %257 = load %struct.device*, %struct.device** %10, align 8
  %258 = call %struct.pinctrl_state* @devm_usb_get_phy_by_phandle(%struct.device* %257, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %259 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %260 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %259, i32 0, i32 6
  store %struct.pinctrl_state* %258, %struct.pinctrl_state** %260, align 8
  %261 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %262 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %261, i32 0, i32 6
  %263 = load %struct.pinctrl_state*, %struct.pinctrl_state** %262, align 8
  %264 = call i64 @IS_ERR(%struct.pinctrl_state* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %256
  %267 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %268 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %267, i32 0, i32 6
  %269 = load %struct.pinctrl_state*, %struct.pinctrl_state** %268, align 8
  %270 = call i32 @PTR_ERR(%struct.pinctrl_state* %269)
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @ENODEV, align 4
  %273 = sub nsw i32 0, %272
  %274 = icmp eq i32 %271, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %266
  %276 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %277 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %276, i32 0, i32 6
  store %struct.pinctrl_state* null, %struct.pinctrl_state** %277, align 8
  br label %279

278:                                              ; preds = %266
  br label %390

279:                                              ; preds = %275
  br label %280

280:                                              ; preds = %279, %256
  %281 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %282 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %281, i32 0, i32 6
  %283 = load %struct.pinctrl_state*, %struct.pinctrl_state** %282, align 8
  %284 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 1
  store %struct.pinctrl_state* %283, %struct.pinctrl_state** %284, align 8
  %285 = load %struct.device_node*, %struct.device_node** %9, align 8
  %286 = call i64 @of_device_is_compatible(%struct.device_node* %285, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %280
  %289 = load %struct.device_node*, %struct.device_node** %9, align 8
  %290 = call i64 @of_device_is_compatible(%struct.device_node* %289, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %311

292:                                              ; preds = %288, %280
  %293 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 1
  %294 = load %struct.pinctrl_state*, %struct.pinctrl_state** %293, align 8
  %295 = icmp ne %struct.pinctrl_state* %294, null
  br i1 %295, label %296, label %311

296:                                              ; preds = %292
  %297 = load %struct.device_node*, %struct.device_node** %9, align 8
  %298 = call i64 @of_usb_get_phy_mode(%struct.device_node* %297)
  %299 = load i64, i64* @USBPHY_INTERFACE_MODE_ULPI, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %311

301:                                              ; preds = %296
  %302 = load i32, i32* @CI_HDRC_OVERRIDE_PHY_CONTROL, align 4
  %303 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %302
  store i32 %305, i32* %303, align 8
  %306 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %307 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %306, i32 0, i32 0
  store i32 1, i32* %307, align 8
  %308 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 1
  %309 = load %struct.pinctrl_state*, %struct.pinctrl_state** %308, align 8
  %310 = call i32 @usb_phy_init(%struct.pinctrl_state* %309)
  br label %311

311:                                              ; preds = %301, %296, %292, %288
  %312 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @CI_HDRC_SUPPORTS_RUNTIME_PM, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %311
  %318 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %319 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %318, i32 0, i32 1
  store i32 1, i32* %319, align 4
  br label %320

320:                                              ; preds = %317, %311
  %321 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %322 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %321, i32 0, i32 5
  %323 = load %struct.pinctrl_state*, %struct.pinctrl_state** %322, align 8
  %324 = call i32 @imx_usbmisc_init(%struct.pinctrl_state* %323)
  store i32 %324, i32* %6, align 4
  %325 = load i32, i32* %6, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %320
  %328 = load %struct.device*, %struct.device** %10, align 8
  %329 = load i32, i32* %6, align 4
  %330 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %328, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %329)
  br label %390

331:                                              ; preds = %320
  %332 = load %struct.device*, %struct.device** %10, align 8
  %333 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %334 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %337 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = call %struct.pinctrl_state* @ci_hdrc_add_device(%struct.device* %332, i32 %335, i32 %338, %struct.ci_hdrc_platform_data* %5)
  %340 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %341 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %340, i32 0, i32 2
  store %struct.pinctrl_state* %339, %struct.pinctrl_state** %341, align 8
  %342 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %343 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %342, i32 0, i32 2
  %344 = load %struct.pinctrl_state*, %struct.pinctrl_state** %343, align 8
  %345 = call i64 @IS_ERR(%struct.pinctrl_state* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %361

347:                                              ; preds = %331
  %348 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %349 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %348, i32 0, i32 2
  %350 = load %struct.pinctrl_state*, %struct.pinctrl_state** %349, align 8
  %351 = call i32 @PTR_ERR(%struct.pinctrl_state* %350)
  store i32 %351, i32* %6, align 4
  %352 = load i32, i32* %6, align 4
  %353 = load i32, i32* @EPROBE_DEFER, align 4
  %354 = sub nsw i32 0, %353
  %355 = icmp ne i32 %352, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %347
  %357 = load %struct.device*, %struct.device** %10, align 8
  %358 = load i32, i32* %6, align 4
  %359 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %357, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %358)
  br label %360

360:                                              ; preds = %356, %347
  br label %390

361:                                              ; preds = %331
  %362 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %363 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %362, i32 0, i32 5
  %364 = load %struct.pinctrl_state*, %struct.pinctrl_state** %363, align 8
  %365 = call i32 @imx_usbmisc_init_post(%struct.pinctrl_state* %364)
  store i32 %365, i32* %6, align 4
  %366 = load i32, i32* %6, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %361
  %369 = load %struct.device*, %struct.device** %10, align 8
  %370 = load i32, i32* %6, align 4
  %371 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %369, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %370)
  br label %385

372:                                              ; preds = %361
  %373 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %374 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %372
  %378 = load %struct.device*, %struct.device** %10, align 8
  %379 = call i32 @pm_runtime_set_active(%struct.device* %378)
  %380 = load %struct.device*, %struct.device** %10, align 8
  %381 = call i32 @pm_runtime_enable(%struct.device* %380)
  br label %382

382:                                              ; preds = %377, %372
  %383 = load %struct.device*, %struct.device** %10, align 8
  %384 = call i32 @device_set_wakeup_capable(%struct.device* %383, i32 1)
  store i32 0, i32* %2, align 4
  br label %417

385:                                              ; preds = %368
  %386 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %387 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %386, i32 0, i32 2
  %388 = load %struct.pinctrl_state*, %struct.pinctrl_state** %387, align 8
  %389 = call i32 @ci_hdrc_remove_device(%struct.pinctrl_state* %388)
  br label %390

390:                                              ; preds = %385, %360, %327, %278
  %391 = load %struct.device*, %struct.device** %10, align 8
  %392 = call i32 @imx_disable_unprepare_clks(%struct.device* %391)
  br label %393

393:                                              ; preds = %390, %255, %249
  %394 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %395 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %394, i32 0, i32 4
  %396 = load %struct.pinctrl_state*, %struct.pinctrl_state** %395, align 8
  %397 = icmp ne %struct.pinctrl_state* %396, null
  br i1 %397, label %398, label %403

398:                                              ; preds = %393
  %399 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %400 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %399, i32 0, i32 4
  %401 = load %struct.pinctrl_state*, %struct.pinctrl_state** %400, align 8
  %402 = call i32 @regulator_disable(%struct.pinctrl_state* %401)
  br label %403

403:                                              ; preds = %398, %393
  %404 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %5, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @CI_HDRC_PMQOS, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %403
  %410 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %411 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %410, i32 0, i32 3
  %412 = call i32 @pm_qos_remove_request(i32* %411)
  br label %413

413:                                              ; preds = %409, %403
  %414 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %4, align 8
  %415 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %414, i32 0, i32 2
  store %struct.pinctrl_state* null, %struct.pinctrl_state** %415, align 8
  %416 = load i32, i32* %6, align 4
  store i32 %416, i32* %2, align 4
  br label %417

417:                                              ; preds = %413, %382, %227, %202, %182, %159, %141, %126, %106, %71, %46, %33
  %418 = load i32, i32* %2, align 4
  ret i32 %418
}

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.ci_hdrc_imx_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ci_hdrc_imx_data*) #1

declare dso_local %struct.pinctrl_state* @usbmisc_get_init_data(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_state*) #1

declare dso_local i64 @of_usb_get_phy_mode(%struct.device_node*) #1

declare dso_local %struct.pinctrl_state* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @pinctrl_lookup_state(%struct.pinctrl_state*, i8*) #1

declare dso_local i32 @pinctrl_select_state(%struct.pinctrl_state*, %struct.pinctrl_state*) #1

declare dso_local %struct.pinctrl_state* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(%struct.pinctrl_state*) #1

declare dso_local i32 @pm_qos_add_request(i32*, i32, i32) #1

declare dso_local i32 @imx_get_clks(%struct.device*) #1

declare dso_local i32 @imx_prepare_enable_clks(%struct.device*) #1

declare dso_local %struct.pinctrl_state* @devm_usb_get_phy_by_phandle(%struct.device*, i8*, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @usb_phy_init(%struct.pinctrl_state*) #1

declare dso_local i32 @imx_usbmisc_init(%struct.pinctrl_state*) #1

declare dso_local %struct.pinctrl_state* @ci_hdrc_add_device(%struct.device*, i32, i32, %struct.ci_hdrc_platform_data*) #1

declare dso_local i32 @imx_usbmisc_init_post(%struct.pinctrl_state*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

declare dso_local i32 @ci_hdrc_remove_device(%struct.pinctrl_state*) #1

declare dso_local i32 @imx_disable_unprepare_clks(%struct.device*) #1

declare dso_local i32 @regulator_disable(%struct.pinctrl_state*) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
