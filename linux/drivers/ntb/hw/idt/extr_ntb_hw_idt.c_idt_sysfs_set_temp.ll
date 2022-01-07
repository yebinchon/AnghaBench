; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_sysfs_set_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_sysfs_set_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.idt_ntb_dev = type { i32 }

@IDT_TEMP_OFFSET = common dso_local global i32 0, align 4
@IDT_TEMP_MIN_OFFSET = common dso_local global i32 0, align 4
@IDT_TEMP_MAX_OFFSET = common dso_local global i32 0, align 4
@IDT_TEMP_MIN_MDEG = common dso_local global i32 0, align 4
@IDT_TEMP_MAX_MDEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @idt_sysfs_set_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_sysfs_set_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.idt_ntb_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.idt_ntb_dev* @dev_get_drvdata(%struct.device* %17)
  store %struct.idt_ntb_dev* %18, %struct.idt_ntb_dev** %11, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtol(i8* %22, i32 10, i64* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @IDT_TEMP_OFFSET, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* @IDT_TEMP_MIN_OFFSET, align 4
  %35 = load i32, i32* @IDT_TEMP_MAX_OFFSET, align 4
  %36 = call i64 @clamp_val(i64 %33, i32 %34, i32 %35)
  store i64 %36, i64* %13, align 8
  br label %42

37:                                               ; preds = %28
  %38 = load i64, i64* %13, align 8
  %39 = load i32, i32* @IDT_TEMP_MIN_MDEG, align 4
  %40 = load i32, i32* @IDT_TEMP_MAX_MDEG, align 4
  %41 = call i64 @clamp_val(i64 %38, i32 %39, i32 %40)
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @idt_write_temp(%struct.idt_ntb_dev* %43, i32 %44, i64 %45)
  %47 = load i64, i64* %9, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %42, %26
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.idt_ntb_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @idt_write_temp(%struct.idt_ntb_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
