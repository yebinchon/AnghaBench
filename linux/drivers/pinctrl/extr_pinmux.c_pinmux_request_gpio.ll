; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_request_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinmux.c_pinmux_request_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinmux_request_gpio(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.pinctrl_gpio_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %7, align 8
  %14 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i8* @kasprintf(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %36

23:                                               ; preds = %4
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %7, align 8
  %28 = call i32 @pin_request(%struct.pinctrl_dev* %24, i32 %25, i8* %26, %struct.pinctrl_gpio_range* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @kfree(i8* %32)
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i8* @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @pin_request(%struct.pinctrl_dev*, i32, i8*, %struct.pinctrl_gpio_range*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
