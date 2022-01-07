; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_laptop_leds_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_laptop_leds_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.fujitsu_laptop = type { i32 }
%struct.led_classdev = type { i8*, i8*, i32, i32 }

@FUNC_LEDS = common dso_local global i32 0, align 4
@LOGOLAMP_POWERON = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"fujitsu::logolamp\00", align 1
@logolamp_set = common dso_local global i32 0, align 4
@logolamp_get = common dso_local global i32 0, align 4
@KEYBOARD_LAMPS = common dso_local global i32 0, align 4
@FUNC_BUTTONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"fujitsu::kblamps\00", align 1
@kblamps_set = common dso_local global i32 0, align 4
@kblamps_get = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"fujitsu::radio_led\00", align 1
@radio_led_set = common dso_local global i32 0, align 4
@radio_led_get = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"rfkill-any\00", align 1
@ECO_LED = common dso_local global i32 0, align 4
@UNSUPPORTED_CMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"fujitsu::eco_led\00", align 1
@eco_led_set = common dso_local global i32 0, align 4
@eco_led_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_fujitsu_laptop_leds_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fujitsu_laptop_leds_register(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.fujitsu_laptop*, align 8
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = call %struct.fujitsu_laptop* @acpi_driver_data(%struct.acpi_device* %7)
  store %struct.fujitsu_laptop* %8, %struct.fujitsu_laptop** %4, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = load i32, i32* @FUNC_LEDS, align 4
  %11 = call i32 @call_fext_func(%struct.acpi_device* %9, i32 %10, i32 0, i32 0, i32 0)
  %12 = load i32, i32* @LOGOLAMP_POWERON, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %1
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.led_classdev* @devm_kzalloc(i32* %17, i32 24, i32 %18)
  store %struct.led_classdev* %19, %struct.led_classdev** %5, align 8
  %20 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %21 = icmp ne %struct.led_classdev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %163

25:                                               ; preds = %15
  %26 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %27 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @logolamp_set, align 4
  %29 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %30 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @logolamp_get, align 4
  %32 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %33 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %34, i32 0, i32 0
  %36 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %37 = call i32 @devm_led_classdev_register(i32* %35, %struct.led_classdev* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %163

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %45 = load i32, i32* @FUNC_LEDS, align 4
  %46 = call i32 @call_fext_func(%struct.acpi_device* %44, i32 %45, i32 0, i32 0, i32 0)
  %47 = load i32, i32* @KEYBOARD_LAMPS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %43
  %51 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %52 = load i32, i32* @FUNC_BUTTONS, align 4
  %53 = call i32 @call_fext_func(%struct.acpi_device* %51, i32 %52, i32 0, i32 0, i32 0)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %57 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %56, i32 0, i32 0
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.led_classdev* @devm_kzalloc(i32* %57, i32 24, i32 %58)
  store %struct.led_classdev* %59, %struct.led_classdev** %5, align 8
  %60 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %61 = icmp ne %struct.led_classdev* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %163

65:                                               ; preds = %55
  %66 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %67 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  %68 = load i32, i32* @kblamps_set, align 4
  %69 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %70 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @kblamps_get, align 4
  %72 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %73 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %75 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %74, i32 0, i32 0
  %76 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %77 = call i32 @devm_led_classdev_register(i32* %75, %struct.led_classdev* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %163

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %50, %43
  %84 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %85 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @BIT(i32 17)
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %83
  %91 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %92 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %91, i32 0, i32 0
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.led_classdev* @devm_kzalloc(i32* %92, i32 24, i32 %93)
  store %struct.led_classdev* %94, %struct.led_classdev** %5, align 8
  %95 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %96 = icmp ne %struct.led_classdev* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %163

100:                                              ; preds = %90
  %101 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %102 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %102, align 8
  %103 = load i32, i32* @radio_led_set, align 4
  %104 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %105 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @radio_led_get, align 4
  %107 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %108 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %110 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %109, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %110, align 8
  %111 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %112 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %111, i32 0, i32 0
  %113 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %114 = call i32 @devm_led_classdev_register(i32* %112, %struct.led_classdev* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %100
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %163

119:                                              ; preds = %100
  br label %120

120:                                              ; preds = %119, %83
  %121 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %122 = load i32, i32* @FUNC_LEDS, align 4
  %123 = call i32 @call_fext_func(%struct.acpi_device* %121, i32 %122, i32 0, i32 0, i32 0)
  %124 = call i32 @BIT(i32 14)
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %162

127:                                              ; preds = %120
  %128 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %129 = load i32, i32* @FUNC_LEDS, align 4
  %130 = load i32, i32* @ECO_LED, align 4
  %131 = call i32 @call_fext_func(%struct.acpi_device* %128, i32 %129, i32 2, i32 %130, i32 0)
  %132 = load i32, i32* @UNSUPPORTED_CMD, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %162

134:                                              ; preds = %127
  %135 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %136 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %135, i32 0, i32 0
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call %struct.led_classdev* @devm_kzalloc(i32* %136, i32 24, i32 %137)
  store %struct.led_classdev* %138, %struct.led_classdev** %5, align 8
  %139 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %140 = icmp ne %struct.led_classdev* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %134
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %163

144:                                              ; preds = %134
  %145 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %146 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %145, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %146, align 8
  %147 = load i32, i32* @eco_led_set, align 4
  %148 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %149 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @eco_led_get, align 4
  %151 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %152 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %154 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %153, i32 0, i32 0
  %155 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %156 = call i32 @devm_led_classdev_register(i32* %154, %struct.led_classdev* %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %144
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %2, align 4
  br label %163

161:                                              ; preds = %144
  br label %162

162:                                              ; preds = %161, %127, %120
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %159, %141, %117, %97, %80, %62, %40, %22
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.fujitsu_laptop* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @call_fext_func(%struct.acpi_device*, i32, i32, i32, i32) #1

declare dso_local %struct.led_classdev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.led_classdev*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
