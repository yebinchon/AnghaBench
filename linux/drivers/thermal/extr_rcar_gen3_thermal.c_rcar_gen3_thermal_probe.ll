; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_gen3_thermal.c_rcar_gen3_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rcar_gen3_thermal_priv = type { i32, i32 (%struct.rcar_gen3_thermal_tsc*)*, %struct.rcar_gen3_thermal_tsc** }
%struct.rcar_gen3_thermal_tsc = type { i32, %struct.thermal_zone_device*, %struct.thermal_zone_device* }
%struct.thermal_zone_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@__const.rcar_gen3_thermal_probe.ptat = private unnamed_addr constant [3 x i32] [i32 2631, i32 1509, i32 435], align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@r8a7795es1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:ch%d\00", align 1
@rcar_gen3_thermal_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@TSC_MAX_NUM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@thcode = common dso_local global i32* null, align 8
@rcar_gen3_tz_of_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't register thermal zone\0A\00", align 1
@rcar_gen3_hwmon_action = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"TSC%d: Loaded %d trip points\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_gen3_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen3_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rcar_gen3_thermal_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.thermal_zone_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca %struct.rcar_gen3_thermal_tsc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32* @of_device_get_match_data(%struct.device* %17)
  store i32* %18, i32** %6, align 8
  %19 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([3 x i32]* @__const.rcar_gen3_thermal_probe.ptat to i8*), i64 12, i1 false)
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.device* %20, i32 24, i32 %21)
  %23 = bitcast i8* %22 to %struct.rcar_gen3_thermal_priv*
  store %struct.rcar_gen3_thermal_priv* %23, %struct.rcar_gen3_thermal_priv** %4, align 8
  %24 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %4, align 8
  %25 = icmp ne %struct.rcar_gen3_thermal_priv* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %221

29:                                               ; preds = %1
  %30 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %4, align 8
  %31 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %30, i32 0, i32 1
  store i32 (%struct.rcar_gen3_thermal_tsc*)* @rcar_gen3_thermal_init, i32 (%struct.rcar_gen3_thermal_tsc*)** %31, align 8
  %32 = load i32, i32* @r8a7795es1, align 4
  %33 = call i64 @soc_device_match(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %4, align 8
  %37 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %36, i32 0, i32 1
  store i32 (%struct.rcar_gen3_thermal_tsc*)* @rcar_gen3_thermal_init_r8a7795es1, i32 (%struct.rcar_gen3_thermal_tsc*)** %37, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %4, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.rcar_gen3_thermal_priv* %40)
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %78, %38
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %81

45:                                               ; preds = %42
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @platform_get_irq(%struct.platform_device* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %2, align 4
  br label %221

53:                                               ; preds = %45
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = call i32 @dev_name(%struct.device* %56)
  %58 = load i32, i32* %11, align 4
  %59 = call i8* @devm_kasprintf(%struct.device* %54, i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %221

65:                                               ; preds = %53
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @rcar_gen3_thermal_irq, align 4
  %69 = load i32, i32* @IRQF_ONESHOT, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %4, align 8
  %72 = call i32 @devm_request_threaded_irq(%struct.device* %66, i32 %67, i32* null, i32 %68, i32 %69, i8* %70, %struct.rcar_gen3_thermal_priv* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %2, align 4
  br label %221

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %42

81:                                               ; preds = %42
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = call i32 @pm_runtime_enable(%struct.device* %82)
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @pm_runtime_get_sync(%struct.device* %84)
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %200, %81
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @TSC_MAX_NUM, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %203

90:                                               ; preds = %86
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load i32, i32* @IORESOURCE_MEM, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call %struct.resource* @platform_get_resource(%struct.platform_device* %91, i32 %92, i32 %93)
  store %struct.resource* %94, %struct.resource** %7, align 8
  %95 = load %struct.resource*, %struct.resource** %7, align 8
  %96 = icmp ne %struct.resource* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %203

98:                                               ; preds = %90
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @devm_kzalloc(%struct.device* %99, i32 24, i32 %100)
  %102 = bitcast i8* %101 to %struct.rcar_gen3_thermal_tsc*
  store %struct.rcar_gen3_thermal_tsc* %102, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %103 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %104 = icmp ne %struct.rcar_gen3_thermal_tsc* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %217

108:                                              ; preds = %98
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load %struct.resource*, %struct.resource** %7, align 8
  %111 = call %struct.thermal_zone_device* @devm_ioremap_resource(%struct.device* %109, %struct.resource* %110)
  %112 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %113 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %112, i32 0, i32 2
  store %struct.thermal_zone_device* %111, %struct.thermal_zone_device** %113, align 8
  %114 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %115 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %114, i32 0, i32 2
  %116 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %115, align 8
  %117 = call i64 @IS_ERR(%struct.thermal_zone_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %108
  %120 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %121 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %120, i32 0, i32 2
  %122 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %121, align 8
  %123 = call i32 @PTR_ERR(%struct.thermal_zone_device* %122)
  store i32 %123, i32* %9, align 4
  br label %217

124:                                              ; preds = %108
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %127 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %129 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %4, align 8
  %130 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %129, i32 0, i32 2
  %131 = load %struct.rcar_gen3_thermal_tsc**, %struct.rcar_gen3_thermal_tsc*** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %131, i64 %133
  store %struct.rcar_gen3_thermal_tsc* %128, %struct.rcar_gen3_thermal_tsc** %134, align 8
  %135 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %4, align 8
  %136 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %135, i32 0, i32 1
  %137 = load i32 (%struct.rcar_gen3_thermal_tsc*)*, i32 (%struct.rcar_gen3_thermal_tsc*)** %136, align 8
  %138 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %139 = call i32 %137(%struct.rcar_gen3_thermal_tsc* %138)
  %140 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %142 = load i32*, i32** @thcode, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @rcar_gen3_thermal_calc_coefs(%struct.rcar_gen3_thermal_tsc* %140, i32* %141, i32 %146, i32 %148)
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %153 = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.device* %150, i32 %151, %struct.rcar_gen3_thermal_tsc* %152, i32* @rcar_gen3_tz_of_ops)
  store %struct.thermal_zone_device* %153, %struct.thermal_zone_device** %8, align 8
  %154 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %155 = call i64 @IS_ERR(%struct.thermal_zone_device* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %124
  %158 = load %struct.device*, %struct.device** %5, align 8
  %159 = call i32 @dev_err(%struct.device* %158, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %160 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %161 = call i32 @PTR_ERR(%struct.thermal_zone_device* %160)
  store i32 %161, i32* %9, align 4
  br label %217

162:                                              ; preds = %124
  %163 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %164 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %165 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %164, i32 0, i32 1
  store %struct.thermal_zone_device* %163, %struct.thermal_zone_device** %165, align 8
  %166 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %167 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %166, i32 0, i32 1
  %168 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %167, align 8
  %169 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 4
  %172 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %173 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %172, i32 0, i32 1
  %174 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %173, align 8
  %175 = call i32 @thermal_add_hwmon_sysfs(%struct.thermal_zone_device* %174)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %162
  br label %217

179:                                              ; preds = %162
  %180 = load %struct.device*, %struct.device** %5, align 8
  %181 = load i32, i32* @rcar_gen3_hwmon_action, align 4
  %182 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %183 = call i32 @devm_add_action_or_reset(%struct.device* %180, i32 %181, %struct.thermal_zone_device* %182)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %217

187:                                              ; preds = %179
  %188 = load %struct.rcar_gen3_thermal_tsc*, %struct.rcar_gen3_thermal_tsc** %14, align 8
  %189 = getelementptr inbounds %struct.rcar_gen3_thermal_tsc, %struct.rcar_gen3_thermal_tsc* %188, i32 0, i32 1
  %190 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %189, align 8
  %191 = call i32 @of_thermal_get_ntrips(%struct.thermal_zone_device* %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %217

195:                                              ; preds = %187
  %196 = load %struct.device*, %struct.device** %5, align 8
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @dev_info(%struct.device* %196, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %195
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %11, align 4
  br label %86

203:                                              ; preds = %97, %86
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %4, align 8
  %206 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %4, align 8
  %208 = getelementptr inbounds %struct.rcar_gen3_thermal_priv, %struct.rcar_gen3_thermal_priv* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %203
  %212 = load i32, i32* @ENODEV, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %9, align 4
  br label %217

214:                                              ; preds = %203
  %215 = load %struct.rcar_gen3_thermal_priv*, %struct.rcar_gen3_thermal_priv** %4, align 8
  %216 = call i32 @rcar_thermal_irq_set(%struct.rcar_gen3_thermal_priv* %215, i32 1)
  store i32 0, i32* %2, align 4
  br label %221

217:                                              ; preds = %211, %194, %186, %178, %157, %119, %105
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = call i32 @rcar_gen3_thermal_remove(%struct.platform_device* %218)
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %217, %214, %75, %62, %51, %26
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i32* @of_device_get_match_data(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @rcar_gen3_thermal_init(%struct.rcar_gen3_thermal_tsc*) #1

declare dso_local i64 @soc_device_match(i32) #1

declare dso_local i32 @rcar_gen3_thermal_init_r8a7795es1(%struct.rcar_gen3_thermal_tsc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_gen3_thermal_priv*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.rcar_gen3_thermal_priv*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.thermal_zone_device* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @rcar_gen3_thermal_calc_coefs(%struct.rcar_gen3_thermal_tsc*, i32*, i32, i32) #1

declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.device*, i32, %struct.rcar_gen3_thermal_tsc*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @thermal_add_hwmon_sysfs(%struct.thermal_zone_device*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.thermal_zone_device*) #1

declare dso_local i32 @of_thermal_get_ntrips(%struct.thermal_zone_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @rcar_thermal_irq_set(%struct.rcar_gen3_thermal_priv*, i32) #1

declare dso_local i32 @rcar_gen3_thermal_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
