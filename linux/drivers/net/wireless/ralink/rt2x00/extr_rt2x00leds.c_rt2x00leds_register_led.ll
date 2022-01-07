; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00leds.c_rt2x00leds_register_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00leds.c_rt2x00leds_register_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rt2x00_led = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.device = type { i32 }

@LED_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to register led handler\0A\00", align 1
@LED_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, %struct.rt2x00_led*, i8*)* @rt2x00leds_register_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00leds_register_led(%struct.rt2x00_dev* %0, %struct.rt2x00_led* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00_led*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00_led* %1, %struct.rt2x00_led** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device* @wiphy_dev(i32 %14)
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.rt2x00_led*, %struct.rt2x00_led** %6, align 8
  %18 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load i32, i32* @LED_OFF, align 4
  %21 = load %struct.rt2x00_led*, %struct.rt2x00_led** %6, align 8
  %22 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load %struct.rt2x00_led*, %struct.rt2x00_led** %6, align 8
  %26 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %25, i32 0, i32 1
  %27 = call i32 @led_classdev_register(%struct.device* %24, %struct.TYPE_4__* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %32 = call i32 @rt2x00_err(%struct.rt2x00_dev* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %40

34:                                               ; preds = %3
  %35 = load i32, i32* @LED_REGISTERED, align 4
  %36 = load %struct.rt2x00_led*, %struct.rt2x00_led** %6, align 8
  %37 = getelementptr inbounds %struct.rt2x00_led, %struct.rt2x00_led* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.device* @wiphy_dev(i32) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
