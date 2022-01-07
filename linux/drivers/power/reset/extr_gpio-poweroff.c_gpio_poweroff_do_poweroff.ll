; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_gpio-poweroff.c_gpio_poweroff_do_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_gpio-poweroff.c_gpio_poweroff_do_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reset_gpio = common dso_local global i32 0, align 4
@active_delay = common dso_local global i32 0, align 4
@inactive_delay = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gpio_poweroff_do_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_poweroff_do_poweroff() #0 {
  %1 = load i32, i32* @reset_gpio, align 4
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @BUG_ON(i32 %4)
  %6 = load i32, i32* @reset_gpio, align 4
  %7 = call i32 @gpiod_direction_output(i32 %6, i32 1)
  %8 = load i32, i32* @active_delay, align 4
  %9 = call i32 @mdelay(i32 %8)
  %10 = load i32, i32* @reset_gpio, align 4
  %11 = call i32 @gpiod_set_value_cansleep(i32 %10, i32 0)
  %12 = load i32, i32* @inactive_delay, align 4
  %13 = call i32 @mdelay(i32 %12)
  %14 = load i32, i32* @reset_gpio, align 4
  %15 = call i32 @gpiod_set_value_cansleep(i32 %14, i32 1)
  %16 = load i32, i32* @timeout, align 4
  %17 = call i32 @mdelay(i32 %16)
  %18 = call i32 @WARN_ON(i32 1)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
