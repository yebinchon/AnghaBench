; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi-led.c_led_blink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi-led.c_led_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERFACE_ERROR = common dso_local global i32 0, align 4
@DEVICE_ID_PANEL_BACK = common dso_local global i32 0, align 4
@CMD_LED_BLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8)* @led_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_blink(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* @INTERFACE_ERROR, align 4
  %6 = load i32, i32* @DEVICE_ID_PANEL_BACK, align 4
  %7 = load i32, i32* @CMD_LED_BLINK, align 4
  %8 = load i8, i8* %3, align 1
  %9 = load i8, i8* %4, align 1
  %10 = call i32 @dell_led_perform_fn(i32 5, i32 %5, i32 %6, i32 %7, i8 zeroext %8, i8 zeroext %9)
  ret i32 %10
}

declare dso_local i32 @dell_led_perform_fn(i32, i32, i32, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
