; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.as3722_pctrl_info = type { i32, %struct.as3722* }
%struct.as3722 = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"GPIO_CONTROL%d_REG read failed: %d\0A\00", align 1
@AS3722_GPIO_INV = common dso_local global i32 0, align 4
@AS3722_GPIO_SIGNAL_OUT_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"GPIO_SIGNAL_OUT_REG update failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @as3722_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as3722_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.as3722_pctrl_info*, align 8
  %8 = alloca %struct.as3722*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.as3722_pctrl_info* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.as3722_pctrl_info* %13, %struct.as3722_pctrl_info** %7, align 8
  %14 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %7, align 8
  %15 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %14, i32 0, i32 1
  %16 = load %struct.as3722*, %struct.as3722** %15, align 8
  store %struct.as3722* %16, %struct.as3722** %8, align 8
  %17 = load %struct.as3722*, %struct.as3722** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @AS3722_GPIOn_CONTROL_REG(i32 %18)
  %20 = call i32 @as3722_read(%struct.as3722* %17, i32 %19, i32* %10)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %7, align 8
  %25 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  br label %73

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @AS3722_GPIO_INV, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @AS3722_GPIOn_SIGNAL(i32 %45)
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  store i32 %48, i32* %10, align 4
  br label %58

49:                                               ; preds = %30
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @AS3722_GPIOn_SIGNAL(i32 %53)
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %47
  %59 = load %struct.as3722*, %struct.as3722** %8, align 8
  %60 = load i32, i32* @AS3722_GPIO_SIGNAL_OUT_REG, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @AS3722_GPIOn_SIGNAL(i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @as3722_update_bits(%struct.as3722* %59, i32 %60, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.as3722_pctrl_info*, %struct.as3722_pctrl_info** %7, align 8
  %69 = getelementptr inbounds %struct.as3722_pctrl_info, %struct.as3722_pctrl_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %23, %67, %58
  ret void
}

declare dso_local %struct.as3722_pctrl_info* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @as3722_read(%struct.as3722*, i32, i32*) #1

declare dso_local i32 @AS3722_GPIOn_CONTROL_REG(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @AS3722_GPIOn_SIGNAL(i32) #1

declare dso_local i32 @as3722_update_bits(%struct.as3722*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
