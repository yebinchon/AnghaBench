; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_thermal.c_rcar_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rcar_thermal.c_rcar_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rcar_thermal_common = type { %struct.TYPE_8__*, i32, %struct.device*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.rcar_thermal_priv = type { i32, i32, %struct.TYPE_8__*, i32, i32, %struct.rcar_thermal_chip*, %struct.rcar_thermal_common*, %struct.TYPE_8__* }
%struct.rcar_thermal_chip = type { i32, i64, i64 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IDLE_INTERVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@rcar_thermal_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"irq request failed\0A \00", align 1
@rcar_thermal_work = common dso_local global i32 0, align 4
@rcar_thermal_zone_of_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rcar_thermal\00", align 1
@rcar_thermal_zone_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"can't register thermal zone\0A\00", align 1
@ENR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%d sensor probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rcar_thermal_common*, align 8
  %5 = alloca %struct.rcar_thermal_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.rcar_thermal_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.rcar_thermal_chip* @of_device_get_match_data(%struct.device* %17)
  store %struct.rcar_thermal_chip* %18, %struct.rcar_thermal_chip** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @IDLE_INTERVAL, align 4
  store i32 %21, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @devm_kzalloc(%struct.device* %22, i32 32, i32 %23)
  %25 = bitcast i8* %24 to %struct.rcar_thermal_common*
  store %struct.rcar_thermal_common* %25, %struct.rcar_thermal_common** %4, align 8
  %26 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %27 = icmp ne %struct.rcar_thermal_common* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %278

31:                                               ; preds = %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.rcar_thermal_common* %33)
  %35 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %36 = getelementptr inbounds %struct.rcar_thermal_common, %struct.rcar_thermal_common* %35, i32 0, i32 1
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %39 = getelementptr inbounds %struct.rcar_thermal_common, %struct.rcar_thermal_common* %38, i32 0, i32 3
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %43 = getelementptr inbounds %struct.rcar_thermal_common, %struct.rcar_thermal_common* %42, i32 0, i32 2
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @pm_runtime_enable(%struct.device* %44)
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @pm_runtime_get_sync(%struct.device* %46)
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %117, %31
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.rcar_thermal_chip*, %struct.rcar_thermal_chip** %9, align 8
  %51 = getelementptr inbounds %struct.rcar_thermal_chip, %struct.rcar_thermal_chip* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %120

54:                                               ; preds = %48
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load i32, i32* @IORESOURCE_IRQ, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call %struct.resource* @platform_get_resource(%struct.platform_device* %55, i32 %56, i32 %57)
  store %struct.resource* %58, %struct.resource** %8, align 8
  %59 = load %struct.resource*, %struct.resource** %8, align 8
  %60 = icmp ne %struct.resource* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %117

62:                                               ; preds = %54
  %63 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %64 = getelementptr inbounds %struct.rcar_thermal_common, %struct.rcar_thermal_common* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = icmp ne %struct.TYPE_8__* %65, null
  br i1 %66, label %90, label %67

67:                                               ; preds = %62
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load i32, i32* @IORESOURCE_MEM, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = call %struct.resource* @platform_get_resource(%struct.platform_device* %68, i32 %69, i32 %70)
  store %struct.resource* %72, %struct.resource** %7, align 8
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = load %struct.resource*, %struct.resource** %7, align 8
  %75 = call i8* @devm_ioremap_resource(%struct.device* %73, %struct.resource* %74)
  %76 = bitcast i8* %75 to %struct.TYPE_8__*
  %77 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %78 = getelementptr inbounds %struct.rcar_thermal_common, %struct.rcar_thermal_common* %77, i32 0, i32 0
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %78, align 8
  %79 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %80 = getelementptr inbounds %struct.rcar_thermal_common, %struct.rcar_thermal_common* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = call i64 @IS_ERR(%struct.TYPE_8__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %86 = getelementptr inbounds %struct.rcar_thermal_common, %struct.rcar_thermal_common* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.TYPE_8__* %87)
  store i32 %88, i32* %2, align 4
  br label %278

89:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %89, %62
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = load %struct.resource*, %struct.resource** %8, align 8
  %93 = getelementptr inbounds %struct.resource, %struct.resource* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @rcar_thermal_irq, align 4
  %96 = load i32, i32* @IRQF_SHARED, align 4
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = call i32 @dev_name(%struct.device* %97)
  %99 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %100 = call i32 @devm_request_irq(%struct.device* %91, i32 %94, i32 %95, i32 %96, i32 %98, %struct.rcar_thermal_common* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %274

106:                                              ; preds = %90
  %107 = load %struct.rcar_thermal_chip*, %struct.rcar_thermal_chip** %9, align 8
  %108 = getelementptr inbounds %struct.rcar_thermal_chip, %struct.rcar_thermal_chip* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32, i32* %11, align 4
  %113 = shl i32 1, %112
  %114 = load i32, i32* %14, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %111, %106
  br label %117

117:                                              ; preds = %116, %61
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %48

120:                                              ; preds = %48
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %254, %120
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = load i32, i32* @IORESOURCE_MEM, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = call %struct.resource* @platform_get_resource(%struct.platform_device* %122, i32 %123, i32 %124)
  store %struct.resource* %126, %struct.resource** %7, align 8
  %127 = load %struct.resource*, %struct.resource** %7, align 8
  %128 = icmp ne %struct.resource* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %121
  br label %257

130:                                              ; preds = %121
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i8* @devm_kzalloc(%struct.device* %131, i32 48, i32 %132)
  %134 = bitcast i8* %133 to %struct.rcar_thermal_priv*
  store %struct.rcar_thermal_priv* %134, %struct.rcar_thermal_priv** %5, align 8
  %135 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %136 = icmp ne %struct.rcar_thermal_priv* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %12, align 4
  br label %274

140:                                              ; preds = %130
  %141 = load %struct.device*, %struct.device** %6, align 8
  %142 = load %struct.resource*, %struct.resource** %7, align 8
  %143 = call i8* @devm_ioremap_resource(%struct.device* %141, %struct.resource* %142)
  %144 = bitcast i8* %143 to %struct.TYPE_8__*
  %145 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %146 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %145, i32 0, i32 7
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %146, align 8
  %147 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %148 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %147, i32 0, i32 7
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = call i64 @IS_ERR(%struct.TYPE_8__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %140
  %153 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %154 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %153, i32 0, i32 7
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = call i32 @PTR_ERR(%struct.TYPE_8__* %155)
  store i32 %156, i32* %12, align 4
  br label %274

157:                                              ; preds = %140
  %158 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %159 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %160 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %159, i32 0, i32 6
  store %struct.rcar_thermal_common* %158, %struct.rcar_thermal_common** %160, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %163 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.rcar_thermal_chip*, %struct.rcar_thermal_chip** %9, align 8
  %165 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %166 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %165, i32 0, i32 5
  store %struct.rcar_thermal_chip* %164, %struct.rcar_thermal_chip** %166, align 8
  %167 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %168 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %167, i32 0, i32 4
  %169 = call i32 @mutex_init(i32* %168)
  %170 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %171 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %170, i32 0, i32 1
  %172 = call i32 @INIT_LIST_HEAD(i32* %171)
  %173 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %174 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %173, i32 0, i32 3
  %175 = load i32, i32* @rcar_thermal_work, align 4
  %176 = call i32 @INIT_DELAYED_WORK(i32* %174, i32 %175)
  %177 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %178 = call i32 @rcar_thermal_update_temp(%struct.rcar_thermal_priv* %177)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %157
  br label %274

182:                                              ; preds = %157
  %183 = load %struct.rcar_thermal_chip*, %struct.rcar_thermal_chip** %9, align 8
  %184 = getelementptr inbounds %struct.rcar_thermal_chip, %struct.rcar_thermal_chip* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load %struct.device*, %struct.device** %6, align 8
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %191 = call %struct.TYPE_8__* @devm_thermal_zone_of_sensor_register(%struct.device* %188, i32 %189, %struct.rcar_thermal_priv* %190, i32* @rcar_thermal_zone_of_ops)
  %192 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %193 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %192, i32 0, i32 2
  store %struct.TYPE_8__* %191, %struct.TYPE_8__** %193, align 8
  br label %200

194:                                              ; preds = %182
  %195 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %196 = load i32, i32* %13, align 4
  %197 = call %struct.TYPE_8__* @thermal_zone_device_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 0, %struct.rcar_thermal_priv* %195, i32* @rcar_thermal_zone_ops, i32* null, i32 0, i32 %196)
  %198 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %199 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %198, i32 0, i32 2
  store %struct.TYPE_8__* %197, %struct.TYPE_8__** %199, align 8
  br label %200

200:                                              ; preds = %194, %187
  %201 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %202 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %201, i32 0, i32 2
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = call i64 @IS_ERR(%struct.TYPE_8__* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %200
  %207 = load %struct.device*, %struct.device** %6, align 8
  %208 = call i32 @dev_err(%struct.device* %207, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %209 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %210 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %209, i32 0, i32 2
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = call i32 @PTR_ERR(%struct.TYPE_8__* %211)
  store i32 %212, i32* %12, align 4
  %213 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %214 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %213, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %214, align 8
  br label %274

215:                                              ; preds = %200
  %216 = load %struct.rcar_thermal_chip*, %struct.rcar_thermal_chip** %9, align 8
  %217 = getelementptr inbounds %struct.rcar_thermal_chip, %struct.rcar_thermal_chip* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %215
  %221 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %222 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %221, i32 0, i32 2
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  store i32 0, i32* %226, align 4
  %227 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %228 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %227, i32 0, i32 2
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = call i32 @thermal_add_hwmon_sysfs(%struct.TYPE_8__* %229)
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %220
  br label %274

234:                                              ; preds = %220
  br label %235

235:                                              ; preds = %234, %215
  %236 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %237 = call i32 @rcar_thermal_irq_enable(%struct.rcar_thermal_priv* %236)
  %238 = load %struct.rcar_thermal_priv*, %struct.rcar_thermal_priv** %5, align 8
  %239 = getelementptr inbounds %struct.rcar_thermal_priv, %struct.rcar_thermal_priv* %238, i32 0, i32 1
  %240 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %241 = getelementptr inbounds %struct.rcar_thermal_common, %struct.rcar_thermal_common* %240, i32 0, i32 1
  %242 = call i32 @list_move_tail(i32* %239, i32* %241)
  %243 = load %struct.rcar_thermal_chip*, %struct.rcar_thermal_chip** %9, align 8
  %244 = getelementptr inbounds %struct.rcar_thermal_chip, %struct.rcar_thermal_chip* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %235
  %248 = load i32, i32* %11, align 4
  %249 = mul nsw i32 %248, 8
  %250 = shl i32 3, %249
  %251 = load i32, i32* %14, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %14, align 4
  br label %253

253:                                              ; preds = %247, %235
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %11, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %11, align 4
  br label %121

257:                                              ; preds = %129
  %258 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %259 = getelementptr inbounds %struct.rcar_thermal_common, %struct.rcar_thermal_common* %258, i32 0, i32 0
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = icmp ne %struct.TYPE_8__* %260, null
  br i1 %261, label %262, label %270

262:                                              ; preds = %257
  %263 = load i32, i32* %14, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = load %struct.rcar_thermal_common*, %struct.rcar_thermal_common** %4, align 8
  %267 = load i32, i32* @ENR, align 4
  %268 = load i32, i32* %14, align 4
  %269 = call i32 @rcar_thermal_common_write(%struct.rcar_thermal_common* %266, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %265, %262, %257
  %271 = load %struct.device*, %struct.device** %6, align 8
  %272 = load i32, i32* %11, align 4
  %273 = call i32 @dev_info(%struct.device* %271, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %272)
  store i32 0, i32* %2, align 4
  br label %278

274:                                              ; preds = %233, %206, %181, %152, %137, %103
  %275 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %276 = call i32 @rcar_thermal_remove(%struct.platform_device* %275)
  %277 = load i32, i32* %12, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %274, %270, %84, %28
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local %struct.rcar_thermal_chip* @of_device_get_match_data(%struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_thermal_common*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.rcar_thermal_common*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @rcar_thermal_update_temp(%struct.rcar_thermal_priv*) #1

declare dso_local %struct.TYPE_8__* @devm_thermal_zone_of_sensor_register(%struct.device*, i32, %struct.rcar_thermal_priv*, i32*) #1

declare dso_local %struct.TYPE_8__* @thermal_zone_device_register(i8*, i32, i32, %struct.rcar_thermal_priv*, i32*, i32*, i32, i32) #1

declare dso_local i32 @thermal_add_hwmon_sysfs(%struct.TYPE_8__*) #1

declare dso_local i32 @rcar_thermal_irq_enable(%struct.rcar_thermal_priv*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @rcar_thermal_common_write(%struct.rcar_thermal_common*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @rcar_thermal_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
