; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.wl1251_platform_data = type { i32, i32 }
%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i32, i64, %struct.ieee80211_hw*, i32, i32*, %struct.spi_device* }

@.str = private unnamed_addr constant [17 x i8] c"no platform data\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@wl1251_spi_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"spi_setup failed\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ti,wl1251-has-eeprom\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ti,power-gpio\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"wl1251 power\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to request gpio: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"set power gpio missing in platform data\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"irq missing in platform data\00", align 1
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@wl1251_irq = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"request_irq() failed: %d\00", align 1
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vio regulator missing: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @wl1251_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.wl1251_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.wl1251*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 2
  %11 = call %struct.wl1251_platform_data* @dev_get_platdata(%struct.TYPE_6__* %10)
  store %struct.wl1251_platform_data* %11, %struct.wl1251_platform_data** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.wl1251_platform_data*, %struct.wl1251_platform_data** %4, align 8
  %20 = icmp ne %struct.wl1251_platform_data* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %199

25:                                               ; preds = %18, %1
  %26 = call %struct.ieee80211_hw* (...) @wl1251_alloc_hw()
  store %struct.ieee80211_hw* %26, %struct.ieee80211_hw** %6, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %28 = call i64 @IS_ERR(%struct.ieee80211_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %32 = call i32 @PTR_ERR(%struct.ieee80211_hw* %31)
  store i32 %32, i32* %2, align 4
  br label %199

33:                                               ; preds = %25
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %34, i32 0, i32 0
  %36 = load %struct.wl1251*, %struct.wl1251** %35, align 8
  store %struct.wl1251* %36, %struct.wl1251** %7, align 8
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 2
  %40 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %37, %struct.TYPE_6__* %39)
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %43 = call i32 @spi_set_drvdata(%struct.spi_device* %41, %struct.wl1251* %42)
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %46 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %45, i32 0, i32 5
  store %struct.spi_device* %44, %struct.spi_device** %46, align 8
  %47 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %48 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %47, i32 0, i32 4
  store i32* @wl1251_spi_ops, i32** %48, align 8
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  store i32 32, i32* %50, align 8
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = call i32 @spi_setup(%struct.spi_device* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %33
  %56 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %195

57:                                               ; preds = %33
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = icmp ne %struct.device_node* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.device_node*, %struct.device_node** %5, align 8
  %62 = call i32 @of_property_read_bool(%struct.device_node* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %64 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = call i32 @of_get_named_gpio(%struct.device_node* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %67 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %68 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %84

69:                                               ; preds = %57
  %70 = load %struct.wl1251_platform_data*, %struct.wl1251_platform_data** %4, align 8
  %71 = icmp ne %struct.wl1251_platform_data* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.wl1251_platform_data*, %struct.wl1251_platform_data** %4, align 8
  %74 = getelementptr inbounds %struct.wl1251_platform_data, %struct.wl1251_platform_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %77 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.wl1251_platform_data*, %struct.wl1251_platform_data** %4, align 8
  %79 = getelementptr inbounds %struct.wl1251_platform_data, %struct.wl1251_platform_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %82 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %72, %69
  br label %84

84:                                               ; preds = %83, %60
  %85 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %86 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @EPROBE_DEFER, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @EPROBE_DEFER, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %195

94:                                               ; preds = %84
  %95 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %96 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @gpio_is_valid(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %94
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %101, i32 0, i32 2
  %103 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %104 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %107 = call i32 @devm_gpio_request_one(%struct.TYPE_6__* %102, i32 %105, i32 %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  br label %195

113:                                              ; preds = %100
  br label %118

114:                                              ; preds = %94
  %115 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %195

118:                                              ; preds = %113
  %119 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %120 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %123 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %125 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %118
  %129 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %8, align 4
  br label %195

132:                                              ; preds = %118
  %133 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %134 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %137 = call i32 @irq_set_status_flags(i64 %135, i32 %136)
  %138 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %139 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %138, i32 0, i32 2
  %140 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %141 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @wl1251_irq, align 4
  %144 = load i32, i32* @DRIVER_NAME, align 4
  %145 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %146 = call i32 @devm_request_irq(%struct.TYPE_6__* %139, i64 %142, i32 %143, i32 0, i32 %144, %struct.wl1251* %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %132
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %150)
  br label %195

152:                                              ; preds = %132
  %153 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %154 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %157 = call i32 @irq_set_irq_type(i64 %155, i32 %156)
  %158 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %159 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %158, i32 0, i32 2
  %160 = call %struct.ieee80211_hw* @devm_regulator_get(%struct.TYPE_6__* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %161 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %162 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %161, i32 0, i32 2
  store %struct.ieee80211_hw* %160, %struct.ieee80211_hw** %162, align 8
  %163 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %164 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %163, i32 0, i32 2
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %164, align 8
  %166 = call i64 @IS_ERR(%struct.ieee80211_hw* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %152
  %169 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %170 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %169, i32 0, i32 2
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %170, align 8
  %172 = call i32 @PTR_ERR(%struct.ieee80211_hw* %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 (i8*, ...) @wl1251_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %173)
  br label %195

175:                                              ; preds = %152
  %176 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %177 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %176, i32 0, i32 2
  %178 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %177, align 8
  %179 = call i32 @regulator_enable(%struct.ieee80211_hw* %178)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %195

183:                                              ; preds = %175
  %184 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %185 = call i32 @wl1251_init_ieee80211(%struct.wl1251* %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %190

189:                                              ; preds = %183
  store i32 0, i32* %2, align 4
  br label %199

190:                                              ; preds = %188
  %191 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %192 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %191, i32 0, i32 2
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %192, align 8
  %194 = call i32 @regulator_disable(%struct.ieee80211_hw* %193)
  br label %195

195:                                              ; preds = %190, %182, %168, %149, %128, %114, %110, %91, %55
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %197 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %196)
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %195, %189, %30, %21
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.wl1251_platform_data* @dev_get_platdata(%struct.TYPE_6__*) #1

declare dso_local i32 @wl1251_error(i8*, ...) #1

declare dso_local %struct.ieee80211_hw* @wl1251_alloc_hw(...) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_hw*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee80211_hw*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, %struct.TYPE_6__*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.wl1251*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_6__*, i32, i32, i8*) #1

declare dso_local i32 @irq_set_status_flags(i64, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_6__*, i64, i32, i32, i32, %struct.wl1251*) #1

declare dso_local i32 @irq_set_irq_type(i64, i32) #1

declare dso_local %struct.ieee80211_hw* @devm_regulator_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @regulator_enable(%struct.ieee80211_hw*) #1

declare dso_local i32 @wl1251_init_ieee80211(%struct.wl1251*) #1

declare dso_local i32 @regulator_disable(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
