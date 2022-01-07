; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wmt_pinctrl_data = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NO_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"no data in register defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @wmt_gpio_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmt_gpio_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmt_pinctrl_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.wmt_pinctrl_data* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.wmt_pinctrl_data* %11, %struct.wmt_pinctrl_data** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @WMT_BANK_FROM_PIN(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @WMT_BIT_FROM_PIN(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %6, align 8
  %17 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @NO_REG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %6, align 8
  %28 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %47

33:                                               ; preds = %2
  %34 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %6, align 8
  %35 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %36, %37
  %39 = call i32 @readl_relaxed(i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @BIT(i64 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %33, %26
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.wmt_pinctrl_data* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @WMT_BANK_FROM_PIN(i32) #1

declare dso_local i64 @WMT_BIT_FROM_PIN(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
