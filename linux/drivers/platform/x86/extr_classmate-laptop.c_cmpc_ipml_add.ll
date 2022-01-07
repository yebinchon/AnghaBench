; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_ipml_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_ipml_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32 }
%struct.ipml200_dev = type { i32*, i32 }
%struct.backlight_properties = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cmpc_bl\00", align 1
@cmpc_bl_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cmpc_rfkill\00", align 1
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@cmpc_rfkill_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @cmpc_ipml_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_ipml_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipml200_dev*, align 8
  %6 = alloca %struct.backlight_properties, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ipml200_dev* @kmalloc(i32 16, i32 %7)
  store %struct.ipml200_dev* %8, %struct.ipml200_dev** %5, align 8
  %9 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %10 = icmp eq %struct.ipml200_dev* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %75

14:                                               ; preds = %1
  %15 = call i32 @memset(%struct.backlight_properties* %6, i32 0, i32 8)
  %16 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %17 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 0
  store i32 7, i32* %18, align 4
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 0
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @backlight_device_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %20, i32 %23, i32* @cmpc_bl_ops, %struct.backlight_properties* %6)
  %25 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %26 = getelementptr inbounds %struct.ipml200_dev, %struct.ipml200_dev* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %28 = getelementptr inbounds %struct.ipml200_dev, %struct.ipml200_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %14
  %33 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %34 = getelementptr inbounds %struct.ipml200_dev, %struct.ipml200_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %71

37:                                               ; preds = %14
  %38 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 0
  %40 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %41 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @rfkill_alloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %39, i32 %40, i32* @cmpc_rfkill_ops, i32 %43)
  %45 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %46 = getelementptr inbounds %struct.ipml200_dev, %struct.ipml200_dev* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  %47 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %48 = getelementptr inbounds %struct.ipml200_dev, %struct.ipml200_dev* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %37
  %52 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %53 = getelementptr inbounds %struct.ipml200_dev, %struct.ipml200_dev* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @rfkill_register(i32* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %60 = getelementptr inbounds %struct.ipml200_dev, %struct.ipml200_dev* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @rfkill_destroy(i32* %61)
  %63 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %64 = getelementptr inbounds %struct.ipml200_dev, %struct.ipml200_dev* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %58, %51
  br label %66

66:                                               ; preds = %65, %37
  %67 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %68 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %67, i32 0, i32 0
  %69 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %70 = call i32 @dev_set_drvdata(i32* %68, %struct.ipml200_dev* %69)
  store i32 0, i32* %2, align 4
  br label %75

71:                                               ; preds = %32
  %72 = load %struct.ipml200_dev*, %struct.ipml200_dev** %5, align 8
  %73 = call i32 @kfree(%struct.ipml200_dev* %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %66, %11
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.ipml200_dev* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local i32 @backlight_device_register(i8*, i32*, i32, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32* @rfkill_alloc(i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @rfkill_register(i32*) #1

declare dso_local i32 @rfkill_destroy(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.ipml200_dev*) #1

declare dso_local i32 @kfree(%struct.ipml200_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
