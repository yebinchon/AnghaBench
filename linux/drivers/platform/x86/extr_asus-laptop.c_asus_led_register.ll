; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_led_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_led_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.asus_led = type { i8*, i32, %struct.asus_laptop*, %struct.led_classdev }
%struct.led_classdev = type { i8*, i32, i32, i32 }

@asus_led_cdev_update = common dso_local global i32 0, align 4
@asus_led_cdev_set = common dso_local global i32 0, align 4
@asus_led_cdev_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*, %struct.asus_led*, i8*, i8*)* @asus_led_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_led_register(%struct.asus_laptop* %0, %struct.asus_led* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asus_laptop*, align 8
  %7 = alloca %struct.asus_led*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.led_classdev*, align 8
  store %struct.asus_laptop* %0, %struct.asus_laptop** %6, align 8
  store %struct.asus_led* %1, %struct.asus_led** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.asus_led*, %struct.asus_led** %7, align 8
  %12 = getelementptr inbounds %struct.asus_led, %struct.asus_led* %11, i32 0, i32 3
  store %struct.led_classdev* %12, %struct.led_classdev** %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.asus_laptop*, %struct.asus_laptop** %6, align 8
  %17 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @acpi_check_handle(i32 %18, i8* %19, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %51

23:                                               ; preds = %15
  %24 = load %struct.asus_laptop*, %struct.asus_laptop** %6, align 8
  %25 = load %struct.asus_led*, %struct.asus_led** %7, align 8
  %26 = getelementptr inbounds %struct.asus_led, %struct.asus_led* %25, i32 0, i32 2
  store %struct.asus_laptop* %24, %struct.asus_laptop** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.asus_led*, %struct.asus_led** %7, align 8
  %29 = getelementptr inbounds %struct.asus_led, %struct.asus_led* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.asus_led*, %struct.asus_led** %7, align 8
  %31 = getelementptr inbounds %struct.asus_led, %struct.asus_led* %30, i32 0, i32 1
  %32 = load i32, i32* @asus_led_cdev_update, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %36 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @asus_led_cdev_set, align 4
  %38 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %39 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @asus_led_cdev_get, align 4
  %41 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %42 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %44 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %43, i32 0, i32 1
  store i32 1, i32* %44, align 8
  %45 = load %struct.asus_laptop*, %struct.asus_laptop** %6, align 8
  %46 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %50 = call i32 @led_classdev_register(i32* %48, %struct.led_classdev* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %23, %22
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @acpi_check_handle(i32, i8*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
