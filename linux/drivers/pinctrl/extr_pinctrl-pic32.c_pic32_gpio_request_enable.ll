; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.pic32_pinctrl = type { i32 }
%struct.pic32_gpio_bank = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"requesting gpio %d in bank %d with mask 0x%x\0A\00", align 1
@ANSEL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @pic32_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pic32_pinctrl*, align 8
  %8 = alloca %struct.pic32_gpio_bank*, align 8
  %9 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = call %struct.pic32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.pic32_pinctrl* %11, %struct.pic32_pinctrl** %7, align 8
  %12 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %5, align 8
  %13 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pic32_gpio_bank* @gpiochip_get_data(i32 %14)
  store %struct.pic32_gpio_bank* %15, %struct.pic32_gpio_bank** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %8, align 8
  %18 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub i32 %16, %20
  %22 = call i32 @BIT(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.pic32_pinctrl*, %struct.pic32_pinctrl** %7, align 8
  %24 = getelementptr inbounds %struct.pic32_pinctrl, %struct.pic32_pinctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %8, align 8
  %28 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %8, align 8
  %35 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ANSEL_REG, align 4
  %38 = call i64 @PIC32_CLR(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @writel(i32 %33, i64 %39)
  ret i32 0
}

declare dso_local %struct.pic32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pic32_gpio_bank* @gpiochip_get_data(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @PIC32_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
