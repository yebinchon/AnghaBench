; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_topstar-laptop.c_topstar_acpi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_topstar-laptop.c_topstar_acpi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.topstar_laptop* }
%struct.topstar_laptop = type { %struct.acpi_device* }

@topstar_dmi_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Topstar TPSACPI\00", align 1
@TOPSTAR_LAPTOP_CLASS = common dso_local global i8* null, align 8
@led_workaround = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @topstar_acpi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @topstar_acpi_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.topstar_laptop*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load i32, i32* @topstar_dmi_ids, align 4
  %7 = call i32 @dmi_check_system(i32 %6)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.topstar_laptop* @kzalloc(i32 8, i32 %8)
  store %struct.topstar_laptop* %9, %struct.topstar_laptop** %4, align 8
  %10 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %11 = icmp ne %struct.topstar_laptop* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = call i32 @acpi_device_name(%struct.acpi_device* %16)
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = call i32 @acpi_device_class(%struct.acpi_device* %19)
  %21 = load i8*, i8** @TOPSTAR_LAPTOP_CLASS, align 8
  %22 = call i32 @strcpy(i32 %20, i8* %21)
  %23 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 0
  store %struct.topstar_laptop* %23, %struct.topstar_laptop** %25, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %28 = getelementptr inbounds %struct.topstar_laptop, %struct.topstar_laptop* %27, i32 0, i32 0
  store %struct.acpi_device* %26, %struct.acpi_device** %28, align 8
  %29 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %30 = call i32 @topstar_acpi_init(%struct.topstar_laptop* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %66

34:                                               ; preds = %15
  %35 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %36 = call i32 @topstar_platform_init(%struct.topstar_laptop* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %63

40:                                               ; preds = %34
  %41 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %42 = call i32 @topstar_input_init(%struct.topstar_laptop* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %60

46:                                               ; preds = %40
  %47 = load i64, i64* @led_workaround, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %51 = call i32 @topstar_led_init(%struct.topstar_laptop* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %46
  store i32 0, i32* %2, align 4
  br label %70

57:                                               ; preds = %54
  %58 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %59 = call i32 @topstar_input_exit(%struct.topstar_laptop* %58)
  br label %60

60:                                               ; preds = %57, %45
  %61 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %62 = call i32 @topstar_platform_exit(%struct.topstar_laptop* %61)
  br label %63

63:                                               ; preds = %60, %39
  %64 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %65 = call i32 @topstar_acpi_exit(%struct.topstar_laptop* %64)
  br label %66

66:                                               ; preds = %63, %33
  %67 = load %struct.topstar_laptop*, %struct.topstar_laptop** %4, align 8
  %68 = call i32 @kfree(%struct.topstar_laptop* %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %56, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local %struct.topstar_laptop* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @topstar_acpi_init(%struct.topstar_laptop*) #1

declare dso_local i32 @topstar_platform_init(%struct.topstar_laptop*) #1

declare dso_local i32 @topstar_input_init(%struct.topstar_laptop*) #1

declare dso_local i32 @topstar_led_init(%struct.topstar_laptop*) #1

declare dso_local i32 @topstar_input_exit(%struct.topstar_laptop*) #1

declare dso_local i32 @topstar_platform_exit(%struct.topstar_laptop*) #1

declare dso_local i32 @topstar_acpi_exit(%struct.topstar_laptop*) #1

declare dso_local i32 @kfree(%struct.topstar_laptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
