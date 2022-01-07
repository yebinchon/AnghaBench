; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.wm831x = type { %struct.TYPE_10__*, i32 }
%struct.wm831x_pdata = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32 }
%struct.regulator_config = type { i32, %struct.wm831x_dcdc*, %struct.TYPE_9__*, i32 }
%struct.wm831x_dcdc = type { i32, i32, i32, i32, %struct.TYPE_11__, i64, i32, %struct.wm831x* }
%struct.TYPE_11__ = type { i32, i32, i8*, i8*, i32, i64, i32, i32, i32*, i8*, i8*, i64, i32, i32, i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"Probing DCDC%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No REG resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DCDC%d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"DC%dVDD\00", align 1
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@WM831X_BUCKV_MAX_SELECTOR = common dso_local global i64 0, align 8
@wm831x_buckv_ranges = common dso_local global i8* null, align 8
@wm831x_buckv_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@WM831X_DCDC_ENABLE = common dso_local global i32 0, align 4
@WM831X_DCDC_CONTROL_2 = common dso_local global i64 0, align 8
@WM831X_DC1_HC_THR_MASK = common dso_local global i32 0, align 4
@wm831x_dcdc_ilim = common dso_local global i8* null, align 8
@WM831X_DCDC_ON_CONFIG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to read ON VSEL: %d\0A\00", align 1
@WM831X_DC1_ON_VSEL_MASK = common dso_local global i32 0, align 4
@WM831X_DCDC_DVS_CONTROL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to read DVS VSEL: %d\0A\00", align 1
@WM831X_DC1_DVS_VSEL_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to register DCDC%d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@wm831x_dcdc_uv_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to request UV IRQ %d: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"HC\00", align 1
@wm831x_dcdc_oc_irq = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to request HC IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_buckv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_buckv_probe(%struct.platform_device* %0) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.wm831x* @dev_get_drvdata(i32 %15)
  store %struct.wm831x* %16, %struct.wm831x** %4, align 8
  %17 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %18 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = call %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_10__* %19)
  store %struct.wm831x_pdata* %20, %struct.wm831x_pdata** %5, align 8
  %21 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
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
  %46 = call i32 @dev_dbg(%struct.TYPE_10__* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.wm831x_dcdc* @devm_kzalloc(%struct.TYPE_10__* %48, i32 136, i32 %49)
  store %struct.wm831x_dcdc* %50, %struct.wm831x_dcdc** %8, align 8
  %51 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %52 = icmp ne %struct.wm831x_dcdc* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %330

56:                                               ; preds = %36
  %57 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %58 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %59 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %58, i32 0, i32 7
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
  %68 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %328

71:                                               ; preds = %56
  %72 = load %struct.resource*, %struct.resource** %9, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %76 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %75, i32 0, i32 5
  store i64 %74, i64* %76, align 8
  %77 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %78 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %84 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %87 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 14
  store i32 %85, i32* %88, align 8
  %89 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %90 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @snprintf(i32 %91, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %96 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %99 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 13
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %103 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %106 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %107 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 12
  store i32 %105, i32* %108, align 8
  %109 = load i64, i64* @WM831X_BUCKV_MAX_SELECTOR, align 8
  %110 = add nsw i64 %109, 1
  %111 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %112 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 11
  store i64 %110, i64* %113, align 8
  %114 = load i8*, i8** @wm831x_buckv_ranges, align 8
  %115 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %116 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 10
  store i8* %114, i8** %117, align 8
  %118 = load i8*, i8** @wm831x_buckv_ranges, align 8
  %119 = call i8* @ARRAY_SIZE(i8* %118)
  %120 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %121 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 9
  store i8* %119, i8** %122, align 8
  %123 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %124 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 8
  store i32* @wm831x_buckv_ops, i32** %125, align 8
  %126 = load i32, i32* @THIS_MODULE, align 4
  %127 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %128 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 7
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* @WM831X_DCDC_ENABLE, align 4
  %131 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %132 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 6
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* %7, align 4
  %135 = shl i32 1, %134
  %136 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %137 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %140 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @WM831X_DCDC_CONTROL_2, align 8
  %143 = add nsw i64 %141, %142
  %144 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %145 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 5
  store i64 %143, i64* %146, align 8
  %147 = load i32, i32* @WM831X_DC1_HC_THR_MASK, align 4
  %148 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %149 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 4
  store i32 %147, i32* %150, align 8
  %151 = load i8*, i8** @wm831x_dcdc_ilim, align 8
  %152 = call i8* @ARRAY_SIZE(i8* %151)
  %153 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %154 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  store i8* %152, i8** %155, align 8
  %156 = load i8*, i8** @wm831x_dcdc_ilim, align 8
  %157 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %158 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  store i8* %156, i8** %159, align 8
  %160 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %161 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %162 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @WM831X_DCDC_ON_CONFIG, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @wm831x_reg_read(%struct.wm831x* %160, i64 %165)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %71
  %170 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %171 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %170, i32 0, i32 0
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %172, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  br label %328

175:                                              ; preds = %71
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @WM831X_DC1_ON_VSEL_MASK, align 4
  %178 = and i32 %176, %177
  %179 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %180 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %182 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %183 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @WM831X_DCDC_DVS_CONTROL, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @wm831x_reg_read(%struct.wm831x* %181, i64 %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %175
  %191 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %192 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %191, i32 0, i32 0
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %193, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  br label %328

196:                                              ; preds = %175
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @WM831X_DC1_DVS_VSEL_MASK, align 4
  %199 = and i32 %197, %198
  %200 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %201 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %203 = icmp ne %struct.wm831x_pdata* %202, null
  br i1 %203, label %204, label %226

204:                                              ; preds = %196
  %205 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %206 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %205, i32 0, i32 1
  %207 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %207, i64 %209
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = icmp ne %struct.TYPE_9__* %211, null
  br i1 %212, label %213, label %226

213:                                              ; preds = %204
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %216 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %217 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %216, i32 0, i32 1
  %218 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %217, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %218, i64 %220
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @wm831x_buckv_dvs_init(%struct.platform_device* %214, %struct.wm831x_dcdc* %215, i32 %224)
  br label %226

226:                                              ; preds = %213, %204, %196
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32 %230, i32* %231, align 8
  %232 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %233 = icmp ne %struct.wm831x_pdata* %232, null
  br i1 %233, label %234, label %243

234:                                              ; preds = %226
  %235 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %236 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %235, i32 0, i32 1
  %237 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %237, i64 %239
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.TYPE_9__* %241, %struct.TYPE_9__** %242, align 8
  br label %243

243:                                              ; preds = %234, %226
  %244 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %245 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.wm831x_dcdc* %244, %struct.wm831x_dcdc** %245, align 8
  %246 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %247 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %248, i32* %249, align 8
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 1
  %252 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %253 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %252, i32 0, i32 4
  %254 = call i32 @devm_regulator_register(%struct.TYPE_10__* %251, %struct.TYPE_11__* %253, %struct.regulator_config* %6)
  %255 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %256 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 4
  %257 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %258 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @IS_ERR(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %243
  %263 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %264 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @PTR_ERR(i32 %265)
  store i32 %266, i32* %10, align 4
  %267 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %268 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %267, i32 0, i32 0
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = add nsw i32 %270, 1
  %272 = load i32, i32* %10, align 4
  %273 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %269, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %271, i32 %272)
  br label %328

274:                                              ; preds = %243
  %275 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = call i32 @platform_get_irq_byname(%struct.platform_device* %276, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %278 = call i32 @wm831x_irq(%struct.wm831x* %275, i32 %277)
  store i32 %278, i32* %11, align 4
  %279 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %280 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %279, i32 0, i32 1
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* @wm831x_dcdc_uv_irq, align 4
  %283 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %284 = load i32, i32* @IRQF_ONESHOT, align 4
  %285 = or i32 %283, %284
  %286 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %287 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %290 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %280, i32 %281, i32* null, i32 %282, i32 %285, i32 %288, %struct.wm831x_dcdc* %289)
  store i32 %290, i32* %10, align 4
  %291 = load i32, i32* %10, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %274
  %294 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %295 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %294, i32 0, i32 1
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* %10, align 4
  %298 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %295, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %296, i32 %297)
  br label %328

299:                                              ; preds = %274
  %300 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %301 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %302 = call i32 @platform_get_irq_byname(%struct.platform_device* %301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %303 = call i32 @wm831x_irq(%struct.wm831x* %300, i32 %302)
  store i32 %303, i32* %11, align 4
  %304 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %305 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %304, i32 0, i32 1
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* @wm831x_dcdc_oc_irq, align 4
  %308 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %309 = load i32, i32* @IRQF_ONESHOT, align 4
  %310 = or i32 %308, %309
  %311 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %312 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %315 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %305, i32 %306, i32* null, i32 %307, i32 %310, i32 %313, %struct.wm831x_dcdc* %314)
  store i32 %315, i32* %10, align 4
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %299
  %319 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %320 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %319, i32 0, i32 1
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* %10, align 4
  %323 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %320, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %321, i32 %322)
  br label %328

324:                                              ; preds = %299
  %325 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %326 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %327 = call i32 @platform_set_drvdata(%struct.platform_device* %325, %struct.wm831x_dcdc* %326)
  store i32 0, i32* %2, align 4
  br label %330

328:                                              ; preds = %318, %293, %262, %190, %169, %65
  %329 = load i32, i32* %10, align 4
  store i32 %329, i32* %2, align 4
  br label %330

330:                                              ; preds = %328, %324, %53
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local %struct.wm831x_dcdc* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i64) #1

declare dso_local i32 @wm831x_buckv_dvs_init(%struct.platform_device*, %struct.wm831x_dcdc*, i32) #1

declare dso_local i32 @devm_regulator_register(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wm831x_irq(%struct.wm831x*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i32, i32*, i32, i32, i32, %struct.wm831x_dcdc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_dcdc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
