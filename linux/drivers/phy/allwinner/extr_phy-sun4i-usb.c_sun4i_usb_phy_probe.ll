; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sun4i_usb_phy_data = type { i64, i64, i32, %struct.TYPE_3__, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.sun4i_usb_phy*, %struct.TYPE_4__*, %struct.phy_provider*, i32, %struct.phy_provider*, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.sun4i_usb_phy = type { i32, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64 }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sun4i_usb_phy0_id_vbus_det_scan = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"phy_ctrl\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"usb0_id_det\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Couldn't request ID GPIO\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"usb0_vbus_det\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Couldn't request VBUS detect GPIO\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"usb0_vbus_power-supply\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Couldn't get the VBUS power supply\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@sun4i_usb_phy0_cable = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Couldn't allocate our extcon device\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to register extcon: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"usb%d_vbus\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Couldn't get regulator %s... Deferring probe\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"usb%d_phy\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"usb_phy\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"failed to get clock %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"usb%d_hsic_12M\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"usb%d_reset\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"failed to get reset %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"pmu%d\00", align 1
@sun4i_usb_phy_ops = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"failed to create PHY %d\0A\00", align 1
@sun4i_usb_phy0_id_vbus_det_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"usb0-id-det\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Err requesting id-det-irq: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"usb0-vbus-det\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Err requesting vbus-det-irq: %d\0A\00", align 1
@sun4i_usb_phy0_vbus_notify = common dso_local global i32 0, align 4
@sun4i_usb_phy_xlate = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [21 x i8] c"successfully loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sun4i_usb_phy_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sun4i_usb_phy*, align 8
  %12 = alloca [16 x i8], align 16
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sun4i_usb_phy_data* @devm_kzalloc(%struct.device* %18, i32 112, i32 %19)
  store %struct.sun4i_usb_phy_data* %20, %struct.sun4i_usb_phy_data** %4, align 8
  %21 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %22 = icmp ne %struct.sun4i_usb_phy_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %499

26:                                               ; preds = %1
  %27 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %28 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %27, i32 0, i32 13
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %31 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %30, i32 0, i32 12
  %32 = load i32, i32* @sun4i_usb_phy0_id_vbus_det_scan, align 4
  %33 = call i32 @INIT_DELAYED_WORK(i32* %31, i32 %32)
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %36 = call i32 @dev_set_drvdata(%struct.device* %34, %struct.sun4i_usb_phy_data* %35)
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call %struct.TYPE_4__* @of_device_get_match_data(%struct.device* %37)
  %39 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %40 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %39, i32 0, i32 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %42 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %41, i32 0, i32 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %26
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %499

48:                                               ; preds = %26
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %49, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %51, %struct.resource** %8, align 8
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.resource*, %struct.resource** %8, align 8
  %54 = call i8* @devm_ioremap_resource(%struct.device* %52, %struct.resource* %53)
  %55 = bitcast i8* %54 to %struct.phy_provider*
  %56 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %57 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %56, i32 0, i32 11
  store %struct.phy_provider* %55, %struct.phy_provider** %57, align 8
  %58 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %59 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %58, i32 0, i32 11
  %60 = load %struct.phy_provider*, %struct.phy_provider** %59, align 8
  %61 = call i64 @IS_ERR(%struct.phy_provider* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %65 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %64, i32 0, i32 11
  %66 = load %struct.phy_provider*, %struct.phy_provider** %65, align 8
  %67 = call i32 @PTR_ERR(%struct.phy_provider* %66)
  store i32 %67, i32* %2, align 4
  br label %499

68:                                               ; preds = %48
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = load i32, i32* @GPIOD_IN, align 4
  %71 = call i8* @devm_gpiod_get_optional(%struct.device* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = bitcast i8* %71 to %struct.phy_provider*
  %73 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %74 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %73, i32 0, i32 6
  store %struct.phy_provider* %72, %struct.phy_provider** %74, align 8
  %75 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %76 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %75, i32 0, i32 6
  %77 = load %struct.phy_provider*, %struct.phy_provider** %76, align 8
  %78 = call i64 @IS_ERR(%struct.phy_provider* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %68
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %84 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %83, i32 0, i32 6
  %85 = load %struct.phy_provider*, %struct.phy_provider** %84, align 8
  %86 = call i32 @PTR_ERR(%struct.phy_provider* %85)
  store i32 %86, i32* %2, align 4
  br label %499

87:                                               ; preds = %68
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load i32, i32* @GPIOD_IN, align 4
  %90 = call i8* @devm_gpiod_get_optional(%struct.device* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = bitcast i8* %90 to %struct.phy_provider*
  %92 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %93 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %92, i32 0, i32 5
  store %struct.phy_provider* %91, %struct.phy_provider** %93, align 8
  %94 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %95 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %94, i32 0, i32 5
  %96 = load %struct.phy_provider*, %struct.phy_provider** %95, align 8
  %97 = call i64 @IS_ERR(%struct.phy_provider* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %87
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %103 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %102, i32 0, i32 5
  %104 = load %struct.phy_provider*, %struct.phy_provider** %103, align 8
  %105 = call i32 @PTR_ERR(%struct.phy_provider* %104)
  store i32 %105, i32* %2, align 4
  br label %499

106:                                              ; preds = %87
  %107 = load %struct.device_node*, %struct.device_node** %6, align 8
  %108 = call i64 @of_find_property(%struct.device_node* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %106
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = call %struct.phy_provider* @devm_power_supply_get_by_phandle(%struct.device* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %113 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %114 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %113, i32 0, i32 4
  store %struct.phy_provider* %112, %struct.phy_provider** %114, align 8
  %115 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %116 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %115, i32 0, i32 4
  %117 = load %struct.phy_provider*, %struct.phy_provider** %116, align 8
  %118 = call i64 @IS_ERR(%struct.phy_provider* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %110
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %123 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %124 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %123, i32 0, i32 4
  %125 = load %struct.phy_provider*, %struct.phy_provider** %124, align 8
  %126 = call i32 @PTR_ERR(%struct.phy_provider* %125)
  store i32 %126, i32* %2, align 4
  br label %499

127:                                              ; preds = %110
  %128 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %129 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %128, i32 0, i32 4
  %130 = load %struct.phy_provider*, %struct.phy_provider** %129, align 8
  %131 = icmp ne %struct.phy_provider* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* @EPROBE_DEFER, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %499

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %106
  %137 = load %struct.device_node*, %struct.device_node** %6, align 8
  %138 = call i32 @of_usb_get_dr_mode_by_phy(%struct.device_node* %137, i32 0)
  %139 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %140 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %139, i32 0, i32 10
  store i32 %138, i32* %140, align 8
  %141 = load %struct.device*, %struct.device** %5, align 8
  %142 = load i32, i32* @sun4i_usb_phy0_cable, align 4
  %143 = call %struct.phy_provider* @devm_extcon_dev_allocate(%struct.device* %141, i32 %142)
  %144 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %145 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %144, i32 0, i32 9
  store %struct.phy_provider* %143, %struct.phy_provider** %145, align 8
  %146 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %147 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %146, i32 0, i32 9
  %148 = load %struct.phy_provider*, %struct.phy_provider** %147, align 8
  %149 = call i64 @IS_ERR(%struct.phy_provider* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %136
  %152 = load %struct.device*, %struct.device** %5, align 8
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %152, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %154 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %155 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %154, i32 0, i32 9
  %156 = load %struct.phy_provider*, %struct.phy_provider** %155, align 8
  %157 = call i32 @PTR_ERR(%struct.phy_provider* %156)
  store i32 %157, i32* %2, align 4
  br label %499

158:                                              ; preds = %136
  %159 = load %struct.device*, %struct.device** %5, align 8
  %160 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %161 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %160, i32 0, i32 9
  %162 = load %struct.phy_provider*, %struct.phy_provider** %161, align 8
  %163 = call i32 @devm_extcon_dev_register(%struct.device* %159, %struct.phy_provider* %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load %struct.device*, %struct.device** %5, align 8
  %168 = load i32, i32* %10, align 4
  %169 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %10, align 4
  store i32 %170, i32* %2, align 4
  br label %499

171:                                              ; preds = %158
  store i32 0, i32* %9, align 4
  br label %172

172:                                              ; preds = %390, %171
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %175 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %174, i32 0, i32 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %173, %178
  br i1 %179, label %180, label %393

180:                                              ; preds = %172
  %181 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %182 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %181, i32 0, i32 7
  %183 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %183, i64 %185
  store %struct.sun4i_usb_phy* %186, %struct.sun4i_usb_phy** %11, align 8
  %187 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %188 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %187, i32 0, i32 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @BIT(i32 %192)
  %194 = and i32 %191, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %180
  br label %390

197:                                              ; preds = %180
  %198 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @snprintf(i8* %198, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %199)
  %201 = load %struct.device*, %struct.device** %5, align 8
  %202 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %203 = call %struct.phy_provider* @devm_regulator_get_optional(%struct.device* %201, i8* %202)
  %204 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %205 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %204, i32 0, i32 6
  store %struct.phy_provider* %203, %struct.phy_provider** %205, align 8
  %206 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %207 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %206, i32 0, i32 6
  %208 = load %struct.phy_provider*, %struct.phy_provider** %207, align 8
  %209 = call i64 @IS_ERR(%struct.phy_provider* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %228

211:                                              ; preds = %197
  %212 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %213 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %212, i32 0, i32 6
  %214 = load %struct.phy_provider*, %struct.phy_provider** %213, align 8
  %215 = call i32 @PTR_ERR(%struct.phy_provider* %214)
  %216 = load i32, i32* @EPROBE_DEFER, align 4
  %217 = sub nsw i32 0, %216
  %218 = icmp eq i32 %215, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %211
  %220 = load %struct.device*, %struct.device** %5, align 8
  %221 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %222 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %220, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8* %221)
  %223 = load i32, i32* @EPROBE_DEFER, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %2, align 4
  br label %499

225:                                              ; preds = %211
  %226 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %227 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %226, i32 0, i32 6
  store %struct.phy_provider* null, %struct.phy_provider** %227, align 8
  br label %228

228:                                              ; preds = %225, %197
  %229 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %230 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %229, i32 0, i32 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %228
  %236 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @snprintf(i8* %236, i32 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %237)
  br label %242

239:                                              ; preds = %228
  %240 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %241 = call i32 @strlcpy(i8* %240, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 16)
  br label %242

242:                                              ; preds = %239, %235
  %243 = load %struct.device*, %struct.device** %5, align 8
  %244 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %245 = call i8* @devm_clk_get(%struct.device* %243, i8* %244)
  %246 = bitcast i8* %245 to %struct.phy_provider*
  %247 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %248 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %247, i32 0, i32 5
  store %struct.phy_provider* %246, %struct.phy_provider** %248, align 8
  %249 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %250 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %249, i32 0, i32 5
  %251 = load %struct.phy_provider*, %struct.phy_provider** %250, align 8
  %252 = call i64 @IS_ERR(%struct.phy_provider* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %242
  %255 = load %struct.device*, %struct.device** %5, align 8
  %256 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %257 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %255, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %256)
  %258 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %259 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %258, i32 0, i32 5
  %260 = load %struct.phy_provider*, %struct.phy_provider** %259, align 8
  %261 = call i32 @PTR_ERR(%struct.phy_provider* %260)
  store i32 %261, i32* %2, align 4
  br label %499

262:                                              ; preds = %242
  %263 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %264 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %263, i32 0, i32 8
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %301

269:                                              ; preds = %262
  %270 = load i32, i32* %9, align 4
  %271 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %272 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %271, i32 0, i32 8
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %270, %275
  br i1 %276, label %277, label %301

277:                                              ; preds = %269
  %278 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %279 = load i32, i32* %9, align 4
  %280 = call i32 @snprintf(i8* %278, i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %279)
  %281 = load %struct.device*, %struct.device** %5, align 8
  %282 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %283 = call i8* @devm_clk_get(%struct.device* %281, i8* %282)
  %284 = bitcast i8* %283 to %struct.phy_provider*
  %285 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %286 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %285, i32 0, i32 4
  store %struct.phy_provider* %284, %struct.phy_provider** %286, align 8
  %287 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %288 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %287, i32 0, i32 4
  %289 = load %struct.phy_provider*, %struct.phy_provider** %288, align 8
  %290 = call i64 @IS_ERR(%struct.phy_provider* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %277
  %293 = load %struct.device*, %struct.device** %5, align 8
  %294 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %295 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %293, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %294)
  %296 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %297 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %296, i32 0, i32 4
  %298 = load %struct.phy_provider*, %struct.phy_provider** %297, align 8
  %299 = call i32 @PTR_ERR(%struct.phy_provider* %298)
  store i32 %299, i32* %2, align 4
  br label %499

300:                                              ; preds = %277
  br label %301

301:                                              ; preds = %300, %269, %262
  %302 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %303 = load i32, i32* %9, align 4
  %304 = call i32 @snprintf(i8* %302, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %303)
  %305 = load %struct.device*, %struct.device** %5, align 8
  %306 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %307 = call %struct.phy_provider* @devm_reset_control_get(%struct.device* %305, i8* %306)
  %308 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %309 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %308, i32 0, i32 3
  store %struct.phy_provider* %307, %struct.phy_provider** %309, align 8
  %310 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %311 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %310, i32 0, i32 3
  %312 = load %struct.phy_provider*, %struct.phy_provider** %311, align 8
  %313 = call i64 @IS_ERR(%struct.phy_provider* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %301
  %316 = load %struct.device*, %struct.device** %5, align 8
  %317 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %318 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %316, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* %317)
  %319 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %320 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %319, i32 0, i32 3
  %321 = load %struct.phy_provider*, %struct.phy_provider** %320, align 8
  %322 = call i32 @PTR_ERR(%struct.phy_provider* %321)
  store i32 %322, i32* %2, align 4
  br label %499

323:                                              ; preds = %301
  %324 = load i32, i32* %9, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %333, label %326

326:                                              ; preds = %323
  %327 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %328 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %327, i32 0, i32 8
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %358

333:                                              ; preds = %326, %323
  %334 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %335 = load i32, i32* %9, align 4
  %336 = call i32 @snprintf(i8* %334, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %335)
  %337 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %338 = load i32, i32* @IORESOURCE_MEM, align 4
  %339 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %340 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %337, i32 %338, i8* %339)
  store %struct.resource* %340, %struct.resource** %8, align 8
  %341 = load %struct.device*, %struct.device** %5, align 8
  %342 = load %struct.resource*, %struct.resource** %8, align 8
  %343 = call i8* @devm_ioremap_resource(%struct.device* %341, %struct.resource* %342)
  %344 = bitcast i8* %343 to %struct.phy_provider*
  %345 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %346 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %345, i32 0, i32 2
  store %struct.phy_provider* %344, %struct.phy_provider** %346, align 8
  %347 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %348 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %347, i32 0, i32 2
  %349 = load %struct.phy_provider*, %struct.phy_provider** %348, align 8
  %350 = call i64 @IS_ERR(%struct.phy_provider* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %333
  %353 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %354 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %353, i32 0, i32 2
  %355 = load %struct.phy_provider*, %struct.phy_provider** %354, align 8
  %356 = call i32 @PTR_ERR(%struct.phy_provider* %355)
  store i32 %356, i32* %2, align 4
  br label %499

357:                                              ; preds = %333
  br label %358

358:                                              ; preds = %357, %326
  %359 = load %struct.device*, %struct.device** %5, align 8
  %360 = call %struct.phy_provider* @devm_phy_create(%struct.device* %359, i32* null, i32* @sun4i_usb_phy_ops)
  %361 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %362 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %361, i32 0, i32 1
  store %struct.phy_provider* %360, %struct.phy_provider** %362, align 8
  %363 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %364 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %363, i32 0, i32 1
  %365 = load %struct.phy_provider*, %struct.phy_provider** %364, align 8
  %366 = call i64 @IS_ERR(%struct.phy_provider* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %376

368:                                              ; preds = %358
  %369 = load %struct.device*, %struct.device** %5, align 8
  %370 = load i32, i32* %9, align 4
  %371 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %369, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %370)
  %372 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %373 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %372, i32 0, i32 1
  %374 = load %struct.phy_provider*, %struct.phy_provider** %373, align 8
  %375 = call i32 @PTR_ERR(%struct.phy_provider* %374)
  store i32 %375, i32* %2, align 4
  br label %499

376:                                              ; preds = %358
  %377 = load i32, i32* %9, align 4
  %378 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %379 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 8
  %380 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %11, align 8
  %381 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %380, i32 0, i32 1
  %382 = load %struct.phy_provider*, %struct.phy_provider** %381, align 8
  %383 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %384 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %383, i32 0, i32 7
  %385 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %384, align 8
  %386 = load i32, i32* %9, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %385, i64 %387
  %389 = call i32 @phy_set_drvdata(%struct.phy_provider* %382, %struct.sun4i_usb_phy* %388)
  br label %390

390:                                              ; preds = %376, %196
  %391 = load i32, i32* %9, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %9, align 4
  br label %172

393:                                              ; preds = %172
  %394 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %395 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %394, i32 0, i32 6
  %396 = load %struct.phy_provider*, %struct.phy_provider** %395, align 8
  %397 = call i8* @gpiod_to_irq(%struct.phy_provider* %396)
  %398 = ptrtoint i8* %397 to i64
  %399 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %400 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %399, i32 0, i32 0
  store i64 %398, i64* %400, align 8
  %401 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %402 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = icmp sgt i64 %403, 0
  br i1 %404, label %405, label %424

405:                                              ; preds = %393
  %406 = load %struct.device*, %struct.device** %5, align 8
  %407 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %408 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = load i32, i32* @sun4i_usb_phy0_id_vbus_det_irq, align 4
  %411 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %412 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %413 = or i32 %411, %412
  %414 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %415 = call i32 @devm_request_irq(%struct.device* %406, i64 %409, i32 %410, i32 %413, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), %struct.sun4i_usb_phy_data* %414)
  store i32 %415, i32* %10, align 4
  %416 = load i32, i32* %10, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %423

418:                                              ; preds = %405
  %419 = load %struct.device*, %struct.device** %5, align 8
  %420 = load i32, i32* %10, align 4
  %421 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %419, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %420)
  %422 = load i32, i32* %10, align 4
  store i32 %422, i32* %2, align 4
  br label %499

423:                                              ; preds = %405
  br label %424

424:                                              ; preds = %423, %393
  %425 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %426 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %425, i32 0, i32 5
  %427 = load %struct.phy_provider*, %struct.phy_provider** %426, align 8
  %428 = call i8* @gpiod_to_irq(%struct.phy_provider* %427)
  %429 = ptrtoint i8* %428 to i64
  %430 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %431 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %430, i32 0, i32 1
  store i64 %429, i64* %431, align 8
  %432 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %433 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = icmp sgt i64 %434, 0
  br i1 %435, label %436, label %459

436:                                              ; preds = %424
  %437 = load %struct.device*, %struct.device** %5, align 8
  %438 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %439 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = load i32, i32* @sun4i_usb_phy0_id_vbus_det_irq, align 4
  %442 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %443 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %444 = or i32 %442, %443
  %445 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %446 = call i32 @devm_request_irq(%struct.device* %437, i64 %440, i32 %441, i32 %444, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), %struct.sun4i_usb_phy_data* %445)
  store i32 %446, i32* %10, align 4
  %447 = load i32, i32* %10, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %458

449:                                              ; preds = %436
  %450 = load %struct.device*, %struct.device** %5, align 8
  %451 = load i32, i32* %10, align 4
  %452 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %450, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 %451)
  %453 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %454 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %453, i32 0, i32 1
  store i64 -1, i64* %454, align 8
  %455 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %456 = call i32 @sun4i_usb_phy_remove(%struct.platform_device* %455)
  %457 = load i32, i32* %10, align 4
  store i32 %457, i32* %2, align 4
  br label %499

458:                                              ; preds = %436
  br label %459

459:                                              ; preds = %458, %424
  %460 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %461 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %460, i32 0, i32 4
  %462 = load %struct.phy_provider*, %struct.phy_provider** %461, align 8
  %463 = icmp ne %struct.phy_provider* %462, null
  br i1 %463, label %464, label %484

464:                                              ; preds = %459
  %465 = load i32, i32* @sun4i_usb_phy0_vbus_notify, align 4
  %466 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %467 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 1
  store i32 %465, i32* %468, align 8
  %469 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %470 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %469, i32 0, i32 3
  %471 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %470, i32 0, i32 0
  store i64 0, i64* %471, align 8
  %472 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %473 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %472, i32 0, i32 3
  %474 = call i32 @power_supply_reg_notifier(%struct.TYPE_3__* %473)
  store i32 %474, i32* %10, align 4
  %475 = load i32, i32* %10, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %481

477:                                              ; preds = %464
  %478 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %479 = call i32 @sun4i_usb_phy_remove(%struct.platform_device* %478)
  %480 = load i32, i32* %10, align 4
  store i32 %480, i32* %2, align 4
  br label %499

481:                                              ; preds = %464
  %482 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %483 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %482, i32 0, i32 2
  store i32 1, i32* %483, align 8
  br label %484

484:                                              ; preds = %481, %459
  %485 = load %struct.device*, %struct.device** %5, align 8
  %486 = load i32, i32* @sun4i_usb_phy_xlate, align 4
  %487 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %485, i32 %486)
  store %struct.phy_provider* %487, %struct.phy_provider** %7, align 8
  %488 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %489 = call i64 @IS_ERR(%struct.phy_provider* %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %496

491:                                              ; preds = %484
  %492 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %493 = call i32 @sun4i_usb_phy_remove(%struct.platform_device* %492)
  %494 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %495 = call i32 @PTR_ERR(%struct.phy_provider* %494)
  store i32 %495, i32* %2, align 4
  br label %499

496:                                              ; preds = %484
  %497 = load %struct.device*, %struct.device** %5, align 8
  %498 = call i32 @dev_dbg(%struct.device* %497, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %499

499:                                              ; preds = %496, %491, %477, %449, %418, %368, %352, %315, %292, %254, %219, %166, %151, %132, %120, %99, %80, %63, %45, %23
  %500 = load i32, i32* %2, align 4
  ret i32 %500
}

declare dso_local %struct.sun4i_usb_phy_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.sun4i_usb_phy_data*) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.phy_provider* @devm_power_supply_get_by_phandle(%struct.device*, i8*) #1

declare dso_local i32 @of_usb_get_dr_mode_by_phy(%struct.device_node*, i32) #1

declare dso_local %struct.phy_provider* @devm_extcon_dev_allocate(%struct.device*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, %struct.phy_provider*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.phy_provider* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local %struct.phy_provider* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.sun4i_usb_phy*) #1

declare dso_local i8* @gpiod_to_irq(%struct.phy_provider*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32, i32, i8*, %struct.sun4i_usb_phy_data*) #1

declare dso_local i32 @sun4i_usb_phy_remove(%struct.platform_device*) #1

declare dso_local i32 @power_supply_reg_notifier(%struct.TYPE_3__*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
