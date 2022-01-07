; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.platform_driver = type { i32 }
%struct.asus_wmi_driver = type { i32, i32, %struct.TYPE_4__*, i32 (%struct.asus_wmi_driver*)*, %struct.platform_device* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.asus_wmi = type { i32, %struct.platform_device*, %struct.asus_wmi_driver* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_WLAN = common dso_local global i32 0, align 4
@ASUS_WMI_DSTS_PRESENCE_BIT = common dso_local global i32 0, align 4
@ASUS_WMI_DSTS_USER_BIT = common dso_local global i32 0, align 4
@DMI_CHASSIS_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"3\00", align 1
@acpi_backlight_vendor = common dso_local global i64 0, align 8
@acpi_backlight_native = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_BACKLIGHT = common dso_local global i32 0, align 4
@asus_wmi_notify = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to register notify handler - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asus_wmi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_add(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platform_driver*, align 8
  %5 = alloca %struct.asus_wmi_driver*, align 8
  %6 = alloca %struct.asus_wmi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.platform_driver* @to_platform_driver(i32 %14)
  store %struct.platform_driver* %15, %struct.platform_driver** %4, align 8
  %16 = load %struct.platform_driver*, %struct.platform_driver** %4, align 8
  %17 = call %struct.asus_wmi_driver* @to_asus_wmi_driver(%struct.platform_driver* %16)
  store %struct.asus_wmi_driver* %17, %struct.asus_wmi_driver** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.asus_wmi* @kzalloc(i32 24, i32 %18)
  store %struct.asus_wmi* %19, %struct.asus_wmi** %6, align 8
  %20 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %21 = icmp ne %struct.asus_wmi* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %267

25:                                               ; preds = %1
  %26 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %5, align 8
  %27 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %28 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %27, i32 0, i32 2
  store %struct.asus_wmi_driver* %26, %struct.asus_wmi_driver** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %31 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %30, i32 0, i32 1
  store %struct.platform_device* %29, %struct.platform_device** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %5, align 8
  %34 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %33, i32 0, i32 4
  store %struct.platform_device* %32, %struct.platform_device** %34, align 8
  %35 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %36 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %35, i32 0, i32 1
  %37 = load %struct.platform_device*, %struct.platform_device** %36, align 8
  %38 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.asus_wmi* %38)
  %40 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %5, align 8
  %41 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %40, i32 0, i32 3
  %42 = load i32 (%struct.asus_wmi_driver*)*, i32 (%struct.asus_wmi_driver*)** %41, align 8
  %43 = icmp ne i32 (%struct.asus_wmi_driver*)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %25
  %45 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %5, align 8
  %46 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %45, i32 0, i32 3
  %47 = load i32 (%struct.asus_wmi_driver*)*, i32 (%struct.asus_wmi_driver*)** %46, align 8
  %48 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %49 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %48, i32 0, i32 2
  %50 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %49, align 8
  %51 = call i32 %47(%struct.asus_wmi_driver* %50)
  br label %52

52:                                               ; preds = %44, %25
  %53 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %54 = call i32 @asus_wmi_platform_init(%struct.asus_wmi* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %263

58:                                               ; preds = %52
  %59 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %60 = call i32 @fan_boost_mode_check_present(%struct.asus_wmi* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %262

64:                                               ; preds = %58
  %65 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %66 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %65, i32 0, i32 1
  %67 = load %struct.platform_device*, %struct.platform_device** %66, align 8
  %68 = call i32 @asus_wmi_sysfs_init(%struct.platform_device* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %261

72:                                               ; preds = %64
  %73 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %74 = call i32 @asus_wmi_input_init(%struct.asus_wmi* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %256

78:                                               ; preds = %72
  %79 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %80 = call i32 @asus_wmi_fan_init(%struct.asus_wmi* %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %82 = call i32 @asus_wmi_hwmon_init(%struct.asus_wmi* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %253

86:                                               ; preds = %78
  %87 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %88 = call i32 @asus_wmi_led_init(%struct.asus_wmi* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %252

92:                                               ; preds = %86
  %93 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %94 = load i32, i32* @ASUS_WMI_DEVID_WLAN, align 4
  %95 = call i32 @asus_wmi_get_devstate(%struct.asus_wmi* %93, i32 %94, i32* %10)
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @ASUS_WMI_DSTS_PRESENCE_BIT, align 4
  %98 = load i32, i32* @ASUS_WMI_DSTS_USER_BIT, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %104 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %103, i32 0, i32 2
  %105 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %104, align 8
  %106 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %102, %92
  %108 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %109 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %108, i32 0, i32 2
  %110 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %109, align 8
  %111 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = call i64 (...) @ashs_present()
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114, %107
  %118 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %119 = call i32 @asus_wmi_rfkill_init(%struct.asus_wmi* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %249

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %114
  %125 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %126 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %125, i32 0, i32 2
  %127 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %126, align 8
  %128 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = call i32 (...) @asus_wmi_set_als()
  br label %135

135:                                              ; preds = %133, %124
  %136 = load i32, i32* @DMI_CHASSIS_TYPE, align 4
  %137 = call i8* @dmi_get_system_info(i32 %136)
  store i8* %137, i8** %7, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load i64, i64* @acpi_backlight_vendor, align 8
  %146 = call i32 @acpi_video_set_dmi_backlight_type(i64 %145)
  br label %147

147:                                              ; preds = %144, %140, %135
  %148 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %149 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %148, i32 0, i32 2
  %150 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %149, align 8
  %151 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %150, i32 0, i32 2
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load i64, i64* @acpi_backlight_vendor, align 8
  %158 = call i32 @acpi_video_set_dmi_backlight_type(i64 %157)
  br label %159

159:                                              ; preds = %156, %147
  %160 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %161 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %160, i32 0, i32 2
  %162 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %161, align 8
  %163 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %162, i32 0, i32 2
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load i64, i64* @acpi_backlight_native, align 8
  %170 = call i32 @acpi_video_set_dmi_backlight_type(i64 %169)
  br label %171

171:                                              ; preds = %168, %159
  %172 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %173 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %172, i32 0, i32 2
  %174 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %173, align 8
  %175 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %174, i32 0, i32 2
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %182 = call i32 @asus_wmi_set_xusb2pr(%struct.asus_wmi* %181)
  br label %183

183:                                              ; preds = %180, %171
  %184 = call i64 (...) @acpi_video_get_backlight_type()
  %185 = load i64, i64* @acpi_backlight_vendor, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %183
  %188 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %189 = call i32 @asus_wmi_backlight_init(%struct.asus_wmi* %188)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @ENODEV, align 4
  %195 = sub nsw i32 0, %194
  %196 = icmp ne i32 %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %246

198:                                              ; preds = %192, %187
  br label %212

199:                                              ; preds = %183
  %200 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %201 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %200, i32 0, i32 2
  %202 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %201, align 8
  %203 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %202, i32 0, i32 2
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %199
  %209 = load i32, i32* @ASUS_WMI_DEVID_BACKLIGHT, align 4
  %210 = call i32 @asus_wmi_set_devstate(i32 %209, i32 2, i32* null)
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %208, %199
  br label %212

212:                                              ; preds = %211, %198
  %213 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %214 = call i64 @asus_wmi_has_fnlock_key(%struct.asus_wmi* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %218 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %217, i32 0, i32 0
  store i32 1, i32* %218, align 8
  %219 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %220 = call i32 @asus_wmi_fnlock_update(%struct.asus_wmi* %219)
  br label %221

221:                                              ; preds = %216, %212
  %222 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %223 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %222, i32 0, i32 2
  %224 = load %struct.asus_wmi_driver*, %struct.asus_wmi_driver** %223, align 8
  %225 = getelementptr inbounds %struct.asus_wmi_driver, %struct.asus_wmi_driver* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @asus_wmi_notify, align 4
  %228 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %229 = call i32 @wmi_install_notify_handler(i32 %226, i32 %227, %struct.asus_wmi* %228)
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %8, align 4
  %231 = call i64 @ACPI_FAILURE(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %221
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* @ENODEV, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %9, align 4
  br label %243

238:                                              ; preds = %221
  %239 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %240 = call i32 @asus_wmi_battery_init(%struct.asus_wmi* %239)
  %241 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %242 = call i32 @asus_wmi_debugfs_init(%struct.asus_wmi* %241)
  store i32 0, i32* %2, align 4
  br label %267

243:                                              ; preds = %233
  %244 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %245 = call i32 @asus_wmi_backlight_exit(%struct.asus_wmi* %244)
  br label %246

246:                                              ; preds = %243, %197
  %247 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %248 = call i32 @asus_wmi_rfkill_exit(%struct.asus_wmi* %247)
  br label %249

249:                                              ; preds = %246, %122
  %250 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %251 = call i32 @asus_wmi_led_exit(%struct.asus_wmi* %250)
  br label %252

252:                                              ; preds = %249, %91
  br label %253

253:                                              ; preds = %252, %85
  %254 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %255 = call i32 @asus_wmi_input_exit(%struct.asus_wmi* %254)
  br label %256

256:                                              ; preds = %253, %77
  %257 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %258 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %257, i32 0, i32 1
  %259 = load %struct.platform_device*, %struct.platform_device** %258, align 8
  %260 = call i32 @asus_wmi_sysfs_exit(%struct.platform_device* %259)
  br label %261

261:                                              ; preds = %256, %71
  br label %262

262:                                              ; preds = %261, %63
  br label %263

263:                                              ; preds = %262, %57
  %264 = load %struct.asus_wmi*, %struct.asus_wmi** %6, align 8
  %265 = call i32 @kfree(%struct.asus_wmi* %264)
  %266 = load i32, i32* %9, align 4
  store i32 %266, i32* %2, align 4
  br label %267

267:                                              ; preds = %263, %238, %22
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local %struct.platform_driver* @to_platform_driver(i32) #1

declare dso_local %struct.asus_wmi_driver* @to_asus_wmi_driver(%struct.platform_driver*) #1

declare dso_local %struct.asus_wmi* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_platform_init(%struct.asus_wmi*) #1

declare dso_local i32 @fan_boost_mode_check_present(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_sysfs_init(%struct.platform_device*) #1

declare dso_local i32 @asus_wmi_input_init(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_fan_init(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_hwmon_init(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_led_init(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_get_devstate(%struct.asus_wmi*, i32, i32*) #1

declare dso_local i64 @ashs_present(...) #1

declare dso_local i32 @asus_wmi_rfkill_init(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_set_als(...) #1

declare dso_local i8* @dmi_get_system_info(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @acpi_video_set_dmi_backlight_type(i64) #1

declare dso_local i32 @asus_wmi_set_xusb2pr(%struct.asus_wmi*) #1

declare dso_local i64 @acpi_video_get_backlight_type(...) #1

declare dso_local i32 @asus_wmi_backlight_init(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_set_devstate(i32, i32, i32*) #1

declare dso_local i64 @asus_wmi_has_fnlock_key(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_fnlock_update(%struct.asus_wmi*) #1

declare dso_local i32 @wmi_install_notify_handler(i32, i32, %struct.asus_wmi*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @asus_wmi_battery_init(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_debugfs_init(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_backlight_exit(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_rfkill_exit(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_led_exit(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_input_exit(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_sysfs_exit(%struct.platform_device*) #1

declare dso_local i32 @kfree(%struct.asus_wmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
