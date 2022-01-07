; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wireless.c_acer_wireless_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wireless.c_acer_wireless_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.input_dev*, i32 }
%struct.input_dev = type { i8*, i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Acer Wireless Radio Control\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"acer-wireless/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AI = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_RFKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acer_wireless_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acer_wireless_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 1
  %7 = call %struct.input_dev* @devm_input_allocate_device(i32* %6)
  store %struct.input_dev* %7, %struct.input_dev** %4, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = icmp ne %struct.input_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  store %struct.input_dev* %14, %struct.input_dev** %16, align 8
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @BUS_HOST, align 4
  %22 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @PCI_VENDOR_ID_AI, align 4
  %26 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 4649, i32* %31, align 8
  %32 = load i32, i32* @EV_KEY, align 4
  %33 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_bit(i32 %32, i32 %35)
  %37 = load i32, i32* @KEY_RFKILL, align 4
  %38 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @set_bit(i32 %37, i32 %40)
  %42 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %43 = call i32 @input_register_device(%struct.input_dev* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %13, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
