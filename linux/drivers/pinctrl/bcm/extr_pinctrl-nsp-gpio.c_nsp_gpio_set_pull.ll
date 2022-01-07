; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_set_pull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_set_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsp_gpio = type { i32, i32 }

@IO_CTRL = common dso_local global i32 0, align 4
@NSP_PULL_DOWN_EN = common dso_local global i32 0, align 4
@NSP_PULL_UP_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"gpio:%u set pullup:%d pulldown: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsp_gpio*, i32, i32, i32)* @nsp_gpio_set_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_gpio_set_pull(%struct.nsp_gpio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nsp_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.nsp_gpio* %0, %struct.nsp_gpio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nsp_gpio*, %struct.nsp_gpio** %5, align 8
  %11 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %10, i32 0, i32 1
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @raw_spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.nsp_gpio*, %struct.nsp_gpio** %5, align 8
  %15 = load i32, i32* @IO_CTRL, align 4
  %16 = load i32, i32* @NSP_PULL_DOWN_EN, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @nsp_set_bit(%struct.nsp_gpio* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.nsp_gpio*, %struct.nsp_gpio** %5, align 8
  %21 = load i32, i32* @IO_CTRL, align 4
  %22 = load i32, i32* @NSP_PULL_UP_EN, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @nsp_set_bit(%struct.nsp_gpio* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.nsp_gpio*, %struct.nsp_gpio** %5, align 8
  %27 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %26, i32 0, i32 1
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @raw_spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.nsp_gpio*, %struct.nsp_gpio** %5, align 8
  %31 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  ret i32 0
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nsp_set_bit(%struct.nsp_gpio*, i32, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
