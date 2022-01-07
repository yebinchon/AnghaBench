; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_get_outputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_get_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mctrl_gpios = type { i64* }

@UART_GPIO_MAX = common dso_local global i32 0, align 4
@mctrl_gpios_desc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mctrl_gpio_get_outputs(%struct.mctrl_gpios* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mctrl_gpios*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mctrl_gpios* %0, %struct.mctrl_gpios** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %8 = icmp eq %struct.mctrl_gpios* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  br label %69

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %63, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @UART_GPIO_MAX, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %13
  %18 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %19 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @mctrl_gpio_flags_is_dir_out(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %4, align 8
  %32 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @gpiod_get_value(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mctrl_gpios_desc, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %61

50:                                               ; preds = %30
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mctrl_gpios_desc, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, -1
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %50, %40
  br label %62

62:                                               ; preds = %61, %26, %17
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %13

66:                                               ; preds = %13
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %9
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @mctrl_gpio_flags_is_dir_out(i32) #1

declare dso_local i64 @gpiod_get_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
