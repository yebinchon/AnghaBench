; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_gpio_wdt.c_gpio_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_gpio_wdt.c_gpio_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.gpio_wdt_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @gpio_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.gpio_wdt_priv*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.gpio_wdt_priv* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.gpio_wdt_priv* %5, %struct.gpio_wdt_priv** %3, align 8
  %6 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %3, align 8
  %7 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %35 [
    i32 128, label %9
    i32 129, label %25
  ]

9:                                                ; preds = %1
  %10 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %3, align 8
  %17 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %3, align 8
  %22 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_set_value_cansleep(i32 %20, i32 %23)
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %3, align 8
  %27 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpiod_set_value_cansleep(i32 %28, i32 1)
  %30 = call i32 @udelay(i32 1)
  %31 = load %struct.gpio_wdt_priv*, %struct.gpio_wdt_priv** %3, align 8
  %32 = getelementptr inbounds %struct.gpio_wdt_priv, %struct.gpio_wdt_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gpiod_set_value_cansleep(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %1, %25, %9
  ret i32 0
}

declare dso_local %struct.gpio_wdt_priv* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
