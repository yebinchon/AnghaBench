; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.power_supply_config = type { %struct.device_node*, %struct.sc27xx_fgu_data* }
%struct.sc27xx_fgu_data = type { i32, i8*, %struct.device*, i8*, i32, i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to get regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to get fgu address\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bat-temp\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to get IIO channel\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"charge-vol\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to get charge IIO channel\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"bat-detect\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"failed to get battery detection GPIO\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"failed to get gpio state\0A\00", align 1
@sc27xx_fgu_desc = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to register power supply\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to initialize fgu hardware\0A\00", align 1
@sc27xx_fgu_disable = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"failed to add fgu disable action\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"no irq resource specified\0A\00", align 1
@sc27xx_fgu_interrupt = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"failed to request fgu IRQ\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"failed to translate GPIO to IRQ\0A\00", align 1
@sc27xx_fgu_bat_detection = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sc27xx_fgu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca %struct.sc27xx_fgu_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.sc27xx_fgu_data* @devm_kzalloc(%struct.device* %16, i32 64, i32 %17)
  store %struct.sc27xx_fgu_data* %18, %struct.sc27xx_fgu_data** %7, align 8
  %19 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %20 = icmp ne %struct.sc27xx_fgu_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %234

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_get_regmap(i32 %27, i32* null)
  %29 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %30 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %32 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %234

40:                                               ; preds = %24
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %43 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %42, i32 0, i32 7
  %44 = call i32 @device_property_read_u32(%struct.device* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %2, align 4
  br label %234

51:                                               ; preds = %40
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i8* @devm_iio_channel_get(%struct.device* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %55 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %57 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %56, i32 0, i32 6
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %65 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %2, align 4
  br label %234

68:                                               ; preds = %51
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i8* @devm_iio_channel_get(%struct.device* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %71 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %72 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %74 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %73, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %81 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %82 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %81, i32 0, i32 5
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %2, align 4
  br label %234

85:                                               ; preds = %68
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load i32, i32* @GPIOD_IN, align 4
  %88 = call i8* @devm_gpiod_get(%struct.device* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  %89 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %90 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %92 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @IS_ERR(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %85
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %99 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %100 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %2, align 4
  br label %234

103:                                              ; preds = %85
  %104 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %105 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @gpiod_get_value_cansleep(i8* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i32 @dev_err(%struct.device* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %2, align 4
  br label %234

114:                                              ; preds = %103
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %121 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %123 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %122, i32 0, i32 4
  %124 = call i32 @mutex_init(i32* %123)
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %127 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %126, i32 0, i32 2
  store %struct.device* %125, %struct.device** %127, align 8
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %130 = call i32 @platform_set_drvdata(%struct.platform_device* %128, %struct.sc27xx_fgu_data* %129)
  %131 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %132 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 1
  store %struct.sc27xx_fgu_data* %131, %struct.sc27xx_fgu_data** %132, align 8
  %133 = load %struct.device_node*, %struct.device_node** %5, align 8
  %134 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.device_node* %133, %struct.device_node** %134, align 8
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = call i8* @devm_power_supply_register(%struct.device* %135, i32* @sc27xx_fgu_desc, %struct.power_supply_config* %6)
  %137 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %138 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  %139 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %140 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @IS_ERR(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %114
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = call i32 @dev_err(%struct.device* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %147 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %148 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @PTR_ERR(i8* %149)
  store i32 %150, i32* %2, align 4
  br label %234

151:                                              ; preds = %114
  %152 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %153 = call i32 @sc27xx_fgu_hw_init(%struct.sc27xx_fgu_data* %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = call i32 @dev_err(%struct.device* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %234

160:                                              ; preds = %151
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = load i32, i32* @sc27xx_fgu_disable, align 4
  %163 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %164 = call i32 @devm_add_action_or_reset(%struct.device* %161, i32 %162, %struct.sc27xx_fgu_data* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = call i32 @dev_err(%struct.device* %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %2, align 4
  br label %234

171:                                              ; preds = %160
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = call i32 @platform_get_irq(%struct.platform_device* %172, i32 0)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = call i32 @dev_err(%struct.device* %177, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %2, align 4
  br label %234

180:                                              ; preds = %171
  %181 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %182 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %181, i32 0, i32 2
  %183 = load %struct.device*, %struct.device** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @sc27xx_fgu_interrupt, align 4
  %186 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %187 = load i32, i32* @IRQF_ONESHOT, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %193 = call i32 @devm_request_threaded_irq(%struct.device* %183, i32 %184, i32* null, i32 %185, i32 %188, i32 %191, %struct.sc27xx_fgu_data* %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %180
  %197 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %198 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %197, i32 0, i32 2
  %199 = load %struct.device*, %struct.device** %198, align 8
  %200 = call i32 @dev_err(%struct.device* %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %201 = load i32, i32* %8, align 4
  store i32 %201, i32* %2, align 4
  br label %234

202:                                              ; preds = %180
  %203 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %204 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @gpiod_to_irq(i8* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %202
  %210 = load %struct.device*, %struct.device** %4, align 8
  %211 = call i32 @dev_err(%struct.device* %210, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %2, align 4
  br label %234

213:                                              ; preds = %202
  %214 = load %struct.device*, %struct.device** %4, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @sc27xx_fgu_bat_detection, align 4
  %217 = load i32, i32* @IRQF_ONESHOT, align 4
  %218 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %221 = or i32 %219, %220
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %226 = call i32 @devm_request_threaded_irq(%struct.device* %214, i32 %215, i32* null, i32 %216, i32 %221, i32 %224, %struct.sc27xx_fgu_data* %225)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %213
  %230 = load %struct.device*, %struct.device** %4, align 8
  %231 = call i32 @dev_err(%struct.device* %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %2, align 4
  br label %234

233:                                              ; preds = %213
  store i32 0, i32* %2, align 4
  br label %234

234:                                              ; preds = %233, %229, %209, %196, %176, %167, %156, %144, %110, %96, %78, %61, %47, %35, %21
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sc27xx_fgu_data* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #2

declare dso_local i8* @devm_iio_channel_get(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #2

declare dso_local i32 @gpiod_get_value_cansleep(i8*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sc27xx_fgu_data*) #2

declare dso_local i8* @devm_power_supply_register(%struct.device*, i32*, %struct.power_supply_config*) #2

declare dso_local i32 @sc27xx_fgu_hw_init(%struct.sc27xx_fgu_data*) #2

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.sc27xx_fgu_data*) #2

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.sc27xx_fgu_data*) #2

declare dso_local i32 @gpiod_to_irq(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
