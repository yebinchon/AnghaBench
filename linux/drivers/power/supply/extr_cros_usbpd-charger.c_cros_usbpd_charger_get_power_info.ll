; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_get_power_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_get_power_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_data = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.charger_data* }
%struct.TYPE_3__ = type { i32 }
%struct.charger_data = type { %struct.device* }
%struct.device = type { i32 }
%struct.ec_response_usb_pd_power_info = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ec_params_usb_pd_power_info = type { i32 }

@EC_CMD_USB_PD_POWER_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to query PD power info (err:0x%x)\0A\00", align 1
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown role %d\0A\00", align 1
@POWER_SUPPLY_USB_TYPE_SDP = common dso_local global i8* null, align 8
@POWER_SUPPLY_USB_TYPE_PD_DRP = common dso_local global i8* null, align 8
@POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_C = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_DCP = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_CDP = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_PD = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Port %d: default case!\0A\00", align 1
@POWER_SUPPLY_TYPE_MAINS = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_USB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Port %d: type=%d vmax=%d vnow=%d cmax=%d clim=%d pmax=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_data*)* @cros_usbpd_charger_get_power_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_usbpd_charger_get_power_info(%struct.port_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port_data*, align 8
  %4 = alloca %struct.charger_data*, align 8
  %5 = alloca %struct.ec_response_usb_pd_power_info, align 4
  %6 = alloca %struct.ec_params_usb_pd_power_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.port_data* %0, %struct.port_data** %3, align 8
  %11 = load %struct.port_data*, %struct.port_data** %3, align 8
  %12 = getelementptr inbounds %struct.port_data, %struct.port_data* %11, i32 0, i32 10
  %13 = load %struct.charger_data*, %struct.charger_data** %12, align 8
  store %struct.charger_data* %13, %struct.charger_data** %4, align 8
  %14 = load %struct.charger_data*, %struct.charger_data** %4, align 8
  %15 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.port_data*, %struct.port_data** %3, align 8
  %18 = getelementptr inbounds %struct.port_data, %struct.port_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.ec_params_usb_pd_power_info, %struct.ec_params_usb_pd_power_info* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.charger_data*, %struct.charger_data** %4, align 8
  %22 = load i32, i32* @EC_CMD_USB_PD_POWER_INFO, align 4
  %23 = call i32 @cros_usbpd_charger_ec_command(%struct.charger_data* %21, i32 0, i32 %22, %struct.ec_params_usb_pd_power_info* %6, i32 4, %struct.ec_response_usb_pd_power_info* %5, i32 32)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %2, align 4
  br label %219

31:                                               ; preds = %1
  %32 = load %struct.port_data*, %struct.port_data** %3, align 8
  %33 = getelementptr inbounds %struct.port_data, %struct.port_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.port_data*, %struct.port_data** %3, align 8
  %36 = getelementptr inbounds %struct.port_data, %struct.port_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %67 [
    i32 131, label %40
    i32 128, label %47
    i32 130, label %54
    i32 129, label %60
  ]

40:                                               ; preds = %31
  %41 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.port_data*, %struct.port_data** %3, align 8
  %44 = getelementptr inbounds %struct.port_data, %struct.port_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.port_data*, %struct.port_data** %3, align 8
  %46 = getelementptr inbounds %struct.port_data, %struct.port_data* %45, i32 0, i32 3
  store i32 0, i32* %46, align 4
  br label %72

47:                                               ; preds = %31
  %48 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.port_data*, %struct.port_data** %3, align 8
  %51 = getelementptr inbounds %struct.port_data, %struct.port_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.port_data*, %struct.port_data** %3, align 8
  %53 = getelementptr inbounds %struct.port_data, %struct.port_data* %52, i32 0, i32 3
  store i32 0, i32* %53, align 4
  br label %72

54:                                               ; preds = %31
  %55 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %56 = load %struct.port_data*, %struct.port_data** %3, align 8
  %57 = getelementptr inbounds %struct.port_data, %struct.port_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.port_data*, %struct.port_data** %3, align 8
  %59 = getelementptr inbounds %struct.port_data, %struct.port_data* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  br label %72

60:                                               ; preds = %31
  %61 = load i8*, i8** @POWER_SUPPLY_STATUS_NOT_CHARGING, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.port_data*, %struct.port_data** %3, align 8
  %64 = getelementptr inbounds %struct.port_data, %struct.port_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.port_data*, %struct.port_data** %3, align 8
  %66 = getelementptr inbounds %struct.port_data, %struct.port_data* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  br label %72

67:                                               ; preds = %31
  %68 = load %struct.device*, %struct.device** %9, align 8
  %69 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %67, %60, %54, %47, %40
  %73 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.port_data*, %struct.port_data** %3, align 8
  %77 = getelementptr inbounds %struct.port_data, %struct.port_data* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.port_data*, %struct.port_data** %3, align 8
  %82 = getelementptr inbounds %struct.port_data, %struct.port_data* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.port_data*, %struct.port_data** %3, align 8
  %87 = getelementptr inbounds %struct.port_data, %struct.port_data* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.port_data*, %struct.port_data** %3, align 8
  %91 = getelementptr inbounds %struct.port_data, %struct.port_data* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  %92 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %156 [
    i32 139, label %94
    i32 132, label %94
    i32 137, label %99
    i32 136, label %118
    i32 134, label %118
    i32 138, label %122
    i32 140, label %126
    i32 141, label %130
    i32 135, label %134
    i32 133, label %148
  ]

94:                                               ; preds = %72, %72
  %95 = load i8*, i8** @POWER_SUPPLY_USB_TYPE_SDP, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.port_data*, %struct.port_data** %3, align 8
  %98 = getelementptr inbounds %struct.port_data, %struct.port_data* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %166

99:                                               ; preds = %72
  %100 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 128
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i8*, i8** @POWER_SUPPLY_USB_TYPE_PD_DRP, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.port_data*, %struct.port_data** %3, align 8
  %111 = getelementptr inbounds %struct.port_data, %struct.port_data* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  br label %117

112:                                              ; preds = %103, %99
  %113 = load i8*, i8** @POWER_SUPPLY_USB_TYPE_SDP, align 8
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.port_data*, %struct.port_data** %3, align 8
  %116 = getelementptr inbounds %struct.port_data, %struct.port_data* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %107
  br label %166

118:                                              ; preds = %72, %72
  %119 = load i32, i32* @POWER_SUPPLY_USB_TYPE_APPLE_BRICK_ID, align 4
  %120 = load %struct.port_data*, %struct.port_data** %3, align 8
  %121 = getelementptr inbounds %struct.port_data, %struct.port_data* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  br label %166

122:                                              ; preds = %72
  %123 = load i32, i32* @POWER_SUPPLY_USB_TYPE_C, align 4
  %124 = load %struct.port_data*, %struct.port_data** %3, align 8
  %125 = getelementptr inbounds %struct.port_data, %struct.port_data* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %166

126:                                              ; preds = %72
  %127 = load i32, i32* @POWER_SUPPLY_USB_TYPE_DCP, align 4
  %128 = load %struct.port_data*, %struct.port_data** %3, align 8
  %129 = getelementptr inbounds %struct.port_data, %struct.port_data* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  br label %166

130:                                              ; preds = %72
  %131 = load i32, i32* @POWER_SUPPLY_USB_TYPE_CDP, align 4
  %132 = load %struct.port_data*, %struct.port_data** %3, align 8
  %133 = getelementptr inbounds %struct.port_data, %struct.port_data* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %166

134:                                              ; preds = %72
  %135 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i8*, i8** @POWER_SUPPLY_USB_TYPE_PD_DRP, align 8
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.port_data*, %struct.port_data** %3, align 8
  %142 = getelementptr inbounds %struct.port_data, %struct.port_data* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  br label %147

143:                                              ; preds = %134
  %144 = load i32, i32* @POWER_SUPPLY_USB_TYPE_PD, align 4
  %145 = load %struct.port_data*, %struct.port_data** %3, align 8
  %146 = getelementptr inbounds %struct.port_data, %struct.port_data* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %138
  br label %166

148:                                              ; preds = %72
  %149 = load i32, i32* @POWER_SUPPLY_USB_TYPE_UNKNOWN, align 4
  %150 = load %struct.port_data*, %struct.port_data** %3, align 8
  %151 = getelementptr inbounds %struct.port_data, %struct.port_data* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.port_data*, %struct.port_data** %3, align 8
  %153 = getelementptr inbounds %struct.port_data, %struct.port_data* %152, i32 0, i32 7
  store i32 0, i32* %153, align 4
  %154 = load %struct.port_data*, %struct.port_data** %3, align 8
  %155 = getelementptr inbounds %struct.port_data, %struct.port_data* %154, i32 0, i32 6
  store i32 0, i32* %155, align 8
  br label %166

156:                                              ; preds = %72
  %157 = load %struct.device*, %struct.device** %9, align 8
  %158 = load %struct.port_data*, %struct.port_data** %3, align 8
  %159 = getelementptr inbounds %struct.port_data, %struct.port_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dev_err(%struct.device* %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %160)
  %162 = load i8*, i8** @POWER_SUPPLY_USB_TYPE_SDP, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.port_data*, %struct.port_data** %3, align 8
  %165 = getelementptr inbounds %struct.port_data, %struct.port_data* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %156, %148, %147, %130, %126, %122, %118, %117, %94
  %167 = load %struct.port_data*, %struct.port_data** %3, align 8
  %168 = call i64 @cros_usbpd_charger_port_is_dedicated(%struct.port_data* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i32, i32* @POWER_SUPPLY_TYPE_MAINS, align 4
  %172 = load %struct.port_data*, %struct.port_data** %3, align 8
  %173 = getelementptr inbounds %struct.port_data, %struct.port_data* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  br label %180

175:                                              ; preds = %166
  %176 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  %177 = load %struct.port_data*, %struct.port_data** %3, align 8
  %178 = getelementptr inbounds %struct.port_data, %struct.port_data* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.device*, %struct.device** %9, align 8
  %182 = load %struct.port_data*, %struct.port_data** %3, align 8
  %183 = getelementptr inbounds %struct.port_data, %struct.port_data* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.ec_response_usb_pd_power_info, %struct.ec_response_usb_pd_power_info* %5, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @dev_dbg(%struct.device* %181, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %184, i32 %186, i32 %189, i32 %192, i32 %195, i32 %198, i32 %200)
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.port_data*, %struct.port_data** %3, align 8
  %204 = getelementptr inbounds %struct.port_data, %struct.port_data* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %202, %205
  br i1 %206, label %213, label %207

207:                                              ; preds = %180
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.port_data*, %struct.port_data** %3, align 8
  %210 = getelementptr inbounds %struct.port_data, %struct.port_data* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %208, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %207, %180
  %214 = load %struct.port_data*, %struct.port_data** %3, align 8
  %215 = getelementptr inbounds %struct.port_data, %struct.port_data* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @power_supply_changed(i32 %216)
  br label %218

218:                                              ; preds = %213, %207
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %218, %26
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @cros_usbpd_charger_ec_command(%struct.charger_data*, i32, i32, %struct.ec_params_usb_pd_power_info*, i32, %struct.ec_response_usb_pd_power_info*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @cros_usbpd_charger_port_is_dedicated(%struct.port_data*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
