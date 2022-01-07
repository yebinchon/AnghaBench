; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_buckp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wm831x = type { %struct.TYPE_8__*, i32 }
%struct.wm831x_pdata = type { i32, i32* }
%struct.regulator_config = type { i32, %struct.wm831x_dcdc*, i32, i32 }
%struct.wm831x_dcdc = type { i32, i32, %struct.TYPE_9__, i64, i32, %struct.wm831x* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32*, i64, i32, i32, i32 }
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
@WM831X_BUCKP_MAX_SELECTOR = common dso_local global i64 0, align 8
@wm831x_buckp_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@WM831X_DCDC_ON_CONFIG = common dso_local global i64 0, align 8
@WM831X_DC3_ON_VSEL_MASK = common dso_local global i32 0, align 4
@WM831X_DCDC_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to register DCDC%d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@wm831x_dcdc_uv_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to request UV IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_buckp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_buckp_probe(%struct.platform_device* %0) #0 {
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
  %46 = call i32 @dev_dbg(%struct.TYPE_8__* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.wm831x_dcdc* @devm_kzalloc(%struct.TYPE_8__* %48, i32 104, i32 %49)
  store %struct.wm831x_dcdc* %50, %struct.wm831x_dcdc** %8, align 8
  %51 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %52 = icmp ne %struct.wm831x_dcdc* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %226

56:                                               ; preds = %36
  %57 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %58 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %59 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %58, i32 0, i32 5
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
  br label %224

71:                                               ; preds = %56
  %72 = load %struct.resource*, %struct.resource** %9, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %76 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %78 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %84 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %87 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 12
  store i32 %85, i32* %88, align 8
  %89 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %90 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @snprintf(i32 %91, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %96 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %99 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 11
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %103 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %106 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %107 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 10
  store i32 %105, i32* %108, align 8
  %109 = load i64, i64* @WM831X_BUCKP_MAX_SELECTOR, align 8
  %110 = add nsw i64 %109, 1
  %111 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %112 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 9
  store i64 %110, i64* %113, align 8
  %114 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %115 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 8
  store i32* @wm831x_buckp_ops, i32** %116, align 8
  %117 = load i32, i32* @THIS_MODULE, align 4
  %118 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %119 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 7
  store i32 %117, i32* %120, align 8
  %121 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %122 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @WM831X_DCDC_ON_CONFIG, align 8
  %125 = add nsw i64 %123, %124
  %126 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %127 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 6
  store i64 %125, i64* %128, align 8
  %129 = load i32, i32* @WM831X_DC3_ON_VSEL_MASK, align 4
  %130 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %131 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 5
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @WM831X_DCDC_ENABLE, align 4
  %134 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %135 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  store i32 %133, i32* %136, align 8
  %137 = load i32, i32* %7, align 4
  %138 = shl i32 1, %137
  %139 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %140 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  %142 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %143 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  store i32 850000, i32* %144, align 8
  %145 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %146 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 3
  store i32 25000, i32* %147, align 4
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32 %151, i32* %152, align 4
  %153 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %154 = icmp ne %struct.wm831x_pdata* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %71
  %156 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %157 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %162, i32* %163, align 8
  br label %164

164:                                              ; preds = %155, %71
  %165 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %166 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.wm831x_dcdc* %165, %struct.wm831x_dcdc** %166, align 8
  %167 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %168 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %169, i32* %170, align 8
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 1
  %173 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %174 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %173, i32 0, i32 2
  %175 = call i32 @devm_regulator_register(%struct.TYPE_8__* %172, %struct.TYPE_9__* %174, %struct.regulator_config* %6)
  %176 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %177 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %179 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @IS_ERR(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %164
  %184 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %185 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @PTR_ERR(i32 %186)
  store i32 %187, i32* %10, align 4
  %188 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %189 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %188, i32 0, i32 0
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  %193 = load i32, i32* %10, align 4
  %194 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %192, i32 %193)
  br label %224

195:                                              ; preds = %164
  %196 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = call i32 @platform_get_irq_byname(%struct.platform_device* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %199 = call i32 @wm831x_irq(%struct.wm831x* %196, i32 %198)
  store i32 %199, i32* %11, align 4
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 1
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @wm831x_dcdc_uv_irq, align 4
  %204 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %205 = load i32, i32* @IRQF_ONESHOT, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %208 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %211 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %201, i32 %202, i32* null, i32 %203, i32 %206, i32 %209, %struct.wm831x_dcdc* %210)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %195
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 1
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %10, align 4
  %219 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %216, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %217, i32 %218)
  br label %224

220:                                              ; preds = %195
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %223 = call i32 @platform_set_drvdata(%struct.platform_device* %221, %struct.wm831x_dcdc* %222)
  store i32 0, i32* %2, align 4
  br label %226

224:                                              ; preds = %214, %183, %65
  %225 = load i32, i32* %10, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %224, %220, %53
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

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
