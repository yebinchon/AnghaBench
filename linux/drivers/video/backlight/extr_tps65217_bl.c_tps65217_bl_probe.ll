; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tps65217_bl.c_tps65217_bl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tps65217_bl.c_tps65217_bl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tps65217 = type { i32 }
%struct.tps65217_bl = type { i32, %struct.tps65217_bl_pdata*, %struct.TYPE_7__*, %struct.tps65217* }
%struct.tps65217_bl_pdata = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.backlight_properties = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@tps65217_bl_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"registration of backlight device failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65217_bl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65217_bl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps65217*, align 8
  %6 = alloca %struct.tps65217_bl*, align 8
  %7 = alloca %struct.tps65217_bl_pdata*, align 8
  %8 = alloca %struct.backlight_properties, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tps65217* @dev_get_drvdata(i32 %12)
  store %struct.tps65217* %13, %struct.tps65217** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call %struct.tps65217_bl_pdata* @tps65217_bl_parse_dt(%struct.platform_device* %14)
  store %struct.tps65217_bl_pdata* %15, %struct.tps65217_bl_pdata** %7, align 8
  %16 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %7, align 8
  %17 = call i64 @IS_ERR(%struct.tps65217_bl_pdata* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %7, align 8
  %21 = call i32 @PTR_ERR(%struct.tps65217_bl_pdata* %20)
  store i32 %21, i32* %2, align 4
  br label %97

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.tps65217_bl* @devm_kzalloc(%struct.TYPE_7__* %24, i32 32, i32 %25)
  store %struct.tps65217_bl* %26, %struct.tps65217_bl** %6, align 8
  %27 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %28 = icmp eq %struct.tps65217_bl* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %97

32:                                               ; preds = %22
  %33 = load %struct.tps65217*, %struct.tps65217** %5, align 8
  %34 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %35 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %34, i32 0, i32 3
  store %struct.tps65217* %33, %struct.tps65217** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 1
  %38 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %39 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %38, i32 0, i32 2
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %41 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %43 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %7, align 8
  %44 = call i32 @tps65217_bl_hw_init(%struct.tps65217_bl* %42, %struct.tps65217_bl_pdata* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %97

49:                                               ; preds = %32
  %50 = call i32 @memset(%struct.backlight_properties* %8, i32 0, i32 8)
  %51 = load i32, i32* @BACKLIGHT_RAW, align 4
  %52 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  store i32 100, i32* %53, align 4
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 1
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %60 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %63 = call %struct.tps65217_bl_pdata* @devm_backlight_device_register(%struct.TYPE_7__* %55, i32 %58, %struct.TYPE_7__* %61, %struct.tps65217_bl* %62, i32* @tps65217_bl_ops, %struct.backlight_properties* %8)
  %64 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %65 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %64, i32 0, i32 1
  store %struct.tps65217_bl_pdata* %63, %struct.tps65217_bl_pdata** %65, align 8
  %66 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %67 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %66, i32 0, i32 1
  %68 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %67, align 8
  %69 = call i64 @IS_ERR(%struct.tps65217_bl_pdata* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %49
  %72 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %73 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @dev_err(%struct.TYPE_7__* %74, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %78 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %77, i32 0, i32 1
  %79 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %78, align 8
  %80 = call i32 @PTR_ERR(%struct.tps65217_bl_pdata* %79)
  store i32 %80, i32* %2, align 4
  br label %97

81:                                               ; preds = %49
  %82 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %7, align 8
  %83 = getelementptr inbounds %struct.tps65217_bl_pdata, %struct.tps65217_bl_pdata* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %86 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %85, i32 0, i32 1
  %87 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %86, align 8
  %88 = getelementptr inbounds %struct.tps65217_bl_pdata, %struct.tps65217_bl_pdata* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 4
  %90 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %91 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %90, i32 0, i32 1
  %92 = load %struct.tps65217_bl_pdata*, %struct.tps65217_bl_pdata** %91, align 8
  %93 = call i32 @backlight_update_status(%struct.tps65217_bl_pdata* %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.tps65217_bl*, %struct.tps65217_bl** %6, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %94, %struct.tps65217_bl* %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %81, %71, %47, %29, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.tps65217* @dev_get_drvdata(i32) #1

declare dso_local %struct.tps65217_bl_pdata* @tps65217_bl_parse_dt(%struct.platform_device*) #1

declare dso_local i64 @IS_ERR(%struct.tps65217_bl_pdata*) #1

declare dso_local i32 @PTR_ERR(%struct.tps65217_bl_pdata*) #1

declare dso_local %struct.tps65217_bl* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @tps65217_bl_hw_init(%struct.tps65217_bl*, %struct.tps65217_bl_pdata*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.tps65217_bl_pdata* @devm_backlight_device_register(%struct.TYPE_7__*, i32, %struct.TYPE_7__*, %struct.tps65217_bl*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @backlight_update_status(%struct.tps65217_bl_pdata*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps65217_bl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
