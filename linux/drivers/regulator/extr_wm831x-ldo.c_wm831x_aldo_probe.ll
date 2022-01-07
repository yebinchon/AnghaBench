; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-ldo.c_wm831x_aldo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-ldo.c_wm831x_aldo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wm831x = type { %struct.TYPE_8__*, i32 }
%struct.wm831x_pdata = type { i32, i32* }
%struct.regulator_config = type { i32, %struct.wm831x_ldo*, i32, i32 }
%struct.wm831x_ldo = type { i32, i32, %struct.TYPE_9__, i64, i32, %struct.wm831x* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i32, i32, i64, i32, i32*, i32, i32, i32, i32, i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Probing LDO%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No REG resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"LDO%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"LDO%dVDD\00", align 1
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@wm831x_aldo_ranges = common dso_local global i32 0, align 4
@wm831x_aldo_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@WM831X_LDO_ON_CONTROL = common dso_local global i64 0, align 8
@WM831X_LDO7_ON_VSEL_MASK = common dso_local global i32 0, align 4
@WM831X_LDO_ENABLE = common dso_local global i32 0, align 4
@WM831X_LDO7_SWI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to register LDO%d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@wm831x_ldo_uv_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to request UV IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_aldo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_aldo_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm831x_ldo*, align 8
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
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %23 = icmp ne %struct.wm831x_pdata* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %26 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %31 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 10
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %36

35:                                               ; preds = %24, %1
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @dev_dbg(%struct.TYPE_8__* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.wm831x_ldo* @devm_kzalloc(%struct.TYPE_8__* %48, i32 112, i32 %49)
  store %struct.wm831x_ldo* %50, %struct.wm831x_ldo** %8, align 8
  %51 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %52 = icmp ne %struct.wm831x_ldo* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %237

56:                                               ; preds = %36
  %57 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %58 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %59 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %58, i32 0, i32 5
  store %struct.wm831x* %57, %struct.wm831x** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load i32, i32* @IORESOURCE_REG, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %60, i32 %61, i32 0)
  store %struct.resource* %62, %struct.resource** %9, align 8
  %63 = load %struct.resource*, %struct.resource** %9, align 8
  %64 = icmp eq %struct.resource* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 1
  %68 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %235

71:                                               ; preds = %56
  %72 = load %struct.resource*, %struct.resource** %9, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %76 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %78 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %84 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %87 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 14
  store i32 %85, i32* %88, align 8
  %89 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %90 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @snprintf(i32 %91, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %96 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %99 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 13
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %103 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %106 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %107 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 12
  store i32 %105, i32* %108, align 8
  %109 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %110 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  store i32 32, i32* %111, align 4
  %112 = load i32, i32* @wm831x_aldo_ranges, align 4
  %113 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %114 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 11
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @wm831x_aldo_ranges, align 4
  %117 = call i32 @ARRAY_SIZE(i32 %116)
  %118 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %119 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 10
  store i32 %117, i32* %120, align 8
  %121 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %122 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 9
  store i32* @wm831x_aldo_ops, i32** %123, align 8
  %124 = load i32, i32* @THIS_MODULE, align 4
  %125 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %126 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 8
  store i32 %124, i32* %127, align 8
  %128 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %129 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @WM831X_LDO_ON_CONTROL, align 8
  %132 = add nsw i64 %130, %131
  %133 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %134 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 7
  store i64 %132, i64* %135, align 8
  %136 = load i32, i32* @WM831X_LDO7_ON_VSEL_MASK, align 4
  %137 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %138 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 6
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @WM831X_LDO_ENABLE, align 4
  %141 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %142 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 5
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* %7, align 4
  %145 = shl i32 1, %144
  %146 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %147 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  store i32 %145, i32* %148, align 8
  %149 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %150 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %153 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  store i64 %151, i64* %154, align 8
  %155 = load i32, i32* @WM831X_LDO7_SWI, align 4
  %156 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %157 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 3
  store i32 %155, i32* %158, align 4
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32 %162, i32* %163, align 4
  %164 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %165 = icmp ne %struct.wm831x_pdata* %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %71
  %167 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %168 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %173, i32* %174, align 8
  br label %175

175:                                              ; preds = %166, %71
  %176 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %177 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.wm831x_ldo* %176, %struct.wm831x_ldo** %177, align 8
  %178 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %179 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %180, i32* %181, align 8
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 1
  %184 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %185 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %184, i32 0, i32 2
  %186 = call i32 @devm_regulator_register(%struct.TYPE_8__* %183, %struct.TYPE_9__* %185, %struct.regulator_config* %6)
  %187 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %188 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %190 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @IS_ERR(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %175
  %195 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %196 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @PTR_ERR(i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %200 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %199, i32 0, i32 0
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %10, align 4
  %205 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %203, i32 %204)
  br label %235

206:                                              ; preds = %175
  %207 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = call i32 @platform_get_irq_byname(%struct.platform_device* %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %210 = call i32 @wm831x_irq(%struct.wm831x* %207, i32 %209)
  store i32 %210, i32* %11, align 4
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 1
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* @wm831x_ldo_uv_irq, align 4
  %215 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %216 = load i32, i32* @IRQF_ONESHOT, align 4
  %217 = or i32 %215, %216
  %218 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %219 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %222 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %212, i32 %213, i32* null, i32 %214, i32 %217, i32 %220, %struct.wm831x_ldo* %221)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %206
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 1
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %10, align 4
  %230 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %227, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %228, i32 %229)
  br label %235

231:                                              ; preds = %206
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %234 = call i32 @platform_set_drvdata(%struct.platform_device* %232, %struct.wm831x_ldo* %233)
  store i32 0, i32* %2, align 4
  br label %237

235:                                              ; preds = %225, %194, %65
  %236 = load i32, i32* %10, align 4
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %235, %231, %53
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local %struct.wm831x_ldo* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_regulator_register(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wm831x_irq(%struct.wm831x*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i32, i32*, i32, i32, i32, %struct.wm831x_ldo*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_ldo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
