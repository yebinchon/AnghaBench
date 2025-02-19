; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mctrl_gpios = type { %struct.gpio_desc** }
%struct.gpio_desc = type { i32 }

@UART_GPIO_MAX = common dso_local global i32 0, align 4
@values = common dso_local global i32 0, align 4
@mctrl_gpios_desc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mctrl_gpio_set(%struct.mctrl_gpios* %0, i32 %1) #0 {
  %3 = alloca %struct.mctrl_gpios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mctrl_gpios* %0, %struct.mctrl_gpios** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @UART_GPIO_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca %struct.gpio_desc*, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @values, align 4
  %15 = load i32, i32* @UART_GPIO_MAX, align 4
  %16 = call i32 @DECLARE_BITMAP(i32 %14, i32 %15)
  store i32 0, i32* %8, align 4
  %17 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %3, align 8
  %18 = icmp eq %struct.mctrl_gpios* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %70

20:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %63, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @UART_GPIO_MAX, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %3, align 8
  %27 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %26, i32 0, i32 0
  %28 = load %struct.gpio_desc**, %struct.gpio_desc*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %28, i64 %30
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %31, align 8
  %33 = icmp ne %struct.gpio_desc* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @mctrl_gpio_flags_is_dir_out(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %3, align 8
  %40 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %39, i32 0, i32 0
  %41 = load %struct.gpio_desc**, %struct.gpio_desc*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %41, i64 %43
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %13, i64 %47
  store %struct.gpio_desc* %45, %struct.gpio_desc** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @values, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mctrl_gpios_desc, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %51, %57
  %59 = call i32 @__assign_bit(i32 %49, i32 %50, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %38, %34, %25
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %21

66:                                               ; preds = %21
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @values, align 4
  %69 = call i32 @gpiod_set_array_value(i32 %67, %struct.gpio_desc** %13, i32* null, i32 %68)
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %66, %19
  %71 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %9, align 4
  switch i32 %72, label %74 [
    i32 0, label %73
    i32 1, label %73
  ]

73:                                               ; preds = %70, %70
  ret void

74:                                               ; preds = %70
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #2

declare dso_local i64 @mctrl_gpio_flags_is_dir_out(i32) #2

declare dso_local i32 @__assign_bit(i32, i32, i32) #2

declare dso_local i32 @gpiod_set_array_value(i32, %struct.gpio_desc**, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
