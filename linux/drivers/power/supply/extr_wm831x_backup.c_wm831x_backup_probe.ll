; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_backup.c_wm831x_backup_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_backup.c_wm831x_backup_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wm831x = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.wm831x_pdata* }
%struct.wm831x_pdata = type { i32 }
%struct.wm831x_backup = type { i32, %struct.TYPE_7__, i32, %struct.wm831x* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wm831x-backup.%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"wm831x-backup\00", align 1
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@wm831x_backup_props = common dso_local global i32 0, align 4
@wm831x_backup_get_prop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_backup_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_backup_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.wm831x_backup*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.wm831x* @dev_get_drvdata(i32 %10)
  store %struct.wm831x* %11, %struct.wm831x** %4, align 8
  %12 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %13 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %15, align 8
  store %struct.wm831x_pdata* %16, %struct.wm831x_pdata** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.wm831x_backup* @devm_kzalloc(%struct.TYPE_6__* %18, i32 40, i32 %19)
  store %struct.wm831x_backup* %20, %struct.wm831x_backup** %6, align 8
  %21 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %22 = icmp eq %struct.wm831x_backup* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %90

26:                                               ; preds = %1
  %27 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %28 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %29 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %28, i32 0, i32 3
  store %struct.wm831x* %27, %struct.wm831x** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.wm831x_backup* %31)
  %33 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %34 = call i32 @wm831x_config_backup(%struct.wm831x* %33)
  %35 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %36 = icmp ne %struct.wm831x_pdata* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %39 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %44 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %47 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %45, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %55

50:                                               ; preds = %37, %26
  %51 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %52 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %53, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %42
  %56 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %57 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %60 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %63 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %64 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @wm831x_backup_props, align 4
  %67 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %68 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @wm831x_backup_props, align 4
  %71 = call i32 @ARRAY_SIZE(i32 %70)
  %72 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %73 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @wm831x_backup_get_prop, align 4
  %76 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %77 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %82 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %81, i32 0, i32 1
  %83 = call i32 @power_supply_register(%struct.TYPE_6__* %80, %struct.TYPE_7__* %82, i32* null)
  %84 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %85 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.wm831x_backup*, %struct.wm831x_backup** %6, align 8
  %87 = getelementptr inbounds %struct.wm831x_backup, %struct.wm831x_backup* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @PTR_ERR_OR_ZERO(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %55, %23
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_backup* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_backup*) #1

declare dso_local i32 @wm831x_config_backup(%struct.wm831x*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @power_supply_register(%struct.TYPE_6__*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
