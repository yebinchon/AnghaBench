; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-coh901.c_u300_gpio_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-coh901.c_u300_gpio_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.u300_gpio = type { i32 }

@per = common dso_local global i32 0, align 4
@pcr = common dso_local global i32 0, align 4
@U300_GPIO_PXPCR_PIN_MODE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL = common dso_local global i32 0, align 4
@U300_GPIO_PXPCR_PIN_MODE_OUTPUT_OPEN_DRAIN = common dso_local global i32 0, align 4
@U300_GPIO_PXPCR_PIN_MODE_OUTPUT_OPEN_SOURCE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @u300_gpio_config_get(%struct.gpio_chip* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.u300_gpio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = call %struct.u300_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.u300_gpio* %13, %struct.u300_gpio** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @per, align 4
  %19 = call i32 @U300_PIN_REG(i32 %17, i32 %18)
  %20 = call i32 @readl(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @U300_PIN_BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @pcr, align 4
  %30 = call i32 @U300_PIN_REG(i32 %28, i32 %29)
  %31 = call i32 @readl(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_MASK, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 7
  %35 = shl i32 %34, 1
  %36 = shl i32 %32, %35
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 7
  %41 = shl i32 %40, 1
  %42 = load i32, i32* %11, align 4
  %43 = lshr i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %88 [
    i32 132, label %45
    i32 131, label %53
    i32 128, label %61
    i32 130, label %70
    i32 129, label %79
  ]

45:                                               ; preds = %3
  %46 = load i64*, i64** %7, align 8
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %92

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %92

53:                                               ; preds = %3
  %54 = load i64*, i64** %7, align 8
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %92

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %92

61:                                               ; preds = %3
  %62 = load i64*, i64** %7, align 8
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %92

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %92

70:                                               ; preds = %3
  %71 = load i64*, i64** %7, align 8
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_OUTPUT_OPEN_DRAIN, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %92

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %92

79:                                               ; preds = %3
  %80 = load i64*, i64** %7, align 8
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_OUTPUT_OPEN_SOURCE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %92

85:                                               ; preds = %79
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %92

88:                                               ; preds = %3
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* @ENOTSUPP, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %85, %84, %76, %75, %67, %66, %58, %57, %50, %49
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.u300_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @U300_PIN_REG(i32, i32) #1

declare dso_local i32 @U300_PIN_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
