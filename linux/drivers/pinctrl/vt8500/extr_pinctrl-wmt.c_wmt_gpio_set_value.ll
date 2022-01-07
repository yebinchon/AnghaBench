; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_gpio_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/vt8500/extr_pinctrl-wmt.c_wmt_gpio_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.wmt_pinctrl_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NO_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"no data out register defined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @wmt_gpio_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_gpio_set_value(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmt_pinctrl_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.wmt_pinctrl_data* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.wmt_pinctrl_data* %12, %struct.wmt_pinctrl_data** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @WMT_BANK_FROM_PIN(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @WMT_BIT_FROM_PIN(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %18 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @NO_REG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %29 = getelementptr inbounds %struct.wmt_pinctrl_data, %struct.wmt_pinctrl_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %47

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @BIT(i64 %38)
  %40 = call i32 @wmt_setbits(%struct.wmt_pinctrl_data* %36, i64 %37, i32 %39)
  br label %47

41:                                               ; preds = %32
  %42 = load %struct.wmt_pinctrl_data*, %struct.wmt_pinctrl_data** %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @BIT(i64 %44)
  %46 = call i32 @wmt_clearbits(%struct.wmt_pinctrl_data* %42, i64 %43, i32 %45)
  br label %47

47:                                               ; preds = %27, %41, %35
  ret void
}

declare dso_local %struct.wmt_pinctrl_data* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @WMT_BANK_FROM_PIN(i32) #1

declare dso_local i64 @WMT_BIT_FROM_PIN(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @wmt_setbits(%struct.wmt_pinctrl_data*, i64, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @wmt_clearbits(%struct.wmt_pinctrl_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
