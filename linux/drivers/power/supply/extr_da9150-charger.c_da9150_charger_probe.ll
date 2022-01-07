; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da9150 = type { i32 }
%struct.da9150_charger = type { i32*, i32*, i32*, i32*, i32*, %struct.TYPE_3__, i32, i32, i32*, i32*, %struct.device*, %struct.da9150* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"CHAN_IBUS\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CHAN_VBUS\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"CHAN_TJUNC\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CHAN_VBAT\00", align 1
@usb_desc = common dso_local global i32 0, align 4
@battery_desc = common dso_local global i32 0, align 4
@DA9150_STATUS_H = common dso_local global i32 0, align 4
@DA9150_VBUS_STAT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Unknown VBUS state - reg = 0x%x\0A\00", align 1
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@da9150_charger_otg_work = common dso_local global i32 0, align 4
@da9150_charger_otg_ncb = common dso_local global i32 0, align 4
@da9150_charger_chg_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"CHG_STATUS\00", align 1
@da9150_charger_tjunc_irq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"CHG_TJUNC\00", align 1
@da9150_charger_vfault_irq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"CHG_VFAULT\00", align 1
@da9150_charger_vbus_irq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"CHG_VBUS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9150_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da9150*, align 8
  %6 = alloca %struct.da9150_charger*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.da9150* @dev_get_drvdata(i32 %13)
  store %struct.da9150* %14, %struct.da9150** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.da9150_charger* @devm_kzalloc(%struct.device* %15, i32 88, i32 %16)
  store %struct.da9150_charger* %17, %struct.da9150_charger** %6, align 8
  %18 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %19 = icmp ne %struct.da9150_charger* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %258

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.da9150_charger* %25)
  %27 = load %struct.da9150*, %struct.da9150** %5, align 8
  %28 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %29 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %28, i32 0, i32 11
  store %struct.da9150* %27, %struct.da9150** %29, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %32 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %31, i32 0, i32 10
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i8* @iio_channel_get(%struct.device* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %37 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %39 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @IS_ERR(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %23
  %44 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %45 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  store i32 %47, i32* %8, align 4
  br label %256

48:                                               ; preds = %23
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i8* @iio_channel_get(%struct.device* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %53 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %55 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @IS_ERR(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %61 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @PTR_ERR(i32* %62)
  store i32 %63, i32* %8, align 4
  br label %251

64:                                               ; preds = %48
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i8* @iio_channel_get(%struct.device* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %69 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %71 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @IS_ERR(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %77 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @PTR_ERR(i32* %78)
  store i32 %79, i32* %8, align 4
  br label %246

80:                                               ; preds = %64
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i8* @iio_channel_get(%struct.device* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %85 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %84, i32 0, i32 3
  store i32* %83, i32** %85, align 8
  %86 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %87 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @IS_ERR(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %93 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @PTR_ERR(i32* %94)
  store i32 %95, i32* %8, align 4
  br label %241

96:                                               ; preds = %80
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i8* @power_supply_register(%struct.device* %97, i32* @usb_desc, i32* null)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %101 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %100, i32 0, i32 4
  store i32* %99, i32** %101, align 8
  %102 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %103 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @IS_ERR(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %96
  %108 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %109 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @PTR_ERR(i32* %110)
  store i32 %111, i32* %8, align 4
  br label %236

112:                                              ; preds = %96
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = call i8* @power_supply_register(%struct.device* %113, i32* @battery_desc, i32* null)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %117 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %116, i32 0, i32 9
  store i32* %115, i32** %117, align 8
  %118 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %119 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %118, i32 0, i32 9
  %120 = load i32*, i32** %119, align 8
  %121 = call i64 @IS_ERR(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %112
  %124 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %125 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %124, i32 0, i32 9
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @PTR_ERR(i32* %126)
  store i32 %127, i32* %8, align 4
  br label %231

128:                                              ; preds = %112
  %129 = load %struct.da9150*, %struct.da9150** %5, align 8
  %130 = load i32, i32* @DA9150_STATUS_H, align 4
  %131 = call i32 @da9150_reg_read(%struct.da9150* %129, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @DA9150_VBUS_STAT_MASK, align 4
  %134 = and i32 %132, %133
  switch i32 %134, label %147 [
    i32 129, label %135
    i32 128, label %135
    i32 130, label %141
  ]

135:                                              ; preds = %128, %128
  %136 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %137 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %136, i32 0, i32 9
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %140 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %139, i32 0, i32 8
  store i32* %138, i32** %140, align 8
  br label %153

141:                                              ; preds = %128
  %142 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %143 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %146 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %145, i32 0, i32 8
  store i32* %144, i32** %146, align 8
  br label %153

147:                                              ; preds = %128
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @dev_warn(%struct.device* %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %152 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %151, i32 0, i32 8
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %147, %141, %135
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %156 = call i32 @devm_usb_get_phy(%struct.device* %154, i32 %155)
  %157 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %158 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 4
  %159 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %160 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @IS_ERR_OR_NULL(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %179, label %164

164:                                              ; preds = %153
  %165 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %166 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %165, i32 0, i32 7
  %167 = load i32, i32* @da9150_charger_otg_work, align 4
  %168 = call i32 @INIT_WORK(i32* %166, i32 %167)
  %169 = load i32, i32* @da9150_charger_otg_ncb, align 4
  %170 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %171 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  %173 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %174 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %177 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %176, i32 0, i32 5
  %178 = call i32 @usb_register_notifier(i32 %175, %struct.TYPE_3__* %177)
  br label %179

179:                                              ; preds = %164, %153
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = load i32, i32* @da9150_charger_chg_irq, align 4
  %182 = call i32 @da9150_charger_register_irq(%struct.platform_device* %180, i32 %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %217

186:                                              ; preds = %179
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = load i32, i32* @da9150_charger_tjunc_irq, align 4
  %189 = call i32 @da9150_charger_register_irq(%struct.platform_device* %187, i32 %188, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %214

193:                                              ; preds = %186
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = load i32, i32* @da9150_charger_vfault_irq, align 4
  %196 = call i32 @da9150_charger_register_irq(%struct.platform_device* %194, i32 %195, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %211

200:                                              ; preds = %193
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = load i32, i32* @da9150_charger_vbus_irq, align 4
  %203 = call i32 @da9150_charger_register_irq(%struct.platform_device* %201, i32 %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %208

207:                                              ; preds = %200
  store i32 0, i32* %2, align 4
  br label %258

208:                                              ; preds = %206
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = call i32 @da9150_charger_unregister_irq(%struct.platform_device* %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %211

211:                                              ; preds = %208, %199
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = call i32 @da9150_charger_unregister_irq(%struct.platform_device* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %192
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = call i32 @da9150_charger_unregister_irq(%struct.platform_device* %215, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %185
  %218 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %219 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @IS_ERR_OR_NULL(i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %217
  %224 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %225 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %228 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %227, i32 0, i32 5
  %229 = call i32 @usb_unregister_notifier(i32 %226, %struct.TYPE_3__* %228)
  br label %230

230:                                              ; preds = %223, %217
  br label %231

231:                                              ; preds = %230, %123
  %232 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %233 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %232, i32 0, i32 4
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @power_supply_unregister(i32* %234)
  br label %236

236:                                              ; preds = %231, %107
  %237 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %238 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @iio_channel_release(i32* %239)
  br label %241

241:                                              ; preds = %236, %91
  %242 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %243 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @iio_channel_release(i32* %244)
  br label %246

246:                                              ; preds = %241, %75
  %247 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %248 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @iio_channel_release(i32* %249)
  br label %251

251:                                              ; preds = %246, %59
  %252 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %253 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @iio_channel_release(i32* %254)
  br label %256

256:                                              ; preds = %251, %43
  %257 = load i32, i32* %8, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %256, %207, %20
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.da9150* @dev_get_drvdata(i32) #1

declare dso_local %struct.da9150_charger* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9150_charger*) #1

declare dso_local i8* @iio_channel_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @power_supply_register(%struct.device*, i32*, i32*) #1

declare dso_local i32 @da9150_reg_read(%struct.da9150*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_usb_get_phy(%struct.device*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_register_notifier(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @da9150_charger_register_irq(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @da9150_charger_unregister_irq(%struct.platform_device*, i8*) #1

declare dso_local i32 @usb_unregister_notifier(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @power_supply_unregister(i32*) #1

declare dso_local i32 @iio_channel_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
