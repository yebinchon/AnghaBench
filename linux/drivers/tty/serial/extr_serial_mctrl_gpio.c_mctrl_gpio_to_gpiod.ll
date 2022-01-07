; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_to_gpiod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_to_gpiod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.mctrl_gpios = type { %struct.gpio_desc** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gpio_desc* @mctrl_gpio_to_gpiod(%struct.mctrl_gpios* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_desc*, align 8
  %4 = alloca %struct.mctrl_gpios*, align 8
  %5 = alloca i32, align 4
  store %struct.mctrl_gpios* %0, %struct.mctrl_gpios** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %7 = icmp eq %struct.mctrl_gpios* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.gpio_desc* null, %struct.gpio_desc** %3, align 8
  br label %17

9:                                                ; preds = %2
  %10 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %11 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %10, i32 0, i32 0
  %12 = load %struct.gpio_desc**, %struct.gpio_desc*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %12, i64 %14
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %15, align 8
  store %struct.gpio_desc* %16, %struct.gpio_desc** %3, align 8
  br label %17

17:                                               ; preds = %9, %8
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  ret %struct.gpio_desc* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
