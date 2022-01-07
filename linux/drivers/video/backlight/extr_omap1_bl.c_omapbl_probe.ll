; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_omap1_bl.c_omapbl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_omap1_bl.c_omapbl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.backlight_properties = type { i32, i32 }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.omap_backlight = type { i32*, %struct.omap_backlight_config*, i64, i32 }
%struct.omap_backlight_config = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@OMAPBL_MAX_INTENSITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"omap-bl\00", align 1
@omapbl_ops = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@PWL = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"OMAP LCD backlight initialised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omapbl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapbl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca %struct.omap_backlight*, align 8
  %7 = alloca %struct.omap_backlight_config*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.omap_backlight_config* @dev_get_platdata(i32* %9)
  store %struct.omap_backlight_config* %10, %struct.omap_backlight_config** %7, align 8
  %11 = load %struct.omap_backlight_config*, %struct.omap_backlight_config** %7, align 8
  %12 = icmp ne %struct.omap_backlight_config* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %81

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.omap_backlight* @devm_kzalloc(i32* %18, i32 32, i32 %19)
  store %struct.omap_backlight* %20, %struct.omap_backlight** %6, align 8
  %21 = load %struct.omap_backlight*, %struct.omap_backlight** %6, align 8
  %22 = icmp ne %struct.omap_backlight* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %81

30:                                               ; preds = %16
  %31 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 8)
  %32 = load i32, i32* @BACKLIGHT_RAW, align 4
  %33 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @OMAPBL_MAX_INTENSITY, align 4
  %35 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.omap_backlight*, %struct.omap_backlight** %6, align 8
  %41 = call %struct.backlight_device* @devm_backlight_device_register(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %39, %struct.omap_backlight* %40, i32* @omapbl_ops, %struct.backlight_properties* %4)
  store %struct.backlight_device* %41, %struct.backlight_device** %5, align 8
  %42 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %43 = call i64 @IS_ERR(%struct.backlight_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %47 = call i32 @PTR_ERR(%struct.backlight_device* %46)
  store i32 %47, i32* %2, align 4
  br label %81

48:                                               ; preds = %30
  %49 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %50 = load %struct.omap_backlight*, %struct.omap_backlight** %6, align 8
  %51 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.omap_backlight*, %struct.omap_backlight** %6, align 8
  %53 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.omap_backlight_config*, %struct.omap_backlight_config** %7, align 8
  %55 = load %struct.omap_backlight*, %struct.omap_backlight** %6, align 8
  %56 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %55, i32 0, i32 1
  store %struct.omap_backlight_config* %54, %struct.omap_backlight_config** %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.omap_backlight*, %struct.omap_backlight** %6, align 8
  %60 = getelementptr inbounds %struct.omap_backlight, %struct.omap_backlight* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %63 = call i32 @platform_set_drvdata(%struct.platform_device* %61, %struct.backlight_device* %62)
  %64 = load i32, i32* @PWL, align 4
  %65 = call i32 @omap_cfg_reg(i32 %64)
  %66 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %67 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %68 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.omap_backlight_config*, %struct.omap_backlight_config** %7, align 8
  %71 = getelementptr inbounds %struct.omap_backlight_config, %struct.omap_backlight_config* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %74 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %77 = call i32 @omapbl_update_status(%struct.backlight_device* %76)
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_info(i32* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %48, %45, %27, %13
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.omap_backlight_config* @dev_get_platdata(i32*) #1

declare dso_local %struct.omap_backlight* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i8*, i32*, %struct.omap_backlight*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @omap_cfg_reg(i32) #1

declare dso_local i32 @omapbl_update_status(%struct.backlight_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
