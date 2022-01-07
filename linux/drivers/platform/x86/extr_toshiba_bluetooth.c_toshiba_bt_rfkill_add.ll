; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_bluetooth.c_toshiba_bt_rfkill_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_bluetooth.c_toshiba_bt_rfkill_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.toshiba_bluetooth_dev*, i32 }
%struct.toshiba_bluetooth_dev = type { i32, i32, %struct.acpi_device* }

@.str = private unnamed_addr constant [38 x i8] c"Toshiba ACPI Bluetooth device driver\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Toshiba Bluetooth\00", align 1
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@rfk_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to allocate rfkill device\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Unable to register rfkill device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @toshiba_bt_rfkill_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_bt_rfkill_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.toshiba_bluetooth_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @toshiba_bluetooth_present(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %87

14:                                               ; preds = %1
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.toshiba_bluetooth_dev* @kzalloc(i32 16, i32 %16)
  store %struct.toshiba_bluetooth_dev* %17, %struct.toshiba_bluetooth_dev** %4, align 8
  %18 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %19 = icmp ne %struct.toshiba_bluetooth_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %87

23:                                               ; preds = %14
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %26 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %25, i32 0, i32 2
  store %struct.acpi_device* %24, %struct.acpi_device** %26, align 8
  %27 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %28 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 1
  store %struct.toshiba_bluetooth_dev* %27, %struct.toshiba_bluetooth_dev** %29, align 8
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 0
  %32 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %33 = call i32 @dev_set_drvdata(i32* %31, %struct.toshiba_bluetooth_dev* %32)
  %34 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %35 = call i32 @toshiba_bluetooth_sync_status(%struct.toshiba_bluetooth_dev* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %40 = call i32 @kfree(%struct.toshiba_bluetooth_dev* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %87

42:                                               ; preds = %23
  %43 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 0
  %45 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %46 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %47 = call i32 @rfkill_alloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %44, i32 %45, i32* @rfk_ops, %struct.toshiba_bluetooth_dev* %46)
  %48 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %49 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %51 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %42
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %57 = call i32 @kfree(%struct.toshiba_bluetooth_dev* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %87

60:                                               ; preds = %42
  %61 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %62 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %65 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @rfkill_set_hw_state(i32 %63, i32 %69)
  %71 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %72 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @rfkill_register(i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %60
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %80 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @rfkill_destroy(i32 %81)
  %83 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %4, align 8
  %84 = call i32 @kfree(%struct.toshiba_bluetooth_dev* %83)
  br label %85

85:                                               ; preds = %77, %60
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %54, %38, %20, %12
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @toshiba_bluetooth_present(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.toshiba_bluetooth_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.toshiba_bluetooth_dev*) #1

declare dso_local i32 @toshiba_bluetooth_sync_status(%struct.toshiba_bluetooth_dev*) #1

declare dso_local i32 @kfree(%struct.toshiba_bluetooth_dev*) #1

declare dso_local i32 @rfkill_alloc(i8*, i32*, i32, i32*, %struct.toshiba_bluetooth_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @rfkill_register(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
