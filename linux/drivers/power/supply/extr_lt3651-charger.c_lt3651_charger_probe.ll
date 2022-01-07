; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lt3651-charger.c_lt3651_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lt3651-charger.c_lt3651_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.power_supply_config = type { %struct.lt3651_charger*, %struct.TYPE_10__* }
%struct.lt3651_charger = type { i8*, i8*, i8*, i8*, %struct.power_supply_desc }
%struct.power_supply_desc = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"lltc,acpr\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to acquire acpr GPIO: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"lltc,fault\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to acquire fault GPIO: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"lltc,chrg\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to acquire chrg GPIO: %d\0A\00", align 1
@POWER_SUPPLY_TYPE_MAINS = common dso_local global i32 0, align 4
@lt3651_charger_properties = common dso_local global i32 0, align 4
@lt3651_charger_get_property = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to register power supply: %d\0A\00", align 1
@lt3651_charger_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to request acpr irq\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to request fault irq\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to request chrg irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lt3651_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lt3651_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.power_supply_config, align 8
  %5 = alloca %struct.lt3651_charger*, align 8
  %6 = alloca %struct.power_supply_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lt3651_charger* @devm_kzalloc(%struct.TYPE_11__* %10, i32 56, i32 %11)
  store %struct.lt3651_charger* %12, %struct.lt3651_charger** %5, align 8
  %13 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %14 = icmp ne %struct.lt3651_charger* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %245

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GPIOD_IN, align 4
  %22 = call i8* @devm_gpiod_get(%struct.TYPE_11__* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %24 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %26 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %18
  %31 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %32 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(%struct.TYPE_11__* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %245

40:                                               ; preds = %18
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* @GPIOD_IN, align 4
  %44 = call i8* @devm_gpiod_get_optional(%struct.TYPE_11__* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %46 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %48 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %54 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @dev_err(%struct.TYPE_11__* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %245

62:                                               ; preds = %40
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i32, i32* @GPIOD_IN, align 4
  %66 = call i8* @devm_gpiod_get_optional(%struct.TYPE_11__* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %68 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %70 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @IS_ERR(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %62
  %75 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %76 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @dev_err(%struct.TYPE_11__* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %245

84:                                               ; preds = %62
  %85 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %86 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %85, i32 0, i32 4
  store %struct.power_supply_desc* %86, %struct.power_supply_desc** %6, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.power_supply_desc*, %struct.power_supply_desc** %6, align 8
  %94 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @POWER_SUPPLY_TYPE_MAINS, align 4
  %96 = load %struct.power_supply_desc*, %struct.power_supply_desc** %6, align 8
  %97 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @lt3651_charger_properties, align 4
  %99 = load %struct.power_supply_desc*, %struct.power_supply_desc** %6, align 8
  %100 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @lt3651_charger_properties, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = load %struct.power_supply_desc*, %struct.power_supply_desc** %6, align 8
  %104 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @lt3651_charger_get_property, align 4
  %106 = load %struct.power_supply_desc*, %struct.power_supply_desc** %6, align 8
  %107 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 1
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %112, align 8
  %113 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %114 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 0
  store %struct.lt3651_charger* %113, %struct.lt3651_charger** %114, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.power_supply_desc*, %struct.power_supply_desc** %6, align 8
  %118 = call i8* @devm_power_supply_register(%struct.TYPE_11__* %116, %struct.power_supply_desc* %117, %struct.power_supply_config* %4)
  %119 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %120 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %122 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @IS_ERR(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %84
  %127 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %128 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @PTR_ERR(i8* %129)
  store i32 %130, i32* %7, align 4
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @dev_err(%struct.TYPE_11__* %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %245

136:                                              ; preds = %84
  %137 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %138 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %171

141:                                              ; preds = %136
  %142 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %143 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @gpiod_to_irq(i8* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %141
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @lt3651_charger_irq, align 4
  %153 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %154 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @dev_name(%struct.TYPE_11__* %157)
  %159 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %160 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @devm_request_any_context_irq(%struct.TYPE_11__* %150, i32 %151, i32 %152, i32 %155, i32 %158, i8* %161)
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %148, %141
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 @dev_warn(%struct.TYPE_11__* %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %170

170:                                              ; preds = %166, %163
  br label %171

171:                                              ; preds = %170, %136
  %172 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %173 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %206

176:                                              ; preds = %171
  %177 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %178 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @gpiod_to_irq(i8* %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %176
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @lt3651_charger_irq, align 4
  %188 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %189 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = call i32 @dev_name(%struct.TYPE_11__* %192)
  %194 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %195 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @devm_request_any_context_irq(%struct.TYPE_11__* %185, i32 %186, i32 %187, i32 %190, i32 %193, i8* %196)
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %183, %176
  %199 = load i32, i32* %7, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = call i32 @dev_warn(%struct.TYPE_11__* %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %205

205:                                              ; preds = %201, %198
  br label %206

206:                                              ; preds = %205, %171
  %207 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %208 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %241

211:                                              ; preds = %206
  %212 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %213 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @gpiod_to_irq(i8* %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp sge i32 %216, 0
  br i1 %217, label %218, label %233

218:                                              ; preds = %211
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @lt3651_charger_irq, align 4
  %223 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %224 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %225 = or i32 %223, %224
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = call i32 @dev_name(%struct.TYPE_11__* %227)
  %229 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %230 = getelementptr inbounds %struct.lt3651_charger, %struct.lt3651_charger* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @devm_request_any_context_irq(%struct.TYPE_11__* %220, i32 %221, i32 %222, i32 %225, i32 %228, i8* %231)
  store i32 %232, i32* %7, align 4
  br label %233

233:                                              ; preds = %218, %211
  %234 = load i32, i32* %7, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = call i32 @dev_warn(%struct.TYPE_11__* %238, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %240

240:                                              ; preds = %236, %233
  br label %241

241:                                              ; preds = %240, %206
  %242 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %243 = load %struct.lt3651_charger*, %struct.lt3651_charger** %5, align 8
  %244 = call i32 @platform_set_drvdata(%struct.platform_device* %242, %struct.lt3651_charger* %243)
  store i32 0, i32* %2, align 4
  br label %245

245:                                              ; preds = %241, %126, %74, %52, %30, %15
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.lt3651_charger* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i8* @devm_gpiod_get(%struct.TYPE_11__*, i8*, i32) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #2

declare dso_local i8* @devm_gpiod_get_optional(%struct.TYPE_11__*, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i8* @devm_power_supply_register(%struct.TYPE_11__*, %struct.power_supply_desc*, %struct.power_supply_config*) #2

declare dso_local i32 @gpiod_to_irq(i8*) #2

declare dso_local i32 @devm_request_any_context_irq(%struct.TYPE_11__*, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #2

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lt3651_charger*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
