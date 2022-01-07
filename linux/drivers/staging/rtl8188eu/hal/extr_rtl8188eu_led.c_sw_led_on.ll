; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_led.c_sw_led_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188eu_led.c_sw_led_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i64 }
%struct.LED_871x = type { i32 }

@REG_LEDCFG2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sw_led_on(%struct.adapter* %0, %struct.LED_871x* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.LED_871x*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.LED_871x* %1, %struct.LED_871x** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %31

16:                                               ; preds = %10
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load i32, i32* @REG_LEDCFG2, align 4
  %19 = call i32 @usb_read8(%struct.adapter* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = load i32, i32* @REG_LEDCFG2, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 240
  %24 = call i32 @BIT(i32 5)
  %25 = or i32 %23, %24
  %26 = call i32 @BIT(i32 6)
  %27 = or i32 %25, %26
  %28 = call i32 @usb_write8(%struct.adapter* %20, i32 %21, i32 %27)
  %29 = load %struct.LED_871x*, %struct.LED_871x** %4, align 8
  %30 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
