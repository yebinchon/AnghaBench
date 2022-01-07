; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_boostp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_boostp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wm831x = type { %struct.TYPE_8__*, i32 }
%struct.wm831x_pdata = type { i32** }
%struct.regulator_config = type { i32, %struct.wm831x_dcdc*, i32*, i32 }
%struct.wm831x_dcdc = type { i32, i32, %struct.TYPE_9__, i32, %struct.wm831x* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Probing DCDC%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No REG resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DCDC%d\00", align 1
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@wm831x_boostp_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@WM831X_DCDC_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to register DCDC%d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@wm831x_dcdc_uv_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to request UV IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_boostp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_boostp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm831x_dcdc*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.wm831x* @dev_get_drvdata(i32 %15)
  store %struct.wm831x* %16, %struct.wm831x** %4, align 8
  %17 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %18 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_8__* %19)
  store %struct.wm831x_pdata* %20, %struct.wm831x_pdata** %5, align 8
  %21 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %26 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = call i32 @ARRAY_SIZE(i32** %27)
  %29 = srem i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @dev_dbg(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %36 = icmp eq %struct.wm831x_pdata* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %1
  %38 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %39 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %37, %1
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %194

49:                                               ; preds = %37
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 1
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.wm831x_dcdc* @devm_kzalloc(%struct.TYPE_8__* %51, i32 56, i32 %52)
  store %struct.wm831x_dcdc* %53, %struct.wm831x_dcdc** %8, align 8
  %54 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %55 = icmp ne %struct.wm831x_dcdc* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %194

59:                                               ; preds = %49
  %60 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %61 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %62 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %61, i32 0, i32 4
  store %struct.wm831x* %60, %struct.wm831x** %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load i32, i32* @IORESOURCE_REG, align 4
  %65 = call %struct.resource* @platform_get_resource(%struct.platform_device* %63, i32 %64, i32 0)
  store %struct.resource* %65, %struct.resource** %9, align 8
  %66 = load %struct.resource*, %struct.resource** %9, align 8
  %67 = icmp eq %struct.resource* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 1
  %71 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %194

74:                                               ; preds = %59
  %75 = load %struct.resource*, %struct.resource** %9, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %79 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %81 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @snprintf(i32 %82, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %87 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %90 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 6
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %94 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %97 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %98 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 5
  store i32 %96, i32* %99, align 8
  %100 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %101 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  store i32* @wm831x_boostp_ops, i32** %102, align 8
  %103 = load i32, i32* @THIS_MODULE, align 4
  %104 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %105 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @WM831X_DCDC_ENABLE, align 4
  %108 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %109 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = shl i32 1, %111
  %113 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %114 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32 %119, i32* %120, align 8
  %121 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %122 = icmp ne %struct.wm831x_pdata* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %74
  %124 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %125 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32* %130, i32** %131, align 8
  br label %132

132:                                              ; preds = %123, %74
  %133 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %134 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.wm831x_dcdc* %133, %struct.wm831x_dcdc** %134, align 8
  %135 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %136 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %137, i32* %138, align 8
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 1
  %141 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %142 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %141, i32 0, i32 2
  %143 = call i32 @devm_regulator_register(%struct.TYPE_8__* %140, %struct.TYPE_9__* %142, %struct.regulator_config* %6)
  %144 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %145 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %147 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @IS_ERR(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %132
  %152 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %153 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @PTR_ERR(i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %157 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %156, i32 0, i32 0
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32, i32* %10, align 4
  %162 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %2, align 4
  br label %194

164:                                              ; preds = %132
  %165 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = call i32 @platform_get_irq_byname(%struct.platform_device* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %168 = call i32 @wm831x_irq(%struct.wm831x* %165, i32 %167)
  store i32 %168, i32* %11, align 4
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 1
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @wm831x_dcdc_uv_irq, align 4
  %173 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %174 = load i32, i32* @IRQF_ONESHOT, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %177 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %180 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %170, i32 %171, i32* null, i32 %172, i32 %175, i32 %178, %struct.wm831x_dcdc* %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %164
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 1
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %10, align 4
  %188 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %185, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %186, i32 %187)
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %2, align 4
  br label %194

190:                                              ; preds = %164
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %193 = call i32 @platform_set_drvdata(%struct.platform_device* %191, %struct.wm831x_dcdc* %192)
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %190, %183, %151, %68, %56, %46
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local %struct.wm831x_dcdc* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @devm_regulator_register(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wm831x_irq(%struct.wm831x*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i32, i32*, i32, i32, i32, %struct.wm831x_dcdc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_dcdc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
