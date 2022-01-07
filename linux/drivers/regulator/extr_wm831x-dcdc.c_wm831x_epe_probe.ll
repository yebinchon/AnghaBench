; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_epe_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_epe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wm831x = type { i32, i32 }
%struct.wm831x_pdata = type { i32* }
%struct.regulator_config = type { i32, %struct.wm831x_dcdc*, i32, i32 }
%struct.wm831x_dcdc = type { i32, %struct.TYPE_6__, i32, %struct.wm831x* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Probing EPE%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EPE%d\00", align 1
@WM831X_EPE_BASE = common dso_local global i32 0, align 4
@wm831x_epe_ops = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@WM831X_DCDC_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register EPE%d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_epe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_epe_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm831x_dcdc*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.wm831x* @dev_get_drvdata(i32 %13)
  store %struct.wm831x* %14, %struct.wm831x** %4, align 8
  %15 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %16 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.wm831x_pdata* @dev_get_platdata(i32 %17)
  store %struct.wm831x_pdata* %18, %struct.wm831x_pdata** %5, align 8
  %19 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %24 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = srem i32 %22, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @dev_dbg(%struct.TYPE_5__* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.wm831x_dcdc* @devm_kzalloc(%struct.TYPE_5__* %34, i32 64, i32 %35)
  store %struct.wm831x_dcdc* %36, %struct.wm831x_dcdc** %8, align 8
  %37 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %38 = icmp ne %struct.wm831x_dcdc* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %140

42:                                               ; preds = %1
  %43 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %44 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %45 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %44, i32 0, i32 3
  store %struct.wm831x* %43, %struct.wm831x** %45, align 8
  %46 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %47 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @snprintf(i32 %48, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %53 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %56 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 6
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @WM831X_EPE_BASE, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %62 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %65 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  store i32* @wm831x_epe_ops, i32** %66, align 8
  %67 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %68 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %69 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @THIS_MODULE, align 4
  %72 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %73 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @WM831X_DCDC_ENABLE, align 4
  %76 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %77 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %80 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 1, %82
  %84 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %85 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32 %90, i32* %91, align 4
  %92 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %93 = icmp ne %struct.wm831x_pdata* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %42
  %95 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %96 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %101, i32* %102, align 8
  br label %103

103:                                              ; preds = %94, %42
  %104 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %105 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.wm831x_dcdc* %104, %struct.wm831x_dcdc** %105, align 8
  %106 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %107 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %108, i32* %109, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 1
  %112 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %113 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %112, i32 0, i32 1
  %114 = call i32 @devm_regulator_register(%struct.TYPE_5__* %111, %struct.TYPE_6__* %113, %struct.regulator_config* %6)
  %115 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %116 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %118 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %103
  %123 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %124 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @PTR_ERR(i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %128 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %132)
  br label %138

134:                                              ; preds = %103
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %8, align 8
  %137 = call i32 @platform_set_drvdata(%struct.platform_device* %135, %struct.wm831x_dcdc* %136)
  store i32 0, i32* %2, align 4
  br label %140

138:                                              ; preds = %122
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %134, %39
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local %struct.wm831x_dcdc* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @devm_regulator_register(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_dcdc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
