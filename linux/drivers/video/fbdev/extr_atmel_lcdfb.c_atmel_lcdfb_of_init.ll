; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_atmel_lcdfb_of_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_atmel_lcdfb_of_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_lcdfb_info = type { %struct.atmel_lcdfb_config*, %struct.TYPE_3__*, %struct.atmel_lcdfb_pdata, %struct.fb_info* }
%struct.atmel_lcdfb_config = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.atmel_lcdfb_pdata = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.fb_info = type { i32, %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32 }
%struct.atmel_lcdfb_power_ctrl_gpio = type { i32, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }
%struct.fb_videomode = type { i32 }
%struct.videomode = type { i32 }
%struct.TYPE_4__ = type { i64 }

@atmel_lcdfb_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to find display phandle\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"bits-per-pixel\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to get property bits-per-pixel\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"atmel,guard-time\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"failed to get property atmel,guard-time\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"atmel,lcdcon2\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to get property atmel,lcdcon2\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"atmel,dmacon\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"atmel,power-control\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [58 x i8] c"set direction output gpio atmel,power-control[%d] failed\0A\00", align 1
@atmel_lcdfb_power_control_gpio = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"invalid atmel,lcd-wiring-mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"atmel,lcdcon-backlight\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"atmel,lcdcon-backlight-inverted\00", align 1
@OF_USE_NATIVE_MODE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"failed to get videomode from DT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_lcdfb_info*)* @atmel_lcdfb_of_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_lcdfb_of_init(%struct.atmel_lcdfb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_lcdfb_info*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.atmel_lcdfb_pdata*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.atmel_lcdfb_power_ctrl_gpio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_videomode, align 4
  %13 = alloca %struct.gpio_desc*, align 8
  %14 = alloca %struct.videomode, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.atmel_lcdfb_info* %0, %struct.atmel_lcdfb_info** %3, align 8
  %17 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %18 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %17, i32 0, i32 3
  %19 = load %struct.fb_info*, %struct.fb_info** %18, align 8
  store %struct.fb_info* %19, %struct.fb_info** %4, align 8
  %20 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %20, i32 0, i32 2
  store %struct.atmel_lcdfb_pdata* %21, %struct.atmel_lcdfb_pdata** %5, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  store %struct.fb_var_screeninfo* %23, %struct.fb_var_screeninfo** %6, align 8
  %24 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %25 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %7, align 8
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load %struct.device_node*, %struct.device_node** %29, align 8
  store %struct.device_node* %30, %struct.device_node** %8, align 8
  store i32 0, i32* %11, align 4
  %31 = load i32, i32* @atmel_lcdfb_dt_ids, align 4
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call %struct.TYPE_4__* @of_match_device(i32 %31, %struct.device* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.atmel_lcdfb_config*
  %37 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %38 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %37, i32 0, i32 0
  store %struct.atmel_lcdfb_config* %36, %struct.atmel_lcdfb_config** %38, align 8
  %39 = load %struct.device_node*, %struct.device_node** %8, align 8
  %40 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %40, %struct.device_node** %9, align 8
  %41 = load %struct.device_node*, %struct.device_node** %9, align 8
  %42 = icmp ne %struct.device_node* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %1
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %186

48:                                               ; preds = %1
  %49 = load %struct.device_node*, %struct.device_node** %9, align 8
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 0
  %52 = call i32 @of_property_read_u32(%struct.device_node* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %182

58:                                               ; preds = %48
  %59 = load %struct.device_node*, %struct.device_node** %9, align 8
  %60 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %5, align 8
  %61 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %60, i32 0, i32 7
  %62 = call i32 @of_property_read_u32(%struct.device_node* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %182

68:                                               ; preds = %58
  %69 = load %struct.device_node*, %struct.device_node** %9, align 8
  %70 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %5, align 8
  %71 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %70, i32 0, i32 6
  %72 = call i32 @of_property_read_u32(%struct.device_node* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %182

78:                                               ; preds = %68
  %79 = load %struct.device_node*, %struct.device_node** %9, align 8
  %80 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %5, align 8
  %81 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %80, i32 0, i32 5
  %82 = call i32 @of_property_read_u32(%struct.device_node* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %182

88:                                               ; preds = %78
  %89 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %5, align 8
  %90 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %89, i32 0, i32 4
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %135, %88
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.device*, %struct.device** %7, align 8
  %97 = call i32 @gpiod_count(%struct.device* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %138

99:                                               ; preds = %94
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @GPIOD_ASIS, align 4
  %103 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %101, i32 %102)
  store %struct.gpio_desc* %103, %struct.gpio_desc** %13, align 8
  %104 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %105 = call i64 @IS_ERR(%struct.gpio_desc* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %135

108:                                              ; preds = %99
  %109 = load %struct.device*, %struct.device** %7, align 8
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.atmel_lcdfb_power_ctrl_gpio* @devm_kzalloc(%struct.device* %109, i32 16, i32 %110)
  store %struct.atmel_lcdfb_power_ctrl_gpio* %111, %struct.atmel_lcdfb_power_ctrl_gpio** %10, align 8
  %112 = load %struct.atmel_lcdfb_power_ctrl_gpio*, %struct.atmel_lcdfb_power_ctrl_gpio** %10, align 8
  %113 = icmp ne %struct.atmel_lcdfb_power_ctrl_gpio* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  br label %182

115:                                              ; preds = %108
  %116 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %117 = load %struct.atmel_lcdfb_power_ctrl_gpio*, %struct.atmel_lcdfb_power_ctrl_gpio** %10, align 8
  %118 = getelementptr inbounds %struct.atmel_lcdfb_power_ctrl_gpio, %struct.atmel_lcdfb_power_ctrl_gpio* %117, i32 0, i32 1
  store %struct.gpio_desc* %116, %struct.gpio_desc** %118, align 8
  store i32 1, i32* %11, align 4
  %119 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %120 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %121 = call i32 @gpiod_is_active_low(%struct.gpio_desc* %120)
  %122 = call i32 @gpiod_direction_output(%struct.gpio_desc* %119, i32 %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %115
  %126 = load %struct.device*, %struct.device** %7, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i32 %127)
  br label %182

129:                                              ; preds = %115
  %130 = load %struct.atmel_lcdfb_power_ctrl_gpio*, %struct.atmel_lcdfb_power_ctrl_gpio** %10, align 8
  %131 = getelementptr inbounds %struct.atmel_lcdfb_power_ctrl_gpio, %struct.atmel_lcdfb_power_ctrl_gpio* %130, i32 0, i32 0
  %132 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %5, align 8
  %133 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %132, i32 0, i32 4
  %134 = call i32 @list_add(i32* %131, i32* %133)
  br label %135

135:                                              ; preds = %129, %107
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  br label %94

138:                                              ; preds = %94
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* @atmel_lcdfb_power_control_gpio, align 4
  %143 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %5, align 8
  %144 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %141, %138
  %146 = load %struct.device_node*, %struct.device_node** %9, align 8
  %147 = call i32 @atmel_lcdfb_get_of_wiring_modes(%struct.device_node* %146)
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.device*, %struct.device** %7, align 8
  %152 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %182

153:                                              ; preds = %145
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %5, align 8
  %156 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.device_node*, %struct.device_node** %9, align 8
  %158 = call i8* @of_property_read_bool(%struct.device_node* %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %159 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %5, align 8
  %160 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  %161 = load %struct.device_node*, %struct.device_node** %9, align 8
  %162 = call i8* @of_property_read_bool(%struct.device_node* %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %163 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %5, align 8
  %164 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load %struct.device_node*, %struct.device_node** %9, align 8
  %166 = load i32, i32* @OF_USE_NATIVE_MODE, align 4
  %167 = call i32 @of_get_videomode(%struct.device_node* %165, %struct.videomode* %14, i32 %166)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %153
  %171 = load %struct.device*, %struct.device** %7, align 8
  %172 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  br label %182

173:                                              ; preds = %153
  %174 = call i32 @fb_videomode_from_videomode(%struct.videomode* %14, %struct.fb_videomode* %12)
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %182

178:                                              ; preds = %173
  %179 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %180 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %179, i32 0, i32 0
  %181 = call i32 @fb_add_videomode(%struct.fb_videomode* %12, i32* %180)
  br label %182

182:                                              ; preds = %178, %177, %170, %150, %125, %114, %85, %75, %65, %55
  %183 = load %struct.device_node*, %struct.device_node** %9, align 8
  %184 = call i32 @of_node_put(%struct.device_node* %183)
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %182, %43
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local %struct.TYPE_4__* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @gpiod_count(%struct.device*, i8*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.atmel_lcdfb_power_ctrl_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @gpiod_direction_output(%struct.gpio_desc*, i32) #1

declare dso_local i32 @gpiod_is_active_low(%struct.gpio_desc*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atmel_lcdfb_get_of_wiring_modes(%struct.device_node*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_get_videomode(%struct.device_node*, %struct.videomode*, i32) #1

declare dso_local i32 @fb_videomode_from_videomode(%struct.videomode*, %struct.fb_videomode*) #1

declare dso_local i32 @fb_add_videomode(%struct.fb_videomode*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
