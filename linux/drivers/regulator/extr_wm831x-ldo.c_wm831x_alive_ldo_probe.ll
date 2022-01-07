; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-ldo.c_wm831x_alive_ldo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-ldo.c_wm831x_alive_ldo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wm831x = type { i32, i32 }
%struct.wm831x_pdata = type { i32, i32* }
%struct.regulator_config = type { i32, %struct.wm831x_ldo*, i32, i32 }
%struct.wm831x_ldo = type { i32, %struct.TYPE_7__, i64, i32, i32, %struct.wm831x* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32*, i64, i32, i32, i32 }
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
@WM831X_ALIVE_LDO_MAX_SELECTOR = common dso_local global i64 0, align 8
@wm831x_alive_ldo_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@WM831X_ALIVE_LDO_ON_CONTROL = common dso_local global i64 0, align 8
@WM831X_LDO11_ON_VSEL_MASK = common dso_local global i32 0, align 4
@WM831X_LDO_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to register LDO%d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_alive_ldo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_alive_ldo_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm831x_ldo*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wm831x* @dev_get_drvdata(i32 %14)
  store %struct.wm831x* %15, %struct.wm831x** %4, align 8
  %16 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %17 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.wm831x_pdata* @dev_get_platdata(i32 %18)
  store %struct.wm831x_pdata* %19, %struct.wm831x_pdata** %5, align 8
  %20 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %22 = icmp ne %struct.wm831x_pdata* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %25 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %30 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 10
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %35

34:                                               ; preds = %23, %1
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 1
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @dev_dbg(%struct.TYPE_6__* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 1
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.wm831x_ldo* @devm_kzalloc(%struct.TYPE_6__* %47, i32 112, i32 %48)
  store %struct.wm831x_ldo* %49, %struct.wm831x_ldo** %8, align 8
  %50 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %51 = icmp ne %struct.wm831x_ldo* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %205

55:                                               ; preds = %35
  %56 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %57 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %58 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %57, i32 0, i32 5
  store %struct.wm831x* %56, %struct.wm831x** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load i32, i32* @IORESOURCE_REG, align 4
  %61 = call %struct.resource* @platform_get_resource(%struct.platform_device* %59, i32 %60, i32 0)
  store %struct.resource* %61, %struct.resource** %9, align 8
  %62 = load %struct.resource*, %struct.resource** %9, align 8
  %63 = icmp eq %struct.resource* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 1
  %67 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %203

70:                                               ; preds = %55
  %71 = load %struct.resource*, %struct.resource** %9, align 8
  %72 = getelementptr inbounds %struct.resource, %struct.resource* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %75 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %77 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @snprintf(i32 %78, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %83 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %86 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 13
  store i32 %84, i32* %87, align 8
  %88 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %89 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @snprintf(i32 %90, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %95 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %98 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 12
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %102 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %105 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %106 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 11
  store i32 %104, i32* %107, align 8
  %108 = load i64, i64* @WM831X_ALIVE_LDO_MAX_SELECTOR, align 8
  %109 = add nsw i64 %108, 1
  %110 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %111 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 10
  store i64 %109, i64* %112, align 8
  %113 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %114 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 9
  store i32* @wm831x_alive_ldo_ops, i32** %115, align 8
  %116 = load i32, i32* @THIS_MODULE, align 4
  %117 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %118 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 8
  store i32 %116, i32* %119, align 8
  %120 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %121 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @WM831X_ALIVE_LDO_ON_CONTROL, align 8
  %124 = add nsw i64 %122, %123
  %125 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %126 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 7
  store i64 %124, i64* %127, align 8
  %128 = load i32, i32* @WM831X_LDO11_ON_VSEL_MASK, align 4
  %129 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %130 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 6
  store i32 %128, i32* %131, align 8
  %132 = load i32, i32* @WM831X_LDO_ENABLE, align 4
  %133 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %134 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 5
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* %7, align 4
  %137 = shl i32 1, %136
  %138 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %139 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %142 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  store i32 800000, i32* %143, align 8
  %144 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %145 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 3
  store i32 50000, i32* %146, align 4
  %147 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %148 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  store i32 1000, i32* %149, align 8
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32 %153, i32* %154, align 4
  %155 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %156 = icmp ne %struct.wm831x_pdata* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %70
  %158 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %159 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %164, i32* %165, align 8
  br label %166

166:                                              ; preds = %157, %70
  %167 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %168 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.wm831x_ldo* %167, %struct.wm831x_ldo** %168, align 8
  %169 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %170 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %171, i32* %172, align 8
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 1
  %175 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %176 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %175, i32 0, i32 1
  %177 = call i32 @devm_regulator_register(%struct.TYPE_6__* %174, %struct.TYPE_7__* %176, %struct.regulator_config* %6)
  %178 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %179 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %181 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @IS_ERR(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %166
  %186 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %187 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @PTR_ERR(i32 %188)
  store i32 %189, i32* %10, align 4
  %190 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %191 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to %struct.TYPE_6__*
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* %10, align 4
  %198 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %196, i32 %197)
  br label %203

199:                                              ; preds = %166
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %8, align 8
  %202 = call i32 @platform_set_drvdata(%struct.platform_device* %200, %struct.wm831x_ldo* %201)
  store i32 0, i32* %2, align 4
  br label %205

203:                                              ; preds = %185, %64
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %199, %52
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local %struct.wm831x_ldo* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @devm_regulator_register(%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_ldo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
