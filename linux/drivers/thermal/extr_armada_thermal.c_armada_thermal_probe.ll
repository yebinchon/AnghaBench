; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_armada_thermal.c_armada_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.thermal_zone_device = type { i32 }
%struct.armada_thermal_sensor = type { i32, %struct.armada_thermal_priv* }
%struct.armada_thermal_priv = type { i32, i32, %struct.armada_thermal_data*, i32, i32, %struct.TYPE_13__* }
%struct.armada_thermal_data = type { i32, i32 (%struct.platform_device*, %struct.armada_thermal_priv*)* }
%struct.armada_drvdata = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.armada_thermal_priv*, %struct.thermal_zone_device* }
%struct.of_device_id = type { i64 }

@armada_thermal_id_table = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@legacy_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to register thermal zone device\0A\00", align 1
@LEGACY = common dso_local global i32 0, align 4
@SYSCON = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@armada_overheat_isr = common dso_local global i32 0, align 4
@armada_overheat_isr_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot request threaded IRQ %d\0A\00", align 1
@of_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Thermal sensor %d unavailable\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Overheat interrupt not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.armada_thermal_sensor*, align 8
  %6 = alloca %struct.armada_drvdata*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.armada_thermal_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @armada_thermal_id_table, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.of_device_id* @of_match_device(i32 %12, %struct.TYPE_13__* %14)
  store %struct.of_device_id* %15, %struct.of_device_id** %7, align 8
  %16 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %17 = icmp ne %struct.of_device_id* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %245

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @devm_kzalloc(%struct.TYPE_13__* %23, i32 32, i32 %24)
  %26 = bitcast i8* %25 to %struct.armada_thermal_priv*
  store %struct.armada_thermal_priv* %26, %struct.armada_thermal_priv** %8, align 8
  %27 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %28 = icmp ne %struct.armada_thermal_priv* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %245

32:                                               ; preds = %21
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @devm_kzalloc(%struct.TYPE_13__* %34, i32 24, i32 %35)
  %37 = bitcast i8* %36 to %struct.armada_drvdata*
  store %struct.armada_drvdata* %37, %struct.armada_drvdata** %6, align 8
  %38 = load %struct.armada_drvdata*, %struct.armada_drvdata** %6, align 8
  %39 = icmp ne %struct.armada_drvdata* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %245

43:                                               ; preds = %32
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %47 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %46, i32 0, i32 5
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %47, align 8
  %48 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %49 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.armada_thermal_data*
  %52 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %53 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %52, i32 0, i32 2
  store %struct.armada_thermal_data* %51, %struct.armada_thermal_data** %53, align 8
  %54 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %55 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %54, i32 0, i32 4
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.thermal_zone_device* @syscon_node_to_regmap(i32 %62)
  %64 = call i64 @IS_ERR(%struct.thermal_zone_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %43
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %69 = call i32 @armada_set_sane_name(%struct.platform_device* %67, %struct.armada_thermal_priv* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %72 = call i32 @armada_thermal_probe_legacy(%struct.platform_device* %70, %struct.armada_thermal_priv* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %2, align 4
  br label %245

77:                                               ; preds = %66
  %78 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %79 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %78, i32 0, i32 2
  %80 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %79, align 8
  %81 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %80, i32 0, i32 1
  %82 = load i32 (%struct.platform_device*, %struct.armada_thermal_priv*)*, i32 (%struct.platform_device*, %struct.armada_thermal_priv*)** %81, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %85 = call i32 %82(%struct.platform_device* %83, %struct.armada_thermal_priv* %84)
  %86 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %87 = call i32 @armada_wait_sensor_validity(%struct.armada_thermal_priv* %86)
  %88 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %89 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %92 = call %struct.thermal_zone_device* @thermal_zone_device_register(i32 %90, i32 0, i32 0, %struct.armada_thermal_priv* %91, i32* @legacy_ops, i32* null, i32 0, i32 0)
  store %struct.thermal_zone_device* %92, %struct.thermal_zone_device** %4, align 8
  %93 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %94 = call i64 @IS_ERR(%struct.thermal_zone_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %77
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %101 = call i32 @PTR_ERR(%struct.thermal_zone_device* %100)
  store i32 %101, i32* %2, align 4
  br label %245

102:                                              ; preds = %77
  %103 = load i32, i32* @LEGACY, align 4
  %104 = load %struct.armada_drvdata*, %struct.armada_drvdata** %6, align 8
  %105 = getelementptr inbounds %struct.armada_drvdata, %struct.armada_drvdata* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %107 = load %struct.armada_drvdata*, %struct.armada_drvdata** %6, align 8
  %108 = getelementptr inbounds %struct.armada_drvdata, %struct.armada_drvdata* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  store %struct.thermal_zone_device* %106, %struct.thermal_zone_device** %109, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = load %struct.armada_drvdata*, %struct.armada_drvdata** %6, align 8
  %112 = call i32 @platform_set_drvdata(%struct.platform_device* %110, %struct.armada_drvdata* %111)
  store i32 0, i32* %2, align 4
  br label %245

113:                                              ; preds = %43
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %116 = call i32 @armada_thermal_probe_syscon(%struct.platform_device* %114, %struct.armada_thermal_priv* %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %2, align 4
  br label %245

121:                                              ; preds = %113
  %122 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %123 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %122, i32 0, i32 0
  store i32 -1, i32* %123, align 8
  %124 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %125 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %124, i32 0, i32 2
  %126 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %125, align 8
  %127 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %126, i32 0, i32 1
  %128 = load i32 (%struct.platform_device*, %struct.armada_thermal_priv*)*, i32 (%struct.platform_device*, %struct.armada_thermal_priv*)** %127, align 8
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %131 = call i32 %128(%struct.platform_device* %129, %struct.armada_thermal_priv* %130)
  %132 = load i32, i32* @SYSCON, align 4
  %133 = load %struct.armada_drvdata*, %struct.armada_drvdata** %6, align 8
  %134 = getelementptr inbounds %struct.armada_drvdata, %struct.armada_drvdata* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %136 = load %struct.armada_drvdata*, %struct.armada_drvdata** %6, align 8
  %137 = getelementptr inbounds %struct.armada_drvdata, %struct.armada_drvdata* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store %struct.armada_thermal_priv* %135, %struct.armada_thermal_priv** %138, align 8
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load %struct.armada_drvdata*, %struct.armada_drvdata** %6, align 8
  %141 = call i32 @platform_set_drvdata(%struct.platform_device* %139, %struct.armada_drvdata* %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = call i32 @platform_get_irq(%struct.platform_device* %142, i32 0)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @EPROBE_DEFER, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %121
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %2, align 4
  br label %245

150:                                              ; preds = %121
  %151 = load i32, i32* %10, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %150
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @armada_overheat_isr, align 4
  %158 = load i32, i32* @armada_overheat_isr_thread, align 4
  %159 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %160 = call i32 @devm_request_threaded_irq(%struct.TYPE_13__* %155, i32 %156, i32 %157, i32 %158, i32 0, i32* null, %struct.armada_thermal_priv* %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %153
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load i32, i32* %10, align 4
  %167 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %2, align 4
  br label %245

169:                                              ; preds = %153
  br label %170

170:                                              ; preds = %169, %150
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %232, %170
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %174 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %173, i32 0, i32 2
  %175 = load %struct.armada_thermal_data*, %struct.armada_thermal_data** %174, align 8
  %176 = getelementptr inbounds %struct.armada_thermal_data, %struct.armada_thermal_data* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp sle i32 %172, %177
  br i1 %178, label %179, label %235

179:                                              ; preds = %171
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = load i32, i32* @GFP_KERNEL, align 4
  %183 = call i8* @devm_kzalloc(%struct.TYPE_13__* %181, i32 16, i32 %182)
  %184 = bitcast i8* %183 to %struct.armada_thermal_sensor*
  store %struct.armada_thermal_sensor* %184, %struct.armada_thermal_sensor** %5, align 8
  %185 = load %struct.armada_thermal_sensor*, %struct.armada_thermal_sensor** %5, align 8
  %186 = icmp ne %struct.armada_thermal_sensor* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %179
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %245

190:                                              ; preds = %179
  %191 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %192 = load %struct.armada_thermal_sensor*, %struct.armada_thermal_sensor** %5, align 8
  %193 = getelementptr inbounds %struct.armada_thermal_sensor, %struct.armada_thermal_sensor* %192, i32 0, i32 1
  store %struct.armada_thermal_priv* %191, %struct.armada_thermal_priv** %193, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.armada_thermal_sensor*, %struct.armada_thermal_sensor** %5, align 8
  %196 = getelementptr inbounds %struct.armada_thermal_sensor, %struct.armada_thermal_sensor* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load %struct.armada_thermal_sensor*, %struct.armada_thermal_sensor** %5, align 8
  %200 = getelementptr inbounds %struct.armada_thermal_sensor, %struct.armada_thermal_sensor* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.armada_thermal_sensor*, %struct.armada_thermal_sensor** %5, align 8
  %203 = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.TYPE_13__* %198, i32 %201, %struct.armada_thermal_sensor* %202, i32* @of_ops)
  store %struct.thermal_zone_device* %203, %struct.thermal_zone_device** %4, align 8
  %204 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %205 = call i64 @IS_ERR(%struct.thermal_zone_device* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %190
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @dev_info(%struct.TYPE_13__* %209, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %210)
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = load %struct.armada_thermal_sensor*, %struct.armada_thermal_sensor** %5, align 8
  %215 = call i32 @devm_kfree(%struct.TYPE_13__* %213, %struct.armada_thermal_sensor* %214)
  br label %232

216:                                              ; preds = %190
  %217 = load i32, i32* %10, align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %216
  %220 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %221 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %219
  %225 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %226 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %227 = load %struct.armada_thermal_sensor*, %struct.armada_thermal_sensor** %5, align 8
  %228 = getelementptr inbounds %struct.armada_thermal_sensor, %struct.armada_thermal_sensor* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @armada_configure_overheat_int(%struct.armada_thermal_priv* %225, %struct.thermal_zone_device* %226, i32 %229)
  br label %231

231:                                              ; preds = %224, %219, %216
  br label %232

232:                                              ; preds = %231, %207
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %171

235:                                              ; preds = %171
  %236 = load %struct.armada_thermal_priv*, %struct.armada_thermal_priv** %8, align 8
  %237 = getelementptr inbounds %struct.armada_thermal_priv, %struct.armada_thermal_priv* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %235
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 0
  %243 = call i32 @dev_warn(%struct.TYPE_13__* %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %244

244:                                              ; preds = %240, %235
  store i32 0, i32* %2, align 4
  br label %245

245:                                              ; preds = %244, %187, %163, %148, %119, %102, %96, %75, %40, %29, %18
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_13__*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local %struct.thermal_zone_device* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @armada_set_sane_name(%struct.platform_device*, %struct.armada_thermal_priv*) #1

declare dso_local i32 @armada_thermal_probe_legacy(%struct.platform_device*, %struct.armada_thermal_priv*) #1

declare dso_local i32 @armada_wait_sensor_validity(%struct.armada_thermal_priv*) #1

declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i32, i32, i32, %struct.armada_thermal_priv*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.armada_drvdata*) #1

declare dso_local i32 @armada_thermal_probe_syscon(%struct.platform_device*, %struct.armada_thermal_priv*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_13__*, i32, i32, i32, i32, i32*, %struct.armada_thermal_priv*) #1

declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.TYPE_13__*, i32, %struct.armada_thermal_sensor*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @devm_kfree(%struct.TYPE_13__*, %struct.armada_thermal_sensor*) #1

declare dso_local i32 @armada_configure_overheat_int(%struct.armada_thermal_priv*, %struct.thermal_zone_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
