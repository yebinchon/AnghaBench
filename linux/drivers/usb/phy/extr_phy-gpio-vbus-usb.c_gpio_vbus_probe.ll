; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-gpio-vbus-usb.c_gpio_vbus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-gpio-vbus-usb.c_gpio_vbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_vbus_mach_info = type { i32, i32, i32, i32 }
%struct.gpio_vbus_data = type { i32, %struct.TYPE_4__, i32*, i32, i32* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__*, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.resource = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"gpio-vbus\00", align 1
@gpio_vbus_set_power = common dso_local global i32 0, align 4
@gpio_vbus_set_suspend = common dso_local global i32 0, align 4
@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@gpio_vbus_set_peripheral = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"vbus_detect\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"can't request vbus gpio %d, err: %d\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IRQF_TRIGGER_MASK = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@VBUS_IRQ_FLAGS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"udc_pullup\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"can't request pullup gpio %d, err: %d\0A\00", align 1
@gpio_vbus_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"can't request irq %i, err: %d\0A\00", align 1
@gpio_vbus_work = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"vbus_draw\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"can't get vbus_draw regulator, err: %ld\0A\00", align 1
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"can't register transceiver, err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_vbus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_vbus_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_vbus_mach_info*, align 8
  %5 = alloca %struct.gpio_vbus_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.gpio_vbus_mach_info* @dev_get_platdata(i32* %12)
  store %struct.gpio_vbus_mach_info* %13, %struct.gpio_vbus_mach_info** %4, align 8
  %14 = load %struct.gpio_vbus_mach_info*, %struct.gpio_vbus_mach_info** %4, align 8
  %15 = icmp ne %struct.gpio_vbus_mach_info* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.gpio_vbus_mach_info*, %struct.gpio_vbus_mach_info** %4, align 8
  %18 = getelementptr inbounds %struct.gpio_vbus_mach_info, %struct.gpio_vbus_mach_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @gpio_is_valid(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %228

25:                                               ; preds = %16
  %26 = load %struct.gpio_vbus_mach_info*, %struct.gpio_vbus_mach_info** %4, align 8
  %27 = getelementptr inbounds %struct.gpio_vbus_mach_info, %struct.gpio_vbus_mach_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(i32* %30, i32 64, i32 %31)
  %33 = bitcast i8* %32 to %struct.gpio_vbus_data*
  store %struct.gpio_vbus_data* %33, %struct.gpio_vbus_data** %5, align 8
  %34 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %35 = icmp ne %struct.gpio_vbus_data* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %228

39:                                               ; preds = %25
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @devm_kzalloc(i32* %41, i32 4, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_3__*
  %45 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %46 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %47, align 8
  %48 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %49 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %228

56:                                               ; preds = %39
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %59 = call i32 @platform_set_drvdata(%struct.platform_device* %57, %struct.gpio_vbus_data* %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %63 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %62, i32 0, i32 4
  store i32* %61, i32** %63, align 8
  %64 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %65 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %66, align 8
  %67 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %68 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %71 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  store i32* %69, i32** %72, align 8
  %73 = load i32, i32* @gpio_vbus_set_power, align 4
  %74 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %75 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @gpio_vbus_set_suspend, align 4
  %78 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %79 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %82 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %83 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32 %81, i32* %86, align 8
  %87 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %88 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %87, i32 0, i32 1
  %89 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %90 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %93, align 8
  %94 = load i32, i32* @gpio_vbus_set_peripheral, align 4
  %95 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %96 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @devm_gpio_request(i32* %101, i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %56
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %2, align 4
  br label %228

113:                                              ; preds = %56
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @gpio_direction_input(i32 %114)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load i32, i32* @IORESOURCE_IRQ, align 4
  %118 = call %struct.resource* @platform_get_resource(%struct.platform_device* %116, i32 %117, i32 0)
  store %struct.resource* %118, %struct.resource** %6, align 8
  %119 = load %struct.resource*, %struct.resource** %6, align 8
  %120 = icmp ne %struct.resource* %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %113
  %122 = load %struct.resource*, %struct.resource** %6, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %9, align 4
  %125 = load %struct.resource*, %struct.resource** %6, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IRQF_TRIGGER_MASK, align 8
  %129 = and i64 %127, %128
  %130 = load i64, i64* @IRQF_SHARED, align 8
  %131 = or i64 %129, %130
  store i64 %131, i64* %10, align 8
  br label %136

132:                                              ; preds = %113
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @gpio_to_irq(i32 %133)
  store i32 %134, i32* %9, align 4
  %135 = load i64, i64* @VBUS_IRQ_FLAGS, align 8
  store i64 %135, i64* %10, align 8
  br label %136

136:                                              ; preds = %132, %121
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %139 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.gpio_vbus_mach_info*, %struct.gpio_vbus_mach_info** %4, align 8
  %141 = getelementptr inbounds %struct.gpio_vbus_mach_info, %struct.gpio_vbus_mach_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i64 @gpio_is_valid(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %136
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @devm_gpio_request(i32* %148, i32 %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %155, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %228

160:                                              ; preds = %146
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.gpio_vbus_mach_info*, %struct.gpio_vbus_mach_info** %4, align 8
  %163 = getelementptr inbounds %struct.gpio_vbus_mach_info, %struct.gpio_vbus_mach_info* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @gpio_direction_output(i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %160, %136
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @gpio_vbus_irq, align 4
  %171 = load i64, i64* %10, align 8
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = call i32 @devm_request_irq(i32* %168, i32 %169, i32 %170, i64 %171, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.platform_device* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %166
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %2, align 4
  br label %228

183:                                              ; preds = %166
  %184 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %185 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %184, i32 0, i32 3
  %186 = load i32, i32* @gpio_vbus_work, align 4
  %187 = call i32 @INIT_DELAYED_WORK(i32* %185, i32 %186)
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = call i32* @devm_regulator_get(i32* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %191 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %192 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %191, i32 0, i32 2
  store i32* %190, i32** %192, align 8
  %193 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %194 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = call i64 @IS_ERR(i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %183
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %202 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @PTR_ERR(i32* %203)
  %205 = call i32 @dev_dbg(i32* %200, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %204)
  %206 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %207 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %206, i32 0, i32 2
  store i32* null, i32** %207, align 8
  br label %208

208:                                              ; preds = %198, %183
  %209 = load %struct.gpio_vbus_data*, %struct.gpio_vbus_data** %5, align 8
  %210 = getelementptr inbounds %struct.gpio_vbus_data, %struct.gpio_vbus_data* %209, i32 0, i32 1
  %211 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %212 = call i32 @usb_add_phy(%struct.TYPE_4__* %210, i32 %211)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %208
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = load i32, i32* %7, align 4
  %219 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %217, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %2, align 4
  br label %228

221:                                              ; preds = %208
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = load %struct.gpio_vbus_mach_info*, %struct.gpio_vbus_mach_info** %4, align 8
  %225 = getelementptr inbounds %struct.gpio_vbus_mach_info, %struct.gpio_vbus_mach_info* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @device_init_wakeup(i32* %223, i32 %226)
  store i32 0, i32* %2, align 4
  br label %228

228:                                              ; preds = %221, %215, %176, %153, %106, %53, %36, %22
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local %struct.gpio_vbus_mach_info* @dev_get_platdata(i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_vbus_data*) #1

declare dso_local i32 @devm_gpio_request(i32*, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i64, i8*, %struct.platform_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @usb_add_phy(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
