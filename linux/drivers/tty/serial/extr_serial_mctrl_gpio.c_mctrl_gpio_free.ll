; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mctrl_gpios = type { i64*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UART_GPIO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mctrl_gpio_free(%struct.device* %0, %struct.mctrl_gpios* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mctrl_gpios*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.mctrl_gpios* %1, %struct.mctrl_gpios** %4, align 8
  %6 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %7 = icmp eq %struct.mctrl_gpios* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %65

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %58, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @UART_GPIO_MAX, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %16 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  %24 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %25 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %30 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %37 = call i32 @devm_free_irq(i32 %28, i64 %35, %struct.mctrl_gpios* %36)
  br label %38

38:                                               ; preds = %23, %14
  %39 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %40 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %50 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @devm_gpiod_put(%struct.device* %48, i64 %55)
  br label %57

57:                                               ; preds = %47, %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %10

61:                                               ; preds = %10
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %64 = call i32 @devm_kfree(%struct.device* %62, %struct.mctrl_gpios* %63)
  br label %65

65:                                               ; preds = %61, %8
  ret void
}

declare dso_local i32 @devm_free_irq(i32, i64, %struct.mctrl_gpios*) #1

declare dso_local i32 @devm_gpiod_put(%struct.device*, i64) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.mctrl_gpios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
