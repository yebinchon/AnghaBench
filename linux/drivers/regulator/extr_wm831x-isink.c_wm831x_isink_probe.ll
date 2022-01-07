; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-isink.c_wm831x_isink_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-isink.c_wm831x_isink_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wm831x = type { %struct.TYPE_8__*, i32 }
%struct.wm831x_pdata = type { i32** }
%struct.wm831x_isink = type { i32, i32, %struct.TYPE_9__, i32, %struct.wm831x* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32**, i32, i32, i32*, i32 }
%struct.regulator_config = type { i32, %struct.wm831x_isink*, i32*, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Probing ISINK%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No REG resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ISINK%d\00", align 1
@wm831x_isink_ops = common dso_local global i32 0, align 4
@REGULATOR_CURRENT = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@wm831x_isinkv_values = common dso_local global i32** null, align 8
@WM831X_CS1_ISEL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to register ISINK%d: %d\0A\00", align 1
@wm831x_isink_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to request ISINK IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_isink_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_isink_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.wm831x_isink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_config, align 8
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
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %25 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32** %26)
  %28 = srem i32 %23, %27
  store i32 %28, i32* %7, align 4
  %29 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 32, i1 false)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @dev_dbg(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %33)
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
  br label %200

49:                                               ; preds = %37
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 1
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.wm831x_isink* @devm_kzalloc(%struct.TYPE_8__* %51, i32 72, i32 %52)
  store %struct.wm831x_isink* %53, %struct.wm831x_isink** %6, align 8
  %54 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %55 = icmp ne %struct.wm831x_isink* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %200

59:                                               ; preds = %49
  %60 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %61 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %62 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %61, i32 0, i32 4
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
  store i32 %73, i32* %10, align 4
  br label %198

74:                                               ; preds = %59
  %75 = load %struct.resource*, %struct.resource** %9, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %79 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %81 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @snprintf(i32 %82, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %87 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %90 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 8
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %94 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %97 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 7
  store i32* @wm831x_isink_ops, i32** %98, align 8
  %99 = load i32, i32* @REGULATOR_CURRENT, align 4
  %100 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %101 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 6
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @THIS_MODULE, align 4
  %104 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %105 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 5
  store i32 %103, i32* %106, align 8
  %107 = load i32**, i32*** @wm831x_isinkv_values, align 8
  %108 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %109 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  store i32** %107, i32*** %110, align 8
  %111 = load i32**, i32*** @wm831x_isinkv_values, align 8
  %112 = call i32 @ARRAY_SIZE(i32** %111)
  %113 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %114 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %117 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %120 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* @WM831X_CS1_ISEL_MASK, align 4
  %123 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %124 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store i32 %129, i32* %130, align 8
  %131 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %132 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %131, i32 0, i32 0
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store i32* %137, i32** %138, align 8
  %139 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %140 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.wm831x_isink* %139, %struct.wm831x_isink** %140, align 8
  %141 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %142 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i32 %143, i32* %144, align 8
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 1
  %147 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %148 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %147, i32 0, i32 2
  %149 = call i32 @devm_regulator_register(%struct.TYPE_8__* %146, %struct.TYPE_9__* %148, %struct.regulator_config* %8)
  %150 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %151 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %153 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @IS_ERR(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %74
  %158 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %159 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @PTR_ERR(i32 %160)
  store i32 %161, i32* %10, align 4
  %162 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %163 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %166, i32 %167)
  br label %198

169:                                              ; preds = %74
  %170 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = call i32 @platform_get_irq(%struct.platform_device* %171, i32 0)
  %173 = call i32 @wm831x_irq(%struct.wm831x* %170, i32 %172)
  store i32 %173, i32* %11, align 4
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 1
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @wm831x_isink_irq, align 4
  %178 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %179 = load i32, i32* @IRQF_ONESHOT, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %182 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %185 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %175, i32 %176, i32* null, i32 %177, i32 %180, i32 %183, %struct.wm831x_isink* %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %169
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 1
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %10, align 4
  %193 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %190, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %191, i32 %192)
  br label %198

194:                                              ; preds = %169
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = load %struct.wm831x_isink*, %struct.wm831x_isink** %6, align 8
  %197 = call i32 @platform_set_drvdata(%struct.platform_device* %195, %struct.wm831x_isink* %196)
  store i32 0, i32* %2, align 4
  br label %200

198:                                              ; preds = %188, %157, %68
  %199 = load i32, i32* %10, align 4
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %198, %194, %56, %46
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_8__*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local %struct.wm831x_isink* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @devm_regulator_register(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wm831x_irq(%struct.wm831x*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i32, i32*, i32, i32, i32, %struct.wm831x_isink*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_isink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
