; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_palmtc.c_palmtc_wifi_powerup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_palmtc.c_palmtc_wifi_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_NR_PALMTC_PCMCIA_POWER3 = common dso_local global i32 0, align 4
@GPIO_NR_PALMTC_PCMCIA_POWER1 = common dso_local global i32 0, align 4
@GPIO_NR_PALMTC_PCMCIA_POWER2 = common dso_local global i32 0, align 4
@GPIO_NR_PALMTC_PCMCIA_PWRREADY = common dso_local global i32 0, align 4
@GPIO_NR_PALMTC_PCMCIA_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @palmtc_wifi_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmtc_wifi_powerup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 50, i32* %2, align 4
  %3 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER3, align 4
  %4 = call i32 @gpio_set_value(i32 %3, i32 1)
  %5 = call i32 @mdelay(i32 50)
  %6 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER1, align 4
  %7 = call i32 @gpio_set_value(i32 %6, i32 1)
  %8 = call i32 @mdelay(i32 100)
  %9 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER2, align 4
  %10 = call i32 @gpio_set_value(i32 %9, i32 1)
  br label %11

11:                                               ; preds = %20, %0
  %12 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_PWRREADY, align 4
  %13 = call i32 @gpio_get_value(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i1 [ false, %11 ], [ %17, %15 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = call i32 @mdelay(i32 1)
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %2, align 4
  br label %11

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32 (...) @palmtc_wifi_powerdown()
  store i32 1, i32* %1, align 4
  br label %38

29:                                               ; preds = %24
  %30 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_RESET, align 4
  %31 = call i32 @gpio_set_value(i32 %30, i32 1)
  %32 = call i32 @mdelay(i32 20)
  %33 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_RESET, align 4
  %34 = call i32 @gpio_set_value(i32 %33, i32 0)
  %35 = call i32 @mdelay(i32 25)
  %36 = load i32, i32* @GPIO_NR_PALMTC_PCMCIA_POWER3, align 4
  %37 = call i32 @gpio_set_value(i32 %36, i32 0)
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %29, %27
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @palmtc_wifi_powerdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
