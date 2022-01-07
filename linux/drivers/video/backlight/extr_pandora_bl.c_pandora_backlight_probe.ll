; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pandora_bl.c_pandora_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pandora_bl.c_pandora_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.backlight_properties = type { i32, i8* }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.pandora_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to allocate driver private data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_USER_VALUE = common dso_local global i8* null, align 8
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@pandora_backlight_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@TWL_MODULE_PWM = common dso_local global i32 0, align 4
@TWL_PWM0_ON = common dso_local global i32 0, align 4
@PANDORABL_WAS_OFF = common dso_local global i32 0, align 4
@TWL4030_MODULE_INTBR = common dso_local global i32 0, align 4
@TWL_INTBR_PMBR1 = common dso_local global i32 0, align 4
@TWL_PMBR1_PWM0_MUXMASK = common dso_local global i32 0, align 4
@TWL_PMBR1_PWM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pandora_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pandora_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_properties, align 8
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca %struct.pandora_private*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pandora_private* @devm_kmalloc(i32* %9, i32 4, i32 %10)
  store %struct.pandora_private* %11, %struct.pandora_private** %6, align 8
  %12 = load %struct.pandora_private*, %struct.pandora_private** %6, align 8
  %13 = icmp ne %struct.pandora_private* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %74

20:                                               ; preds = %1
  %21 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 16)
  %22 = load i8*, i8** @MAX_USER_VALUE, align 8
  %23 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @BACKLIGHT_RAW, align 4
  %25 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.pandora_private*, %struct.pandora_private** %6, align 8
  %34 = call %struct.backlight_device* @devm_backlight_device_register(i32* %27, i32 %30, i32* %32, %struct.pandora_private* %33, i32* @pandora_backlight_ops, %struct.backlight_properties* %4)
  store %struct.backlight_device* %34, %struct.backlight_device** %5, align 8
  %35 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %36 = call i64 @IS_ERR(%struct.backlight_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %20
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %43 = call i32 @PTR_ERR(%struct.backlight_device* %42)
  store i32 %43, i32* %2, align 4
  br label %74

44:                                               ; preds = %20
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.backlight_device* %46)
  %48 = load i32, i32* @TWL_MODULE_PWM, align 4
  %49 = load i32, i32* @TWL_PWM0_ON, align 4
  %50 = call i32 @twl_i2c_write_u8(i32 %48, i32 128, i32 %49)
  %51 = load i32, i32* @PANDORABL_WAS_OFF, align 4
  %52 = load %struct.pandora_private*, %struct.pandora_private** %6, align 8
  %53 = getelementptr inbounds %struct.pandora_private, %struct.pandora_private* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i8*, i8** @MAX_USER_VALUE, align 8
  %55 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %56 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %59 = call i32 @backlight_update_status(%struct.backlight_device* %58)
  %60 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %61 = load i32, i32* @TWL_INTBR_PMBR1, align 4
  %62 = call i32 @twl_i2c_read_u8(i32 %60, i32* %7, i32 %61)
  %63 = load i32, i32* @TWL_PMBR1_PWM0_MUXMASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @TWL_PMBR1_PWM0, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @TWL_INTBR_PMBR1, align 4
  %73 = call i32 @twl_i2c_write_u8(i32 %70, i32 %71, i32 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %44, %38, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.pandora_private* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i32, i32*, %struct.pandora_private*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
