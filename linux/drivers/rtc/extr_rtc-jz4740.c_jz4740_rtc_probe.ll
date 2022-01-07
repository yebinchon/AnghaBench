; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_19__, i32 }
%struct.jz4740_rtc = type { i32, i64, i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.resource = type { i32 }
%struct.platform_device_id = type { i32 }
%struct.of_device_id = type { i64 }

@jz4740_rtc_of_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get RTC clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to set wake irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to allocate rtc device: %d\0A\00", align 1
@jz4740_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@jz4740_rtc_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to request rtc irq: %d\0A\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"reset-pin-assert-time-ms\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"min-wakeup-pin-assert-time-ms\00", align 1
@dev_for_power_off = common dso_local global %struct.TYPE_19__* null, align 8
@jz4740_rtc_power_off = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Poweroff handler already present!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jz4740_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jz4740_rtc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.platform_device_id*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %10)
  store %struct.platform_device_id* %11, %struct.platform_device_id** %7, align 8
  %12 = load i32, i32* @jz4740_rtc_of_match, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.of_device_id* @of_match_device(i32 %12, %struct.TYPE_19__* %14)
  store %struct.of_device_id* %15, %struct.of_device_id** %8, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %9, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.jz4740_rtc* @devm_kzalloc(%struct.TYPE_19__* %21, i32 56, i32 %22)
  store %struct.jz4740_rtc* %23, %struct.jz4740_rtc** %5, align 8
  %24 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %25 = icmp ne %struct.jz4740_rtc* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %211

29:                                               ; preds = %1
  %30 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %31 = icmp ne %struct.of_device_id* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %38 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %45

39:                                               ; preds = %29
  %40 = load %struct.platform_device_id*, %struct.platform_device_id** %7, align 8
  %41 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %44 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i64 @platform_get_irq(%struct.platform_device* %46, i32 0)
  %48 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %49 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %51 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %211

57:                                               ; preds = %45
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 0)
  store %struct.resource* %60, %struct.resource** %6, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = call %struct.TYPE_18__* @devm_ioremap_resource(%struct.TYPE_19__* %62, %struct.resource* %63)
  %65 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %66 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %65, i32 0, i32 7
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %66, align 8
  %67 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %68 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %67, i32 0, i32 7
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = call i64 @IS_ERR(%struct.TYPE_18__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %57
  %73 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %74 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %73, i32 0, i32 7
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = call i32 @PTR_ERR(%struct.TYPE_18__* %75)
  store i32 %76, i32* %2, align 4
  br label %211

77:                                               ; preds = %57
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call %struct.TYPE_18__* @devm_clk_get(%struct.TYPE_19__* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %82 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %81, i32 0, i32 6
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %82, align 8
  %83 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %84 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %83, i32 0, i32 6
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = call i64 @IS_ERR(%struct.TYPE_18__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %77
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %93 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %92, i32 0, i32 6
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = call i32 @PTR_ERR(%struct.TYPE_18__* %94)
  store i32 %95, i32* %2, align 4
  br label %211

96:                                               ; preds = %77
  %97 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %98 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %97, i32 0, i32 5
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %102 = call i32 @platform_set_drvdata(%struct.platform_device* %100, %struct.jz4740_rtc* %101)
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @device_init_wakeup(%struct.TYPE_19__* %104, i32 1)
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %109 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @dev_pm_set_wake_irq(%struct.TYPE_19__* %107, i64 %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %96
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i32, i32* %4, align 4
  %118 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %211

120:                                              ; preds = %96
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call %struct.TYPE_18__* @devm_rtc_allocate_device(%struct.TYPE_19__* %122)
  %124 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %125 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %124, i32 0, i32 4
  store %struct.TYPE_18__* %123, %struct.TYPE_18__** %125, align 8
  %126 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %127 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %126, i32 0, i32 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = call i64 @IS_ERR(%struct.TYPE_18__* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %120
  %132 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %133 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %132, i32 0, i32 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = call i32 @PTR_ERR(%struct.TYPE_18__* %134)
  store i32 %135, i32* %4, align 4
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* %4, align 4
  %139 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %211

141:                                              ; preds = %120
  %142 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %143 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %142, i32 0, i32 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  store i32* @jz4740_rtc_ops, i32** %145, align 8
  %146 = load i32, i32* @U32_MAX, align 4
  %147 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %148 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %147, i32 0, i32 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  store i32 %146, i32* %150, align 8
  %151 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %152 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %151, i32 0, i32 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = call i32 @rtc_register_device(%struct.TYPE_18__* %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %141
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %211

159:                                              ; preds = %141
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %163 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @jz4740_rtc_irq, align 4
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %170 = call i32 @devm_request_irq(%struct.TYPE_19__* %161, i64 %164, i32 %165, i32 0, i32 %168, %struct.jz4740_rtc* %169)
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %159
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = load i32, i32* %4, align 4
  %177 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %4, align 4
  store i32 %178, i32* %2, align 4
  br label %211

179:                                              ; preds = %159
  %180 = load %struct.device_node*, %struct.device_node** %9, align 8
  %181 = icmp ne %struct.device_node* %180, null
  br i1 %181, label %182, label %210

182:                                              ; preds = %179
  %183 = load %struct.device_node*, %struct.device_node** %9, align 8
  %184 = call i64 @of_device_is_system_power_controller(%struct.device_node* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %210

186:                                              ; preds = %182
  %187 = load i64, i64* @pm_power_off, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %205, label %189

189:                                              ; preds = %186
  %190 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %191 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %190, i32 0, i32 2
  store i32 60, i32* %191, align 8
  %192 = load %struct.device_node*, %struct.device_node** %9, align 8
  %193 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %194 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %193, i32 0, i32 2
  %195 = call i32 @of_property_read_u32(%struct.device_node* %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %194)
  %196 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %197 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %196, i32 0, i32 3
  store i32 100, i32* %197, align 4
  %198 = load %struct.device_node*, %struct.device_node** %9, align 8
  %199 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %200 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %199, i32 0, i32 3
  %201 = call i32 @of_property_read_u32(%struct.device_node* %198, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32* %200)
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  store %struct.TYPE_19__* %203, %struct.TYPE_19__** @dev_for_power_off, align 8
  %204 = load i64, i64* @jz4740_rtc_power_off, align 8
  store i64 %204, i64* @pm_power_off, align 8
  br label %209

205:                                              ; preds = %186
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 @dev_warn(%struct.TYPE_19__* %207, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %209

209:                                              ; preds = %205, %189
  br label %210

210:                                              ; preds = %209, %182, %179
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %210, %173, %157, %131, %114, %88, %72, %54, %26
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_19__*) #1

declare dso_local %struct.jz4740_rtc* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @devm_ioremap_resource(%struct.TYPE_19__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_18__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @devm_clk_get(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.jz4740_rtc*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @dev_pm_set_wake_irq(%struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_18__* @devm_rtc_allocate_device(%struct.TYPE_19__*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_18__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_19__*, i64, i32, i32, i32, %struct.jz4740_rtc*) #1

declare dso_local i64 @of_device_is_system_power_controller(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_19__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
