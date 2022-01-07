; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surfacepro3_button.c_surface_button_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surfacepro3_button.c_surface_button_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.surface_button* }
%struct.surface_button = type { i32, %struct.input_dev* }
%struct.input_dev = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@SURFACE_BUTTON_OBJ_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SURFACE_BUTTON_DEVICE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s/buttons\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@KEY_LEFTMETA = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @surface_button_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface_button_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.surface_button*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = call i8* @acpi_device_hid(%struct.acpi_device* %9)
  store i8* %10, i8** %6, align 8
  %11 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %12 = call i32 @acpi_device_bid(%struct.acpi_device* %11)
  %13 = load i32, i32* @SURFACE_BUTTON_OBJ_NAME, align 4
  %14 = load i32, i32* @SURFACE_BUTTON_OBJ_NAME, align 4
  %15 = call i32 @strlen(i32 %14)
  %16 = call i64 @strncmp(i32 %12, i32 %13, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %114

21:                                               ; preds = %1
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = call i32 @surface_button_check_MSHW0040(%struct.acpi_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %114

28:                                               ; preds = %21
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.surface_button* @kzalloc(i32 16, i32 %29)
  store %struct.surface_button* %30, %struct.surface_button** %4, align 8
  %31 = load %struct.surface_button*, %struct.surface_button** %4, align 8
  %32 = icmp ne %struct.surface_button* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %114

36:                                               ; preds = %28
  %37 = load %struct.surface_button*, %struct.surface_button** %4, align 8
  %38 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 1
  store %struct.surface_button* %37, %struct.surface_button** %39, align 8
  %40 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %40, %struct.input_dev** %5, align 8
  %41 = load %struct.surface_button*, %struct.surface_button** %4, align 8
  %42 = getelementptr inbounds %struct.surface_button, %struct.surface_button* %41, i32 0, i32 1
  store %struct.input_dev* %40, %struct.input_dev** %42, align 8
  %43 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %44 = icmp ne %struct.input_dev* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %110

48:                                               ; preds = %36
  %49 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %50 = call i8* @acpi_device_name(%struct.acpi_device* %49)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @SURFACE_BUTTON_DEVICE_NAME, align 4
  %53 = call i32 @strcpy(i8* %51, i32 %52)
  %54 = load %struct.surface_button*, %struct.surface_button** %4, align 8
  %55 = getelementptr inbounds %struct.surface_button, %struct.surface_button* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @snprintf(i32 %56, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.surface_button*, %struct.surface_button** %4, align 8
  %63 = getelementptr inbounds %struct.surface_button, %struct.surface_button* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @BUS_HOST, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %72 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %71, i32 0, i32 0
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32* %72, i32** %75, align 8
  %76 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %77 = load i32, i32* @EV_KEY, align 4
  %78 = load i32, i32* @KEY_POWER, align 4
  %79 = call i32 @input_set_capability(%struct.input_dev* %76, i32 %77, i32 %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %81 = load i32, i32* @EV_KEY, align 4
  %82 = load i32, i32* @KEY_LEFTMETA, align 4
  %83 = call i32 @input_set_capability(%struct.input_dev* %80, i32 %81, i32 %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = load i32, i32* @EV_KEY, align 4
  %86 = load i32, i32* @KEY_VOLUMEUP, align 4
  %87 = call i32 @input_set_capability(%struct.input_dev* %84, i32 %85, i32 %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %89 = load i32, i32* @EV_KEY, align 4
  %90 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %91 = call i32 @input_set_capability(%struct.input_dev* %88, i32 %89, i32 %90)
  %92 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %93 = call i32 @input_register_device(%struct.input_dev* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %48
  br label %107

97:                                               ; preds = %48
  %98 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %99 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %98, i32 0, i32 0
  %100 = call i32 @device_init_wakeup(i32* %99, i32 1)
  %101 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %102 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %101, i32 0, i32 0
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %105 = call i32 @acpi_device_bid(%struct.acpi_device* %104)
  %106 = call i32 @dev_info(i32* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %103, i32 %105)
  store i32 0, i32* %2, align 4
  br label %114

107:                                              ; preds = %96
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = call i32 @input_free_device(%struct.input_dev* %108)
  br label %110

110:                                              ; preds = %107, %45
  %111 = load %struct.surface_button*, %struct.surface_button** %4, align 8
  %112 = call i32 @kfree(%struct.surface_button* %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %97, %33, %25, %18
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @acpi_device_bid(%struct.acpi_device*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @surface_button_check_MSHW0040(%struct.acpi_device*) #1

declare dso_local %struct.surface_button* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i8* @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.surface_button*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
