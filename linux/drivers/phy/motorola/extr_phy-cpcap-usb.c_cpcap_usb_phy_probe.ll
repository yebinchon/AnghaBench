; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cpcap_phy_ddata = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__*, %struct.phy_provider*, i32 }
%struct.TYPE_7__ = type { i8*, i32, %struct.usb_otg*, %struct.TYPE_8__* }
%struct.usb_otg = type { %struct.TYPE_7__*, i32, i32 }
%struct.phy_provider = type { i32 }
%struct.phy = type opaque
%struct.of_device_id = type { i32 }

@cpcap_usb_phy_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cpcap_usb_phy\00", align 1
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@cpcap_usb_phy_set_host = common dso_local global i32 0, align 4
@cpcap_usb_phy_set_peripheral = common dso_local global i32 0, align 4
@cpcap_usb_detect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vusb\00", align 1
@ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpcap_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cpcap_phy_ddata*, align 8
  %5 = alloca %struct.phy*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.usb_otg*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @cpcap_usb_phy_id_table, align 4
  %11 = call i32 @of_match_ptr(i32 %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.of_device_id* @of_match_device(i32 %11, %struct.TYPE_8__* %13)
  store %struct.of_device_id* %14, %struct.of_device_id** %8, align 8
  %15 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %16 = icmp ne %struct.of_device_id* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %188

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @devm_kzalloc(%struct.TYPE_8__* %22, i32 64, i32 %23)
  %25 = bitcast i8* %24 to %struct.cpcap_phy_ddata*
  store %struct.cpcap_phy_ddata* %25, %struct.cpcap_phy_ddata** %4, align 8
  %26 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %27 = icmp ne %struct.cpcap_phy_ddata* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %188

31:                                               ; preds = %20
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_get_regmap(i32 %35, i32* null)
  %37 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %38 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %40 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %188

46:                                               ; preds = %31
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @devm_kzalloc(%struct.TYPE_8__* %48, i32 16, i32 %49)
  %51 = bitcast i8* %50 to %struct.usb_otg*
  store %struct.usb_otg* %51, %struct.usb_otg** %7, align 8
  %52 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %53 = icmp ne %struct.usb_otg* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %188

57:                                               ; preds = %46
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %61 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %60, i32 0, i32 3
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %61, align 8
  %62 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %63 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %66 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %67, align 8
  %68 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %69 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %70, align 8
  %71 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %72 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %73 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store %struct.usb_otg* %71, %struct.usb_otg** %74, align 8
  %75 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %76 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %77 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @cpcap_usb_phy_set_host, align 4
  %80 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %81 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @cpcap_usb_phy_set_peripheral, align 4
  %83 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %84 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %86 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %85, i32 0, i32 2
  %87 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %88 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %87, i32 0, i32 0
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %88, align 8
  %89 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %90 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %89, i32 0, i32 0
  %91 = load i32, i32* @cpcap_usb_detect, align 4
  %92 = call i32 @INIT_DELAYED_WORK(i32* %90, i32 %91)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %95 = call i32 @platform_set_drvdata(%struct.platform_device* %93, %struct.cpcap_phy_ddata* %94)
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call %struct.phy_provider* @devm_regulator_get(%struct.TYPE_8__* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %100 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %99, i32 0, i32 4
  store %struct.phy_provider* %98, %struct.phy_provider** %100, align 8
  %101 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %102 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %101, i32 0, i32 4
  %103 = load %struct.phy_provider*, %struct.phy_provider** %102, align 8
  %104 = call i64 @IS_ERR(%struct.phy_provider* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %57
  %107 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %108 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %107, i32 0, i32 4
  %109 = load %struct.phy_provider*, %struct.phy_provider** %108, align 8
  %110 = call i32 @PTR_ERR(%struct.phy_provider* %109)
  store i32 %110, i32* %2, align 4
  br label %188

111:                                              ; preds = %57
  %112 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %113 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %112, i32 0, i32 4
  %114 = load %struct.phy_provider*, %struct.phy_provider** %113, align 8
  %115 = call i32 @regulator_enable(%struct.phy_provider* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %2, align 4
  br label %188

120:                                              ; preds = %111
  %121 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %122 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = call %struct.phy_provider* @devm_phy_create(%struct.TYPE_8__* %123, i32* null, i32* @ops)
  %125 = bitcast %struct.phy_provider* %124 to %struct.phy*
  store %struct.phy* %125, %struct.phy** %5, align 8
  %126 = load %struct.phy*, %struct.phy** %5, align 8
  %127 = bitcast %struct.phy* %126 to %struct.phy_provider*
  %128 = call i64 @IS_ERR(%struct.phy_provider* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %120
  %131 = load %struct.phy*, %struct.phy** %5, align 8
  %132 = bitcast %struct.phy* %131 to %struct.phy_provider*
  %133 = call i32 @PTR_ERR(%struct.phy_provider* %132)
  store i32 %133, i32* %9, align 4
  %134 = load %struct.phy*, %struct.phy** %5, align 8
  %135 = bitcast %struct.phy* %134 to %struct.phy_provider*
  %136 = call i32 @PTR_ERR(%struct.phy_provider* %135)
  store i32 %136, i32* %2, align 4
  br label %188

137:                                              ; preds = %120
  %138 = load %struct.phy*, %struct.phy** %5, align 8
  %139 = bitcast %struct.phy* %138 to %struct.phy_provider*
  %140 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %141 = call i32 @phy_set_drvdata(%struct.phy_provider* %139, %struct.cpcap_phy_ddata* %140)
  %142 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %143 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %142, i32 0, i32 3
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i32, i32* @of_phy_simple_xlate, align 4
  %146 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_8__* %144, i32 %145)
  store %struct.phy_provider* %146, %struct.phy_provider** %6, align 8
  %147 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %148 = call i64 @IS_ERR(%struct.phy_provider* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %137
  %151 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %152 = call i32 @PTR_ERR(%struct.phy_provider* %151)
  store i32 %152, i32* %2, align 4
  br label %188

153:                                              ; preds = %137
  %154 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %155 = call i32 @cpcap_usb_init_optional_pins(%struct.cpcap_phy_ddata* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %2, align 4
  br label %188

160:                                              ; preds = %153
  %161 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %162 = call i32 @cpcap_usb_init_optional_gpios(%struct.cpcap_phy_ddata* %161)
  %163 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %164 = call i32 @cpcap_usb_init_iio(%struct.cpcap_phy_ddata* %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* %9, align 4
  store i32 %168, i32* %2, align 4
  br label %188

169:                                              ; preds = %160
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %172 = call i32 @cpcap_usb_init_interrupts(%struct.platform_device* %170, %struct.cpcap_phy_ddata* %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %2, align 4
  br label %188

177:                                              ; preds = %169
  %178 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %179 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %178, i32 0, i32 2
  %180 = call i32 @usb_add_phy_dev(%struct.TYPE_7__* %179)
  %181 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %182 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %181, i32 0, i32 1
  %183 = call i32 @atomic_set(i32* %182, i32 1)
  %184 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %185 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %184, i32 0, i32 0
  %186 = call i32 @msecs_to_jiffies(i32 1)
  %187 = call i32 @schedule_delayed_work(i32* %185, i32 %186)
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %177, %175, %167, %158, %150, %130, %118, %106, %54, %43, %28, %17
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cpcap_phy_ddata*) #1

declare dso_local %struct.phy_provider* @devm_regulator_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i32 @regulator_enable(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.cpcap_phy_ddata*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cpcap_usb_init_optional_pins(%struct.cpcap_phy_ddata*) #1

declare dso_local i32 @cpcap_usb_init_optional_gpios(%struct.cpcap_phy_ddata*) #1

declare dso_local i32 @cpcap_usb_init_iio(%struct.cpcap_phy_ddata*) #1

declare dso_local i32 @cpcap_usb_init_interrupts(%struct.platform_device*, %struct.cpcap_phy_ddata*) #1

declare dso_local i32 @usb_add_phy_dev(%struct.TYPE_7__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
