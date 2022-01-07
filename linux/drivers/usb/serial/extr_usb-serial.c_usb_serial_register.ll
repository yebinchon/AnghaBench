; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_usb_serial_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_usb_serial_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_driver = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Serial driver %s has no usb_driver\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@table_lock = common dso_local global i32 0, align 4
@usb_serial_driver_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"problem %d when registering driver %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"USB Serial support registered for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_driver*)* @usb_serial_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_serial_register(%struct.usb_serial_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_serial_driver* %0, %struct.usb_serial_driver** %3, align 8
  %5 = call i64 (...) @usb_disabled()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %62

10:                                               ; preds = %1
  %11 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %12 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %17 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %21 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %24 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %29 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %62

34:                                               ; preds = %22
  %35 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %36 = call i32 @usb_serial_operations_init(%struct.usb_serial_driver* %35)
  %37 = call i32 @mutex_lock(i32* @table_lock)
  %38 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %39 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %38, i32 0, i32 1
  %40 = call i32 @list_add(i32* %39, i32* @usb_serial_driver_list)
  %41 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %42 = call i32 @usb_serial_bus_register(%struct.usb_serial_driver* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %48 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 %49)
  %51 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %52 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %51, i32 0, i32 1
  %53 = call i32 @list_del(i32* %52)
  br label %59

54:                                               ; preds = %34
  %55 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %56 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %54, %45
  %60 = call i32 @mutex_unlock(i32* @table_lock)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %27, %7
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local i32 @WARN(i32, i8*, i64) #1

declare dso_local i32 @usb_serial_operations_init(%struct.usb_serial_driver*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @usb_serial_bus_register(%struct.usb_serial_driver*) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
