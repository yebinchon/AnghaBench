; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_gpio-charger.c_gpio_charger_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_gpio-charger.c_gpio_charger_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpio_desc = type { i32 }

@gpio_charger_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to request irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, %struct.gpio_desc*)* @gpio_charger_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_charger_get_irq(%struct.device* %0, i8* %1, %struct.gpio_desc* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.gpio_desc* %2, %struct.gpio_desc** %6, align 8
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %10 = call i32 @gpiod_to_irq(%struct.gpio_desc* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @gpio_charger_irq, align 4
  %17 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %18 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_name(%struct.device* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @devm_request_any_context_irq(%struct.device* %14, i32 %15, i32 %16, i32 %19, i32 %21, i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %26, %13
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.device*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
