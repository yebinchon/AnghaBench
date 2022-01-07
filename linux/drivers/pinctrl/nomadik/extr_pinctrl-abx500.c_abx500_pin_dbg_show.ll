; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_pin_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_pin_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.abx500_pinctrl = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @abx500_pin_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abx500_pin_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.abx500_pinctrl*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %10 = call %struct.abx500_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %9)
  store %struct.abx500_pinctrl* %10, %struct.abx500_pinctrl** %7, align 8
  %11 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %7, align 8
  %12 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %11, i32 0, i32 0
  store %struct.gpio_chip* %12, %struct.gpio_chip** %8, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %19, %20
  %22 = sub i32 %21, 1
  %23 = call i32 @abx500_gpio_dbg_show_one(%struct.seq_file* %13, %struct.pinctrl_dev* %14, %struct.gpio_chip* %15, i32 %16, i32 %22)
  ret void
}

declare dso_local %struct.abx500_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @abx500_gpio_dbg_show_one(%struct.seq_file*, %struct.pinctrl_dev*, %struct.gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
