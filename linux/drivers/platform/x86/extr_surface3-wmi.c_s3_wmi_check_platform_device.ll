; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3-wmi.c_s3_wmi_check_platform_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3-wmi.c_s3_wmi_check_platform_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.acpi_device*, %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.device = type { i32 }

@ACPI_BUTTON_HID_LID = common dso_local global i32 0, align 4
@s3_wmi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SPI_CTL_OBJ_NAME = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@s3_wmi_attach_spi_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to enumerate SPI slaves\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @s3_wmi_check_platform_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3_wmi_check_platform_device(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.acpi_device* null, %struct.acpi_device** %7, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @ACPI_HANDLE(%struct.device* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @acpi_bus_get_device(i32 %15, %struct.acpi_device** %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %53

19:                                               ; preds = %14
  %20 = load i32, i32* @ACPI_BUTTON_HID_LID, align 4
  %21 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %22 = call i32 @acpi_device_hid(%struct.acpi_device* %21)
  %23 = call i32 @strcmp(i32 %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  store %struct.acpi_device* %26, %struct.acpi_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3_wmi, i32 0, i32 1), align 8
  store i32 0, i32* %3, align 4
  br label %53

27:                                               ; preds = %19
  %28 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %29 = call i32 @acpi_device_bid(%struct.acpi_device* %28)
  %30 = load i32, i32* @SPI_CTL_OBJ_NAME, align 4
  %31 = load i32, i32* @SPI_CTL_OBJ_NAME, align 4
  %32 = call i32 @strlen(i32 %31)
  %33 = call i64 @strncmp(i32 %29, i32 %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %53

36:                                               ; preds = %27
  %37 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @s3_wmi_attach_spi_device, align 4
  %40 = call i32 @acpi_walk_namespace(i32 %37, i32 %38, i32 1, i32 %39, i32* null, %struct.acpi_device** %7, i32* null)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %49 = icmp ne %struct.acpi_device* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %53

51:                                               ; preds = %47
  %52 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  store %struct.acpi_device* %52, %struct.acpi_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3_wmi, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %50, %35, %25, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @acpi_device_bid(%struct.acpi_device*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, %struct.acpi_device**, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
