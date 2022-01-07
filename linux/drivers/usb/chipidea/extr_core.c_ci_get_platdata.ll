; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_get_platdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_get_platdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32, i32 }
%struct.ci_hdrc_platform_data = type { i64, i32, i32, i32, i32, i32, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, %struct.TYPE_5__, i64, %struct.pinctrl_state*, i64 }
%struct.ci_hdrc_cable = type { i32, %struct.pinctrl_state*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.pinctrl_state = type { i32 }
%struct.extcon_dev = type opaque

@USB_DR_MODE_UNKNOWN = common dso_local global i64 0, align 8
@USB_DR_MODE_OTG = common dso_local global i64 0, align 8
@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Getting regulator error: %ld\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@CI_HDRC_FORCE_FULLSPEED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"phy-clkgate-delay-us\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"itc-setting\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ahb-burst-config\00", align 1
@CI_HDRC_OVERRIDE_AHB_BURST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to get ahb-burst-config\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"tx-burst-size-dword\00", align 1
@CI_HDRC_OVERRIDE_TX_BURST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to get tx-burst-size-dword\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"rx-burst-size-dword\00", align 1
@CI_HDRC_OVERRIDE_RX_BURST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"failed to get rx-burst-size-dword\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"non-zero-ttctrl-ttha\00", align 1
@CI_HDRC_SET_NON_ZERO_TTHA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@ci_cable_notifier = common dso_local global i8* null, align 8
@EXTCON_USB = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@ci_role_switch = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ci_hdrc_platform_data*)* @ci_get_platdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_get_platdata(%struct.device* %0, %struct.ci_hdrc_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ci_hdrc_platform_data*, align 8
  %6 = alloca %struct.extcon_dev*, align 8
  %7 = alloca %struct.extcon_dev*, align 8
  %8 = alloca %struct.ci_hdrc_cable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pinctrl_state*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ci_hdrc_platform_data* %1, %struct.ci_hdrc_platform_data** %5, align 8
  %11 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %12 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %11, i32 0, i32 16
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @of_usb_get_phy_mode(i32 %18)
  %20 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %21 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %20, i32 0, i32 16
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %24 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i64 @usb_get_dr_mode(%struct.device* %28)
  %30 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %31 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %34 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @USB_DR_MODE_UNKNOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* @USB_DR_MODE_OTG, align 8
  %40 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %41 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %44 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %42
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call %struct.pinctrl_state* @devm_regulator_get(%struct.device* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %52 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %51, i32 0, i32 15
  store %struct.pinctrl_state* %50, %struct.pinctrl_state** %52, align 8
  %53 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %54 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %53, i32 0, i32 15
  %55 = load %struct.pinctrl_state*, %struct.pinctrl_state** %54, align 8
  %56 = call i32 @PTR_ERR(%struct.pinctrl_state* %55)
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @EPROBE_DEFER, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %414

63:                                               ; preds = %48
  %64 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %65 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %64, i32 0, i32 15
  %66 = load %struct.pinctrl_state*, %struct.pinctrl_state** %65, align 8
  %67 = call i32 @PTR_ERR(%struct.pinctrl_state* %66)
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %73 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %72, i32 0, i32 15
  store %struct.pinctrl_state* null, %struct.pinctrl_state** %73, align 8
  br label %92

74:                                               ; preds = %63
  %75 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %76 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %75, i32 0, i32 15
  %77 = load %struct.pinctrl_state*, %struct.pinctrl_state** %76, align 8
  %78 = call i64 @IS_ERR(%struct.pinctrl_state* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %83 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %82, i32 0, i32 15
  %84 = load %struct.pinctrl_state*, %struct.pinctrl_state** %83, align 8
  %85 = call i32 @PTR_ERR(%struct.pinctrl_state* %84)
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %88 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %87, i32 0, i32 15
  %89 = load %struct.pinctrl_state*, %struct.pinctrl_state** %88, align 8
  %90 = call i32 @PTR_ERR(%struct.pinctrl_state* %89)
  store i32 %90, i32* %3, align 4
  br label %414

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %91, %71
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %95 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %94, i32 0, i32 14
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = getelementptr inbounds %struct.device, %struct.device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @of_usb_host_tpl_support(i32 %101)
  %103 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %104 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %103, i32 0, i32 14
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %98, %93
  br label %106

106:                                              ; preds = %105, %42
  %107 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %108 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @USB_DR_MODE_OTG, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %114 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %113, i32 0, i32 13
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 512, i32* %115, align 4
  %116 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %117 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %116, i32 0, i32 13
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %120 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %119, i32 0, i32 13
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i32 1, i32* %121, align 4
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = getelementptr inbounds %struct.device, %struct.device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %126 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %125, i32 0, i32 13
  %127 = call i32 @of_usb_update_otg_caps(i32 %124, %struct.TYPE_5__* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %112
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %414

132:                                              ; preds = %112
  br label %133

133:                                              ; preds = %132, %106
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = call i64 @usb_get_maximum_speed(%struct.device* %134)
  %136 = load i64, i64* @USB_SPEED_FULL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32, i32* @CI_HDRC_FORCE_FULLSPEED, align 4
  %140 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %141 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %140, i32 0, i32 12
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %133
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = getelementptr inbounds %struct.device, %struct.device* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %149 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %148, i32 0, i32 1
  %150 = call i32 @of_property_read_u32(i32 %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %149)
  %151 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %152 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %151, i32 0, i32 2
  store i32 1, i32* %152, align 4
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = getelementptr inbounds %struct.device, %struct.device* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %157 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %156, i32 0, i32 2
  %158 = call i32 @of_property_read_u32(i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %157)
  %159 = load %struct.device*, %struct.device** %4, align 8
  %160 = getelementptr inbounds %struct.device, %struct.device* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %163 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %162, i32 0, i32 3
  %164 = call i32 @of_property_read_u32(i32 %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %144
  %168 = load i32, i32* @CI_HDRC_OVERRIDE_AHB_BURST, align 4
  %169 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %170 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %169, i32 0, i32 12
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %183

173:                                              ; preds = %144
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp ne i32 %174, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.device*, %struct.device** %4, align 8
  %180 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %181 = load i32, i32* %9, align 4
  store i32 %181, i32* %3, align 4
  br label %414

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %167
  %184 = load %struct.device*, %struct.device** %4, align 8
  %185 = getelementptr inbounds %struct.device, %struct.device* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %188 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %187, i32 0, i32 4
  %189 = call i32 @of_property_read_u32(i32 %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %188)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %183
  %193 = load i32, i32* @CI_HDRC_OVERRIDE_TX_BURST, align 4
  %194 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %195 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %194, i32 0, i32 12
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %208

198:                                              ; preds = %183
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  %202 = icmp ne i32 %199, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.device*, %struct.device** %4, align 8
  %205 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %204, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %3, align 4
  br label %414

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %207, %192
  %209 = load %struct.device*, %struct.device** %4, align 8
  %210 = getelementptr inbounds %struct.device, %struct.device* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %213 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %212, i32 0, i32 5
  %214 = call i32 @of_property_read_u32(i32 %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32* %213)
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %208
  %218 = load i32, i32* @CI_HDRC_OVERRIDE_RX_BURST, align 4
  %219 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %220 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %219, i32 0, i32 12
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %233

223:                                              ; preds = %208
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  %227 = icmp ne i32 %224, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %223
  %229 = load %struct.device*, %struct.device** %4, align 8
  %230 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %229, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %231 = load i32, i32* %9, align 4
  store i32 %231, i32* %3, align 4
  br label %414

232:                                              ; preds = %223
  br label %233

233:                                              ; preds = %232, %217
  %234 = load %struct.device*, %struct.device** %4, align 8
  %235 = getelementptr inbounds %struct.device, %struct.device* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @of_find_property(i32 %236, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32* null)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %233
  %240 = load i32, i32* @CI_HDRC_SET_NON_ZERO_TTHA, align 4
  %241 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %242 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %241, i32 0, i32 12
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %239, %233
  %246 = load i32, i32* @ENODEV, align 4
  %247 = sub nsw i32 0, %246
  %248 = call %struct.pinctrl_state* @ERR_PTR(i32 %247)
  %249 = bitcast %struct.pinctrl_state* %248 to %struct.extcon_dev*
  store %struct.extcon_dev* %249, %struct.extcon_dev** %7, align 8
  %250 = load i32, i32* @ENODEV, align 4
  %251 = sub nsw i32 0, %250
  %252 = call %struct.pinctrl_state* @ERR_PTR(i32 %251)
  %253 = bitcast %struct.pinctrl_state* %252 to %struct.extcon_dev*
  store %struct.extcon_dev* %253, %struct.extcon_dev** %6, align 8
  %254 = load %struct.device*, %struct.device** %4, align 8
  %255 = getelementptr inbounds %struct.device, %struct.device* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @of_property_read_bool(i32 %256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %298

259:                                              ; preds = %245
  %260 = load %struct.device*, %struct.device** %4, align 8
  %261 = call %struct.pinctrl_state* @extcon_get_edev_by_phandle(%struct.device* %260, i32 0)
  %262 = bitcast %struct.pinctrl_state* %261 to %struct.extcon_dev*
  store %struct.extcon_dev* %262, %struct.extcon_dev** %6, align 8
  %263 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %264 = bitcast %struct.extcon_dev* %263 to %struct.pinctrl_state*
  %265 = call i64 @IS_ERR(%struct.pinctrl_state* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %278

267:                                              ; preds = %259
  %268 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %269 = bitcast %struct.extcon_dev* %268 to %struct.pinctrl_state*
  %270 = call i32 @PTR_ERR(%struct.pinctrl_state* %269)
  %271 = load i32, i32* @ENODEV, align 4
  %272 = sub nsw i32 0, %271
  %273 = icmp ne i32 %270, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %267
  %275 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %276 = bitcast %struct.extcon_dev* %275 to %struct.pinctrl_state*
  %277 = call i32 @PTR_ERR(%struct.pinctrl_state* %276)
  store i32 %277, i32* %3, align 4
  br label %414

278:                                              ; preds = %267, %259
  %279 = load %struct.device*, %struct.device** %4, align 8
  %280 = call %struct.pinctrl_state* @extcon_get_edev_by_phandle(%struct.device* %279, i32 1)
  %281 = bitcast %struct.pinctrl_state* %280 to %struct.extcon_dev*
  store %struct.extcon_dev* %281, %struct.extcon_dev** %7, align 8
  %282 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %283 = bitcast %struct.extcon_dev* %282 to %struct.pinctrl_state*
  %284 = call i64 @IS_ERR(%struct.pinctrl_state* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %297

286:                                              ; preds = %278
  %287 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %288 = bitcast %struct.extcon_dev* %287 to %struct.pinctrl_state*
  %289 = call i32 @PTR_ERR(%struct.pinctrl_state* %288)
  %290 = load i32, i32* @ENODEV, align 4
  %291 = sub nsw i32 0, %290
  %292 = icmp ne i32 %289, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %286
  %294 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %295 = bitcast %struct.extcon_dev* %294 to %struct.pinctrl_state*
  %296 = call i32 @PTR_ERR(%struct.pinctrl_state* %295)
  store i32 %296, i32* %3, align 4
  br label %414

297:                                              ; preds = %286, %278
  br label %298

298:                                              ; preds = %297, %245
  %299 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %300 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %299, i32 0, i32 11
  store %struct.ci_hdrc_cable* %300, %struct.ci_hdrc_cable** %8, align 8
  %301 = load i8*, i8** @ci_cable_notifier, align 8
  %302 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %8, align 8
  %303 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  store i8* %301, i8** %304, align 8
  %305 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %306 = bitcast %struct.extcon_dev* %305 to %struct.pinctrl_state*
  %307 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %8, align 8
  %308 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %307, i32 0, i32 1
  store %struct.pinctrl_state* %306, %struct.pinctrl_state** %308, align 8
  %309 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %310 = bitcast %struct.extcon_dev* %309 to %struct.pinctrl_state*
  %311 = call i64 @IS_ERR(%struct.pinctrl_state* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %328, label %313

313:                                              ; preds = %298
  %314 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %8, align 8
  %315 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %314, i32 0, i32 1
  %316 = load %struct.pinctrl_state*, %struct.pinctrl_state** %315, align 8
  %317 = load i32, i32* @EXTCON_USB, align 4
  %318 = call i32 @extcon_get_state(%struct.pinctrl_state* %316, i32 %317)
  store i32 %318, i32* %9, align 4
  %319 = load i32, i32* %9, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %313
  %322 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %8, align 8
  %323 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %322, i32 0, i32 0
  store i32 1, i32* %323, align 8
  br label %327

324:                                              ; preds = %313
  %325 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %8, align 8
  %326 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %325, i32 0, i32 0
  store i32 0, i32* %326, align 8
  br label %327

327:                                              ; preds = %324, %321
  br label %328

328:                                              ; preds = %327, %298
  %329 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %330 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %329, i32 0, i32 10
  store %struct.ci_hdrc_cable* %330, %struct.ci_hdrc_cable** %8, align 8
  %331 = load i8*, i8** @ci_cable_notifier, align 8
  %332 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %8, align 8
  %333 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  store i8* %331, i8** %334, align 8
  %335 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %336 = bitcast %struct.extcon_dev* %335 to %struct.pinctrl_state*
  %337 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %8, align 8
  %338 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %337, i32 0, i32 1
  store %struct.pinctrl_state* %336, %struct.pinctrl_state** %338, align 8
  %339 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %340 = bitcast %struct.extcon_dev* %339 to %struct.pinctrl_state*
  %341 = call i64 @IS_ERR(%struct.pinctrl_state* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %358, label %343

343:                                              ; preds = %328
  %344 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %8, align 8
  %345 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %344, i32 0, i32 1
  %346 = load %struct.pinctrl_state*, %struct.pinctrl_state** %345, align 8
  %347 = load i32, i32* @EXTCON_USB_HOST, align 4
  %348 = call i32 @extcon_get_state(%struct.pinctrl_state* %346, i32 %347)
  store i32 %348, i32* %9, align 4
  %349 = load i32, i32* %9, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %343
  %352 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %8, align 8
  %353 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %352, i32 0, i32 0
  store i32 1, i32* %353, align 8
  br label %357

354:                                              ; preds = %343
  %355 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %8, align 8
  %356 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %355, i32 0, i32 0
  store i32 0, i32* %356, align 8
  br label %357

357:                                              ; preds = %354, %351
  br label %358

358:                                              ; preds = %357, %328
  %359 = load %struct.device*, %struct.device** %4, align 8
  %360 = call i64 @device_property_read_bool(%struct.device* %359, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %358
  %363 = load %struct.device*, %struct.device** %4, align 8
  %364 = getelementptr inbounds %struct.device, %struct.device* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ci_role_switch, i32 0, i32 0), align 4
  br label %366

366:                                              ; preds = %362, %358
  %367 = load %struct.device*, %struct.device** %4, align 8
  %368 = call %struct.pinctrl_state* @devm_pinctrl_get(%struct.device* %367)
  %369 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %370 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %369, i32 0, i32 7
  store %struct.pinctrl_state* %368, %struct.pinctrl_state** %370, align 8
  %371 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %372 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %371, i32 0, i32 7
  %373 = load %struct.pinctrl_state*, %struct.pinctrl_state** %372, align 8
  %374 = call i64 @IS_ERR(%struct.pinctrl_state* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %413, label %376

376:                                              ; preds = %366
  %377 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %378 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %377, i32 0, i32 7
  %379 = load %struct.pinctrl_state*, %struct.pinctrl_state** %378, align 8
  %380 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state* %379, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store %struct.pinctrl_state* %380, %struct.pinctrl_state** %10, align 8
  %381 = load %struct.pinctrl_state*, %struct.pinctrl_state** %10, align 8
  %382 = call i64 @IS_ERR(%struct.pinctrl_state* %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %388, label %384

384:                                              ; preds = %376
  %385 = load %struct.pinctrl_state*, %struct.pinctrl_state** %10, align 8
  %386 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %387 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %386, i32 0, i32 9
  store %struct.pinctrl_state* %385, %struct.pinctrl_state** %387, align 8
  br label %388

388:                                              ; preds = %384, %376
  %389 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %390 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %389, i32 0, i32 7
  %391 = load %struct.pinctrl_state*, %struct.pinctrl_state** %390, align 8
  %392 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state* %391, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store %struct.pinctrl_state* %392, %struct.pinctrl_state** %10, align 8
  %393 = load %struct.pinctrl_state*, %struct.pinctrl_state** %10, align 8
  %394 = call i64 @IS_ERR(%struct.pinctrl_state* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %400, label %396

396:                                              ; preds = %388
  %397 = load %struct.pinctrl_state*, %struct.pinctrl_state** %10, align 8
  %398 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %399 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %398, i32 0, i32 8
  store %struct.pinctrl_state* %397, %struct.pinctrl_state** %399, align 8
  br label %400

400:                                              ; preds = %396, %388
  %401 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %402 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %401, i32 0, i32 7
  %403 = load %struct.pinctrl_state*, %struct.pinctrl_state** %402, align 8
  %404 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state* %403, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store %struct.pinctrl_state* %404, %struct.pinctrl_state** %10, align 8
  %405 = load %struct.pinctrl_state*, %struct.pinctrl_state** %10, align 8
  %406 = call i64 @IS_ERR(%struct.pinctrl_state* %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %412, label %408

408:                                              ; preds = %400
  %409 = load %struct.pinctrl_state*, %struct.pinctrl_state** %10, align 8
  %410 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %5, align 8
  %411 = getelementptr inbounds %struct.ci_hdrc_platform_data, %struct.ci_hdrc_platform_data* %410, i32 0, i32 6
  store %struct.pinctrl_state* %409, %struct.pinctrl_state** %411, align 8
  br label %412

412:                                              ; preds = %408, %400
  br label %413

413:                                              ; preds = %412, %366
  store i32 0, i32* %3, align 4
  br label %414

414:                                              ; preds = %413, %293, %274, %228, %203, %178, %130, %80, %60
  %415 = load i32, i32* %3, align 4
  ret i32 %415
}

declare dso_local i64 @of_usb_get_phy_mode(i32) #1

declare dso_local i64 @usb_get_dr_mode(%struct.device*) #1

declare dso_local %struct.pinctrl_state* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_state*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_usb_host_tpl_support(i32) #1

declare dso_local i32 @of_usb_update_otg_caps(i32, %struct.TYPE_5__*) #1

declare dso_local i64 @usb_get_maximum_speed(%struct.device*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @of_find_property(i32, i8*, i32*) #1

declare dso_local %struct.pinctrl_state* @ERR_PTR(i32) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.pinctrl_state* @extcon_get_edev_by_phandle(%struct.device*, i32) #1

declare dso_local i32 @extcon_get_state(%struct.pinctrl_state*, i32) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local %struct.pinctrl_state* @devm_pinctrl_get(%struct.device*) #1

declare dso_local %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
