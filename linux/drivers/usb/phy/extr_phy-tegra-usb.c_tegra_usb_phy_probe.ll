; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_tegra_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_tegra_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 }
%struct.resource = type { i32 }
%struct.tegra_usb_phy = type { i32, i32, i64, %struct.TYPE_10__, i32, i32*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_usb_phy_id_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get I/O memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to remap I/O memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"nvidia,has-legacy-mode\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"nvidia,phy-reset-gpio\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Invalid GPIO: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"phy_type %u is invalid or unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@USB_DR_MODE_HOST = common dso_local global i64 0, align 8
@USB_DR_MODE_UNKNOWN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"dr_mode is invalid\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"vbus-supply\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"no vbus regulator\00", align 1
@tegra_usb_phy_suspend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.tegra_usb_phy*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.tegra_usb_phy* null, %struct.tegra_usb_phy** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.tegra_usb_phy* @devm_kzalloc(%struct.TYPE_9__* %15, i32 64, i32 %16)
  store %struct.tegra_usb_phy* %17, %struct.tegra_usb_phy** %6, align 8
  %18 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %19 = icmp ne %struct.tegra_usb_phy* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %209

23:                                               ; preds = %1
  %24 = load i32, i32* @tegra_usb_phy_id_table, align 4
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.of_device_id* @of_match_device(i32 %24, %struct.TYPE_9__* %26)
  store %struct.of_device_id* %27, %struct.of_device_id** %4, align 8
  %28 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %29 = icmp ne %struct.of_device_id* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %209

36:                                               ; preds = %23
  %37 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %38 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %41 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load i32, i32* @IORESOURCE_MEM, align 4
  %44 = call %struct.resource* @platform_get_resource(%struct.platform_device* %42, i32 %43, i32 0)
  store %struct.resource* %44, %struct.resource** %5, align 8
  %45 = load %struct.resource*, %struct.resource** %5, align 8
  %46 = icmp ne %struct.resource* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %36
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %209

53:                                               ; preds = %36
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.resource*, %struct.resource** %5, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.resource*, %struct.resource** %5, align 8
  %60 = call i32 @resource_size(%struct.resource* %59)
  %61 = call i32 @devm_ioremap(%struct.TYPE_9__* %55, i32 %58, i32 %60)
  %62 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %63 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %65 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %53
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %209

74:                                               ; preds = %53
  %75 = load %struct.device_node*, %struct.device_node** %7, align 8
  %76 = call i32 @of_property_read_bool(%struct.device_node* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %78 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %struct.device_node*, %struct.device_node** %7, align 8
  %80 = call i32 @of_usb_get_phy_mode(%struct.device_node* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  switch i32 %81, label %116 [
    i32 128, label %82
    i32 129, label %91
  ]

82:                                               ; preds = %74
  %83 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = call i32 @utmi_phy_probe(%struct.tegra_usb_phy* %83, %struct.platform_device* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %209

90:                                               ; preds = %82
  br label %123

91:                                               ; preds = %74
  %92 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %93 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.device_node*, %struct.device_node** %7, align 8
  %95 = call i32 @of_get_named_gpio(%struct.device_node* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %96 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %97 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %99 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @gpio_is_valid(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %91
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %107 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %111 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %2, align 4
  br label %209

113:                                              ; preds = %91
  %114 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %115 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %114, i32 0, i32 5
  store i32* null, i32** %115, align 8
  br label %123

116:                                              ; preds = %74
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %209

123:                                              ; preds = %113, %90
  %124 = load %struct.device_node*, %struct.device_node** %7, align 8
  %125 = call i64 @of_find_property(%struct.device_node* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i64 @usb_get_dr_mode(%struct.TYPE_9__* %129)
  %131 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %132 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %137

133:                                              ; preds = %123
  %134 = load i64, i64* @USB_DR_MODE_HOST, align 8
  %135 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %136 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %127
  %138 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %139 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @USB_DR_MODE_UNKNOWN, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %209

149:                                              ; preds = %137
  %150 = load %struct.device_node*, %struct.device_node** %7, align 8
  %151 = call i64 @of_find_property(%struct.device_node* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* null)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @devm_regulator_get(%struct.TYPE_9__* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %157 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %158 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  %159 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %160 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @IS_ERR(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %153
  %165 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %166 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @PTR_ERR(i32 %167)
  store i32 %168, i32* %2, align 4
  br label %209

169:                                              ; preds = %153
  br label %179

170:                                              ; preds = %149
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i32 @dev_notice(%struct.TYPE_9__* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %174 = load i32, i32* @ENODEV, align 4
  %175 = sub nsw i32 0, %174
  %176 = call i32 @ERR_PTR(i32 %175)
  %177 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %178 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %170, %169
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %183 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %184, align 8
  %185 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %186 = call i32 @tegra_usb_phy_init(%struct.tegra_usb_phy* %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %179
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %2, align 4
  br label %209

191:                                              ; preds = %179
  %192 = load i32, i32* @tegra_usb_phy_suspend, align 4
  %193 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %194 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %198 = call i32 @platform_set_drvdata(%struct.platform_device* %196, %struct.tegra_usb_phy* %197)
  %199 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %200 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %199, i32 0, i32 3
  %201 = call i32 @usb_add_phy_dev(%struct.TYPE_10__* %200)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %191
  %205 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %6, align 8
  %206 = call i32 @tegra_usb_phy_close(%struct.tegra_usb_phy* %205)
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %2, align 4
  br label %209

208:                                              ; preds = %191
  store i32 0, i32* %2, align 4
  br label %209

209:                                              ; preds = %208, %204, %189, %164, %143, %116, %103, %88, %68, %47, %30, %20
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.tegra_usb_phy* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_usb_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @utmi_phy_probe(%struct.tegra_usb_phy*, %struct.platform_device*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @usb_get_dr_mode(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_notice(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @tegra_usb_phy_init(%struct.tegra_usb_phy*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_usb_phy*) #1

declare dso_local i32 @usb_add_phy_dev(%struct.TYPE_10__*) #1

declare dso_local i32 @tegra_usb_phy_close(%struct.tegra_usb_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
