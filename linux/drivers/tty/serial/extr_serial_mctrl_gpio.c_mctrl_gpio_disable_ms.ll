; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_disable_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_disable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mctrl_gpios = type { i32, i32* }

@UART_GPIO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mctrl_gpio_disable_ms(%struct.mctrl_gpios* %0) #0 {
  %2 = alloca %struct.mctrl_gpios*, align 8
  %3 = alloca i32, align 4
  store %struct.mctrl_gpios* %0, %struct.mctrl_gpios** %2, align 8
  %4 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %5 = icmp eq %struct.mctrl_gpios* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %42

7:                                                ; preds = %1
  %8 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %9 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %42

13:                                               ; preds = %7
  %14 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %15 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %39, %13
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @UART_GPIO_MAX, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %22 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %39

30:                                               ; preds = %20
  %31 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %32 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @disable_irq(i32 %37)
  br label %39

39:                                               ; preds = %30, %29
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %16

42:                                               ; preds = %6, %12, %16
  ret void
}

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
