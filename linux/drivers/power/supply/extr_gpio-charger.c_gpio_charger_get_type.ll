; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_gpio-charger.c_gpio_charger_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_gpio-charger.c_gpio_charger_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"charger-type\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@POWER_SUPPLY_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ups\00", align 1
@POWER_SUPPLY_TYPE_UPS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"mains\00", align 1
@POWER_SUPPLY_TYPE_MAINS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"usb-sdp\00", align 1
@POWER_SUPPLY_TYPE_USB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"usb-dcp\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"usb-cdp\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"usb-aca\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"unknown charger type %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @gpio_charger_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_charger_get_type(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call i32 @device_property_read_string(%struct.device* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %57, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @POWER_SUPPLY_TYPE_UNKNOWN, align 4
  store i32 %13, i32* %2, align 4
  br label %62

14:                                               ; preds = %8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @POWER_SUPPLY_TYPE_UPS, align 4
  store i32 %25, i32* %2, align 4
  br label %62

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @POWER_SUPPLY_TYPE_MAINS, align 4
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  store i32 %37, i32* %2, align 4
  br label %62

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  store i32 %43, i32* %2, align 4
  br label %62

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  store i32 %55, i32* %2, align 4
  br label %62

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @dev_warn(%struct.device* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @POWER_SUPPLY_TYPE_UNKNOWN, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %54, %48, %42, %36, %30, %24, %18, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @device_property_read_string(%struct.device*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
