; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.as3722_pctrl_info = type { i32, %struct.as3722* }
%struct.as3722 = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"GPIO_CONTROL%d_REG read failed: %d\0A\00", align 1
@AS3722_GPIO_INV = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_MASK = common dso_local global i32 0, align 4
@AS3722_GPIO_SIGNAL_IN_REG = common dso_local global i32 0, align 4
@AS3722_GPIO_SIGNAL_OUT_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"GPIO_SIGNAL_IN_REG read failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @as3722_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.as3722_pctrl_info*, align 8
  %7 = alloca %struct.as3722*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = call %struct.as3722_pctrl_info* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.as3722_pctrl_info* %15, %struct.as3722_pctrl_info** %6, align 8
  %16 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %6, align 8
  %17 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %16, i32 0, i32 1
  %18 = load %struct.as3722*, %struct.as3722** %17, align 8
  store %struct.as3722* %18, %struct.as3722** %7, align 8
  %19 = load %struct.as3722*, %struct.as3722** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @AS3722_GPIOn_CONTROL_REG(i32 %20)
  %22 = call i32 @as3722_read(%struct.as3722* %19, i32 %21, i32* %10)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %6, align 8
  %27 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %85

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @AS3722_GPIO_INV, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @AS3722_GPIO_MODE_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  switch i32 %44, label %49 [
    i32 134, label %45
    i32 132, label %45
    i32 133, label %45
    i32 131, label %45
    i32 130, label %45
    i32 129, label %47
    i32 128, label %47
  ]

45:                                               ; preds = %33, %33, %33, %33, %33
  %46 = load i32, i32* @AS3722_GPIO_SIGNAL_IN_REG, align 4
  store i32 %46, i32* %9, align 4
  br label %52

47:                                               ; preds = %33, %33
  %48 = load i32, i32* @AS3722_GPIO_SIGNAL_OUT_REG, align 4
  store i32 %48, i32* %9, align 4
  br label %52

49:                                               ; preds = %33
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %85

52:                                               ; preds = %47, %45
  %53 = load %struct.as3722*, %struct.as3722** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @as3722_read(%struct.as3722* %53, i32 %54, i32* %11)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %6, align 8
  %60 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %85

65:                                               ; preds = %52
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @AS3722_GPIOn_SIGNAL(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  br label %83

81:                                               ; preds = %65
  %82 = load i32, i32* %11, align 4
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi i32 [ %80, %76 ], [ %82, %81 ]
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %58, %49, %25
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.as3722_pctrl_info* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @as3722_read(%struct.as3722*, i32, i32*) #1

declare dso_local i32 @AS3722_GPIOn_CONTROL_REG(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @AS3722_GPIOn_SIGNAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
