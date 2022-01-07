; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_enable_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_enable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mctrl_gpios = type { i32, i32*, i32 }

@UART_GPIO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mctrl_gpio_enable_ms(%struct.mctrl_gpios* %0) #0 {
  %2 = alloca %struct.mctrl_gpios*, align 8
  %3 = alloca i32, align 4
  store %struct.mctrl_gpios* %0, %struct.mctrl_gpios** %2, align 8
  %4 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %5 = icmp eq %struct.mctrl_gpios* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %46

7:                                                ; preds = %1
  %8 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %9 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %46

13:                                               ; preds = %7
  %14 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %15 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %17 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %18 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %17, i32 0, i32 2
  %19 = call i32 @mctrl_gpio_get(%struct.mctrl_gpios* %16, i32* %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %43, %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @UART_GPIO_MAX, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %26 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %43

34:                                               ; preds = %24
  %35 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %2, align 8
  %36 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @enable_irq(i32 %41)
  br label %43

43:                                               ; preds = %34, %33
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %20

46:                                               ; preds = %6, %12, %20
  ret void
}

declare dso_local i32 @mctrl_gpio_get(%struct.mctrl_gpios*, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
