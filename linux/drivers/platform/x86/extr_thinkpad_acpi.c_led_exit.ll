; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_led_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_led_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@TPACPI_LED_NUMLEDS = common dso_local global i32 0, align 4
@tpacpi_leds = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @led_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_exit() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %23, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @TPACPI_LED_NUMLEDS, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tpacpi_leds, align 8
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tpacpi_leds, align 8
  %17 = load i32, i32* %1, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %20)
  br label %22

22:                                               ; preds = %15, %6
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %1, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %2

26:                                               ; preds = %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tpacpi_leds, align 8
  %28 = call i32 @kfree(%struct.TYPE_4__* %27)
  ret void
}

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
