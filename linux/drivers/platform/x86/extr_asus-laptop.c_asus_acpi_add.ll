; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_acpi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_acpi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.asus_laptop*, i32 }
%struct.asus_laptop = type { i32, %struct.acpi_device*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Asus Laptop Support version %s\0A\00", align 1
@ASUS_LAPTOP_VERSION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASUS_LAPTOP_DEVICE_NAME = common dso_local global i32 0, align 4
@ASUS_LAPTOP_CLASS = common dso_local global i32 0, align 4
@acpi_backlight_vendor = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@asus_device_present = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @asus_acpi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_acpi_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.asus_laptop*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load i32, i32* @ASUS_LAPTOP_VERSION, align 4
  %7 = call i32 @pr_notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.asus_laptop* @kzalloc(i32 24, i32 %8)
  store %struct.asus_laptop* %9, %struct.asus_laptop** %4, align 8
  %10 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %11 = icmp ne %struct.asus_laptop* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %130

15:                                               ; preds = %1
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %20 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = call i32 @acpi_device_name(%struct.acpi_device* %21)
  %23 = load i32, i32* @ASUS_LAPTOP_DEVICE_NAME, align 4
  %24 = call i32 @strcpy(i32 %22, i32 %23)
  %25 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %26 = call i32 @acpi_device_class(%struct.acpi_device* %25)
  %27 = load i32, i32* @ASUS_LAPTOP_CLASS, align 4
  %28 = call i32 @strcpy(i32 %26, i32 %27)
  %29 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 0
  store %struct.asus_laptop* %29, %struct.asus_laptop** %31, align 8
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %34 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %33, i32 0, i32 1
  store %struct.acpi_device* %32, %struct.acpi_device** %34, align 8
  %35 = call i32 (...) @asus_dmi_check()
  %36 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %37 = call i32 @asus_acpi_init(%struct.asus_laptop* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %15
  br label %126

41:                                               ; preds = %15
  %42 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %43 = call i32 @asus_check_pega_lucid(%struct.asus_laptop* %42)
  %44 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %45 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %47 = call i32 @asus_platform_init(%struct.asus_laptop* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %126

51:                                               ; preds = %41
  %52 = call i64 (...) @acpi_video_get_backlight_type()
  %53 = load i64, i64* @acpi_backlight_vendor, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %57 = call i32 @asus_backlight_init(%struct.asus_laptop* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %123

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %51
  %63 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %64 = call i32 @asus_input_init(%struct.asus_laptop* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %120

68:                                               ; preds = %62
  %69 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %70 = call i32 @asus_led_init(%struct.asus_laptop* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %117

74:                                               ; preds = %68
  %75 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %76 = call i32 @asus_rfkill_init(%struct.asus_laptop* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %114

85:                                               ; preds = %79, %74
  %86 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %87 = call i32 @pega_accel_init(%struct.asus_laptop* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %111

96:                                               ; preds = %90, %85
  %97 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %98 = call i32 @pega_rfkill_init(%struct.asus_laptop* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %108

107:                                              ; preds = %101, %96
  store i32 1, i32* @asus_device_present, align 4
  store i32 0, i32* %2, align 4
  br label %130

108:                                              ; preds = %106
  %109 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %110 = call i32 @pega_accel_exit(%struct.asus_laptop* %109)
  br label %111

111:                                              ; preds = %108, %95
  %112 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %113 = call i32 @asus_rfkill_exit(%struct.asus_laptop* %112)
  br label %114

114:                                              ; preds = %111, %84
  %115 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %116 = call i32 @asus_led_exit(%struct.asus_laptop* %115)
  br label %117

117:                                              ; preds = %114, %73
  %118 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %119 = call i32 @asus_input_exit(%struct.asus_laptop* %118)
  br label %120

120:                                              ; preds = %117, %67
  %121 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %122 = call i32 @asus_backlight_exit(%struct.asus_laptop* %121)
  br label %123

123:                                              ; preds = %120, %60
  %124 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %125 = call i32 @asus_platform_exit(%struct.asus_laptop* %124)
  br label %126

126:                                              ; preds = %123, %50, %40
  %127 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %128 = call i32 @kfree(%struct.asus_laptop* %127)
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %107, %12
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local %struct.asus_laptop* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @asus_dmi_check(...) #1

declare dso_local i32 @asus_acpi_init(%struct.asus_laptop*) #1

declare dso_local i32 @asus_check_pega_lucid(%struct.asus_laptop*) #1

declare dso_local i32 @asus_platform_init(%struct.asus_laptop*) #1

declare dso_local i64 @acpi_video_get_backlight_type(...) #1

declare dso_local i32 @asus_backlight_init(%struct.asus_laptop*) #1

declare dso_local i32 @asus_input_init(%struct.asus_laptop*) #1

declare dso_local i32 @asus_led_init(%struct.asus_laptop*) #1

declare dso_local i32 @asus_rfkill_init(%struct.asus_laptop*) #1

declare dso_local i32 @pega_accel_init(%struct.asus_laptop*) #1

declare dso_local i32 @pega_rfkill_init(%struct.asus_laptop*) #1

declare dso_local i32 @pega_accel_exit(%struct.asus_laptop*) #1

declare dso_local i32 @asus_rfkill_exit(%struct.asus_laptop*) #1

declare dso_local i32 @asus_led_exit(%struct.asus_laptop*) #1

declare dso_local i32 @asus_input_exit(%struct.asus_laptop*) #1

declare dso_local i32 @asus_backlight_exit(%struct.asus_laptop*) #1

declare dso_local i32 @asus_platform_exit(%struct.asus_laptop*) #1

declare dso_local i32 @kfree(%struct.asus_laptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
