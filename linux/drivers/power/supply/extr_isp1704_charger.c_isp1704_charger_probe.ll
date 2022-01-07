; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_isp1704_charger.c_isp1704_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_isp1704_charger.c_isp1704_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.isp1704_charger = type { %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, %struct.TYPE_22__*, %struct.TYPE_21__, %struct.TYPE_23__, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.power_supply_config = type { %struct.isp1704_charger* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nxp,enable\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not get reset gpio: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"usb_get_phy failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"isp1704_test_ulpi failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"isp1704\00", align 1
@POWER_SUPPLY_TYPE_USB = common dso_local global i32 0, align 4
@power_props = common dso_local global i32 0, align 4
@isp1704_charger_get_property = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"power_supply_register failed\0A\00", align 1
@isp1704_charger_work = common dso_local global i32 0, align 4
@isp1704_notifier_call = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"usb_register_notifier failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"registered with product id %s\0A\00", align 1
@USB_EVENT_NONE = common dso_local global i64 0, align 8
@USB_EVENT_VBUS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"failed to register isp1704 with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @isp1704_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1704_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.isp1704_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.power_supply_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.isp1704_charger* @devm_kzalloc(%struct.TYPE_22__* %11, i32 80, i32 %12)
  store %struct.isp1704_charger* %13, %struct.isp1704_charger** %4, align 8
  %14 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %15 = icmp ne %struct.isp1704_charger* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %229

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %23 = call %struct.TYPE_20__* @devm_gpiod_get(%struct.TYPE_22__* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %25 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %24, i32 0, i32 7
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %25, align 8
  %26 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %27 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %26, i32 0, i32 7
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = call i64 @IS_ERR(%struct.TYPE_20__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %19
  %32 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %33 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %32, i32 0, i32 7
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.TYPE_20__* %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (%struct.TYPE_22__*, i8*, ...) @dev_err(%struct.TYPE_22__* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %229

41:                                               ; preds = %19
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call %struct.TYPE_20__* @devm_usb_get_phy_by_phandle(%struct.TYPE_22__* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %51 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %52 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %51, i32 0, i32 2
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %52, align 8
  br label %60

53:                                               ; preds = %41
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %57 = call %struct.TYPE_20__* @devm_usb_get_phy(%struct.TYPE_22__* %55, i32 %56)
  %58 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %59 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %58, i32 0, i32 2
  store %struct.TYPE_20__* %57, %struct.TYPE_20__** %59, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %62 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %61, i32 0, i32 2
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = call i64 @IS_ERR(%struct.TYPE_20__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %68 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %67, i32 0, i32 2
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.TYPE_20__* %69)
  store i32 %70, i32* %5, align 4
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 (%struct.TYPE_22__*, i8*, ...) @dev_err(%struct.TYPE_22__* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %223

74:                                               ; preds = %60
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %78 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %77, i32 0, i32 4
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %81 = call i32 @platform_set_drvdata(%struct.platform_device* %79, %struct.isp1704_charger* %80)
  %82 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %83 = call i32 @isp1704_charger_set_power(%struct.isp1704_charger* %82, i32 1)
  %84 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %85 = call i32 @isp1704_test_ulpi(%struct.isp1704_charger* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 (%struct.TYPE_22__*, i8*, ...) @dev_err(%struct.TYPE_22__* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %220

92:                                               ; preds = %74
  %93 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %94 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %95, align 8
  %96 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  %97 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %98 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @power_props, align 4
  %101 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %102 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* @power_props, align 4
  %105 = call i32 @ARRAY_SIZE(i32 %104)
  %106 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %107 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @isp1704_charger_get_property, align 4
  %110 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %111 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %114 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.isp1704_charger* %113, %struct.isp1704_charger** %114, align 8
  %115 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %116 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %115, i32 0, i32 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %119 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %118, i32 0, i32 6
  %120 = call %struct.TYPE_20__* @power_supply_register(%struct.TYPE_22__* %117, %struct.TYPE_23__* %119, %struct.power_supply_config* %6)
  %121 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %122 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %121, i32 0, i32 0
  store %struct.TYPE_20__* %120, %struct.TYPE_20__** %122, align 8
  %123 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %124 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %123, i32 0, i32 0
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = call i64 @IS_ERR(%struct.TYPE_20__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %92
  %129 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %130 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %129, i32 0, i32 0
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = call i32 @PTR_ERR(%struct.TYPE_20__* %131)
  store i32 %132, i32* %5, align 4
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 (%struct.TYPE_22__*, i8*, ...) @dev_err(%struct.TYPE_22__* %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %220

136:                                              ; preds = %92
  %137 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %138 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %137, i32 0, i32 1
  %139 = load i32, i32* @isp1704_charger_work, align 4
  %140 = call i32 @INIT_WORK(i32* %138, i32 %139)
  %141 = load i32, i32* @isp1704_notifier_call, align 4
  %142 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %143 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %146 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %145, i32 0, i32 2
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  %148 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %149 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %148, i32 0, i32 5
  %150 = call i32 @usb_register_notifier(%struct.TYPE_20__* %147, %struct.TYPE_21__* %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %136
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 (%struct.TYPE_22__*, i8*, ...) @dev_err(%struct.TYPE_22__* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %215

157:                                              ; preds = %136
  %158 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %159 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %158, i32 0, i32 4
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %162 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @dev_info(%struct.TYPE_22__* %160, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %163)
  %165 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %166 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %165, i32 0, i32 2
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %157
  %174 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %175 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %174, i32 0, i32 2
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @usb_gadget_disconnect(i64 %180)
  br label %182

182:                                              ; preds = %173, %157
  %183 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %184 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %183, i32 0, i32 2
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @USB_EVENT_NONE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %192 = call i32 @isp1704_charger_set_power(%struct.isp1704_charger* %191, i32 0)
  br label %193

193:                                              ; preds = %190, %182
  %194 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %195 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %194, i32 0, i32 2
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @USB_EVENT_VBUS, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %193
  %202 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %203 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %202, i32 0, i32 2
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %201
  %211 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %212 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %211, i32 0, i32 1
  %213 = call i32 @schedule_work(i32* %212)
  br label %214

214:                                              ; preds = %210, %201, %193
  store i32 0, i32* %2, align 4
  br label %229

215:                                              ; preds = %153
  %216 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %217 = getelementptr inbounds %struct.isp1704_charger, %struct.isp1704_charger* %216, i32 0, i32 0
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = call i32 @power_supply_unregister(%struct.TYPE_20__* %218)
  br label %220

220:                                              ; preds = %215, %128, %88
  %221 = load %struct.isp1704_charger*, %struct.isp1704_charger** %4, align 8
  %222 = call i32 @isp1704_charger_set_power(%struct.isp1704_charger* %221, i32 0)
  br label %223

223:                                              ; preds = %220, %66
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = load i32, i32* %5, align 4
  %227 = call i32 (%struct.TYPE_22__*, i8*, ...) @dev_err(%struct.TYPE_22__* %225, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* %5, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %223, %214, %31, %16
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.isp1704_charger* @devm_kzalloc(%struct.TYPE_22__*, i32, i32) #2

declare dso_local %struct.TYPE_20__* @devm_gpiod_get(%struct.TYPE_22__*, i8*, i32) #2

declare dso_local i64 @IS_ERR(%struct.TYPE_20__*) #2

declare dso_local i32 @PTR_ERR(%struct.TYPE_20__*) #2

declare dso_local i32 @dev_err(%struct.TYPE_22__*, i8*, ...) #2

declare dso_local %struct.TYPE_20__* @devm_usb_get_phy_by_phandle(%struct.TYPE_22__*, i8*, i32) #2

declare dso_local %struct.TYPE_20__* @devm_usb_get_phy(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.isp1704_charger*) #2

declare dso_local i32 @isp1704_charger_set_power(%struct.isp1704_charger*, i32) #2

declare dso_local i32 @isp1704_test_ulpi(%struct.isp1704_charger*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local %struct.TYPE_20__* @power_supply_register(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.power_supply_config*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @usb_register_notifier(%struct.TYPE_20__*, %struct.TYPE_21__*) #2

declare dso_local i32 @dev_info(%struct.TYPE_22__*, i8*, i32) #2

declare dso_local i32 @usb_gadget_disconnect(i64) #2

declare dso_local i32 @schedule_work(i32*) #2

declare dso_local i32 @power_supply_unregister(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
