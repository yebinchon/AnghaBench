; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_cr_bllcd.c_cr_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_cr_bllcd.c_cr_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.backlight_properties = type { i32 }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.lcd_device = type { %struct.TYPE_2__ }
%struct.cr_panel = type { %struct.lcd_device*, %struct.lcd_device* }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@CRVML_DEVICE_LPC = common dso_local global i32 0, align 4
@lpc_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"INTEL CARILLO RANCH LPC not found.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CRVML_REG_GPIOEN = common dso_local global i32 0, align 4
@CRVML_GPIOEN_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Carillo Ranch GPIO device was not enabled.\0A\00", align 1
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"cr-backlight\00", align 1
@cr_backlight_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"cr-lcd\00", align 1
@cr_lcd_ops = common dso_local global i32 0, align 4
@CRVML_REG_GPIOBAR = common dso_local global i32 0, align 4
@gpio_bar = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cr_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca %struct.lcd_device*, align 8
  %7 = alloca %struct.cr_panel*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %10 = load i32, i32* @CRVML_DEVICE_LPC, align 4
  %11 = call i32 @pci_get_device(i32 %9, i32 %10, i32* null)
  store i32 %11, i32* @lpc_dev, align 4
  %12 = load i32, i32* @lpc_dev, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %114

18:                                               ; preds = %1
  %19 = load i32, i32* @lpc_dev, align 4
  %20 = load i32, i32* @CRVML_REG_GPIOEN, align 4
  %21 = call i32 @pci_read_config_byte(i32 %19, i32 %20, i32* %8)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @CRVML_GPIOEN_BIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @lpc_dev, align 4
  %29 = call i32 @pci_dev_put(i32 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %114

32:                                               ; preds = %18
  %33 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 4)
  %34 = load i32, i32* @BACKLIGHT_RAW, align 4
  %35 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call %struct.lcd_device* @devm_backlight_device_register(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %39, i32* null, i32* @cr_backlight_ops, %struct.backlight_properties* %4)
  %41 = bitcast %struct.lcd_device* %40 to %struct.backlight_device*
  store %struct.backlight_device* %41, %struct.backlight_device** %5, align 8
  %42 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %43 = bitcast %struct.backlight_device* %42 to %struct.lcd_device*
  %44 = call i64 @IS_ERR(%struct.lcd_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load i32, i32* @lpc_dev, align 4
  %48 = call i32 @pci_dev_put(i32 %47)
  %49 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %50 = bitcast %struct.backlight_device* %49 to %struct.lcd_device*
  %51 = call i32 @PTR_ERR(%struct.lcd_device* %50)
  store i32 %51, i32* %2, align 4
  br label %114

52:                                               ; preds = %32
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call %struct.lcd_device* @devm_lcd_device_register(i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %56, i32* null, i32* @cr_lcd_ops)
  store %struct.lcd_device* %57, %struct.lcd_device** %6, align 8
  %58 = load %struct.lcd_device*, %struct.lcd_device** %6, align 8
  %59 = call i64 @IS_ERR(%struct.lcd_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i32, i32* @lpc_dev, align 4
  %63 = call i32 @pci_dev_put(i32 %62)
  %64 = load %struct.lcd_device*, %struct.lcd_device** %6, align 8
  %65 = call i32 @PTR_ERR(%struct.lcd_device* %64)
  store i32 %65, i32* %2, align 4
  br label %114

66:                                               ; preds = %52
  %67 = load i32, i32* @lpc_dev, align 4
  %68 = load i32, i32* @CRVML_REG_GPIOBAR, align 4
  %69 = call i32 @pci_read_config_dword(i32 %67, i32 %68, i32* @gpio_bar)
  %70 = load i32, i32* @gpio_bar, align 4
  %71 = and i32 %70, -64
  store i32 %71, i32* @gpio_bar, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.cr_panel* @devm_kzalloc(i32* %73, i32 16, i32 %74)
  store %struct.cr_panel* %75, %struct.cr_panel** %7, align 8
  %76 = load %struct.cr_panel*, %struct.cr_panel** %7, align 8
  %77 = icmp ne %struct.cr_panel* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @lpc_dev, align 4
  %80 = call i32 @pci_dev_put(i32 %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %114

83:                                               ; preds = %66
  %84 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %85 = bitcast %struct.backlight_device* %84 to %struct.lcd_device*
  %86 = load %struct.cr_panel*, %struct.cr_panel** %7, align 8
  %87 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %86, i32 0, i32 1
  store %struct.lcd_device* %85, %struct.lcd_device** %87, align 8
  %88 = load %struct.lcd_device*, %struct.lcd_device** %6, align 8
  %89 = load %struct.cr_panel*, %struct.cr_panel** %7, align 8
  %90 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %89, i32 0, i32 0
  store %struct.lcd_device* %88, %struct.lcd_device** %90, align 8
  %91 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %92 = load %struct.cr_panel*, %struct.cr_panel** %7, align 8
  %93 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %92, i32 0, i32 1
  %94 = load %struct.lcd_device*, %struct.lcd_device** %93, align 8
  %95 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %91, i32* %96, align 8
  %97 = load %struct.cr_panel*, %struct.cr_panel** %7, align 8
  %98 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %97, i32 0, i32 1
  %99 = load %struct.lcd_device*, %struct.lcd_device** %98, align 8
  %100 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.cr_panel*, %struct.cr_panel** %7, align 8
  %103 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %102, i32 0, i32 1
  %104 = load %struct.lcd_device*, %struct.lcd_device** %103, align 8
  %105 = call i32 @cr_backlight_set_intensity(%struct.lcd_device* %104)
  %106 = load %struct.cr_panel*, %struct.cr_panel** %7, align 8
  %107 = getelementptr inbounds %struct.cr_panel, %struct.cr_panel* %106, i32 0, i32 0
  %108 = load %struct.lcd_device*, %struct.lcd_device** %107, align 8
  %109 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %110 = call i32 @cr_lcd_set_power(%struct.lcd_device* %108, i32 %109)
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = load %struct.cr_panel*, %struct.cr_panel** %7, align 8
  %113 = call i32 @platform_set_drvdata(%struct.platform_device* %111, %struct.cr_panel* %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %83, %78, %61, %46, %26, %14
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.lcd_device* @devm_backlight_device_register(i32*, i8*, i32*, i32*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local %struct.lcd_device* @devm_lcd_device_register(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local %struct.cr_panel* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @cr_backlight_set_intensity(%struct.lcd_device*) #1

declare dso_local i32 @cr_lcd_set_power(%struct.lcd_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cr_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
