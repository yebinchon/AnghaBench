; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i64, i64, %struct.TYPE_2__*, %struct.asus_led, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.asus_led = type { i32, %struct.asus_laptop*, %struct.led_classdev }
%struct.led_classdev = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"led_workqueue\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TYPE_LED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"asus::wlan\00", align 1
@METHOD_WLAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"asus::bluetooth\00", align 1
@METHOD_BLUETOOTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"asus::mail\00", align 1
@METHOD_MLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"asus::touchpad\00", align 1
@METHOD_TLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"asus::record\00", align 1
@METHOD_RLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"asus::phone\00", align 1
@METHOD_PLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"asus::gaming\00", align 1
@METHOD_GLED = common dso_local global i32 0, align 4
@METHOD_KBD_LIGHT_SET = common dso_local global i32 0, align 4
@METHOD_KBD_LIGHT_GET = common dso_local global i32 0, align 4
@asus_kled_cdev_update = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"asus::kbd_backlight\00", align 1
@asus_kled_cdev_set = common dso_local global i32 0, align 4
@asus_kled_cdev_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*)* @asus_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_led_init(%struct.asus_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_laptop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asus_led*, align 8
  %6 = alloca %struct.led_classdev*, align 8
  store %struct.asus_laptop* %0, %struct.asus_laptop** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %8 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %7, i32 0, i32 13
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %151

12:                                               ; preds = %1
  %13 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %15 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 8
  %16 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %17 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %151

23:                                               ; preds = %12
  %24 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %25 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TYPE_LED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %31 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %32 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %31, i32 0, i32 11
  %33 = load i32, i32* @METHOD_WLAN, align 4
  %34 = call i32 @asus_led_register(%struct.asus_laptop* %30, i32* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %143

39:                                               ; preds = %35
  %40 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %41 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TYPE_LED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %47 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %48 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %47, i32 0, i32 10
  %49 = load i32, i32* @METHOD_BLUETOOTH, align 4
  %50 = call i32 @asus_led_register(%struct.asus_laptop* %46, i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %143

55:                                               ; preds = %51
  %56 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %57 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %58 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %57, i32 0, i32 9
  %59 = load i32, i32* @METHOD_MLED, align 4
  %60 = call i32 @asus_led_register(%struct.asus_laptop* %56, i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %143

64:                                               ; preds = %55
  %65 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %66 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %67 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %66, i32 0, i32 8
  %68 = load i32, i32* @METHOD_TLED, align 4
  %69 = call i32 @asus_led_register(%struct.asus_laptop* %65, i32* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %143

73:                                               ; preds = %64
  %74 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %75 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %76 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %75, i32 0, i32 7
  %77 = load i32, i32* @METHOD_RLED, align 4
  %78 = call i32 @asus_led_register(%struct.asus_laptop* %74, i32* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %143

82:                                               ; preds = %73
  %83 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %84 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %85 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %84, i32 0, i32 6
  %86 = load i32, i32* @METHOD_PLED, align 4
  %87 = call i32 @asus_led_register(%struct.asus_laptop* %83, i32* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %143

91:                                               ; preds = %82
  %92 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %93 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %94 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %93, i32 0, i32 5
  %95 = load i32, i32* @METHOD_GLED, align 4
  %96 = call i32 @asus_led_register(%struct.asus_laptop* %92, i32* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %143

100:                                              ; preds = %91
  %101 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %102 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @METHOD_KBD_LIGHT_SET, align 4
  %105 = call i32 @acpi_check_handle(i32 %103, i32 %104, i32* null)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %142, label %107

107:                                              ; preds = %100
  %108 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %109 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @METHOD_KBD_LIGHT_GET, align 4
  %112 = call i32 @acpi_check_handle(i32 %110, i32 %111, i32* null)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %142, label %114

114:                                              ; preds = %107
  %115 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %116 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %115, i32 0, i32 3
  store %struct.asus_led* %116, %struct.asus_led** %5, align 8
  %117 = load %struct.asus_led*, %struct.asus_led** %5, align 8
  %118 = getelementptr inbounds %struct.asus_led, %struct.asus_led* %117, i32 0, i32 2
  store %struct.led_classdev* %118, %struct.led_classdev** %6, align 8
  %119 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %120 = load %struct.asus_led*, %struct.asus_led** %5, align 8
  %121 = getelementptr inbounds %struct.asus_led, %struct.asus_led* %120, i32 0, i32 1
  store %struct.asus_laptop* %119, %struct.asus_laptop** %121, align 8
  %122 = load %struct.asus_led*, %struct.asus_led** %5, align 8
  %123 = getelementptr inbounds %struct.asus_led, %struct.asus_led* %122, i32 0, i32 0
  %124 = load i32, i32* @asus_kled_cdev_update, align 4
  %125 = call i32 @INIT_WORK(i32* %123, i32 %124)
  %126 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %127 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %126, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %127, align 8
  %128 = load i32, i32* @asus_kled_cdev_set, align 4
  %129 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %130 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @asus_kled_cdev_get, align 4
  %132 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %133 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %135 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %134, i32 0, i32 1
  store i32 3, i32* %135, align 8
  %136 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %137 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %136, i32 0, i32 2
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %141 = call i32 @led_classdev_register(i32* %139, %struct.led_classdev* %140)
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %114, %107, %100
  br label %143

143:                                              ; preds = %142, %99, %90, %81, %72, %63, %54, %38
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %148 = call i32 @asus_led_exit(%struct.asus_laptop* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %20, %11
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @asus_led_register(%struct.asus_laptop*, i32*, i8*, i32) #1

declare dso_local i32 @acpi_check_handle(i32, i32, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.led_classdev*) #1

declare dso_local i32 @asus_led_exit(%struct.asus_laptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
