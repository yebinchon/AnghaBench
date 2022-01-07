; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.sh_pfc_pinctrl = type { %struct.sh_pfc_pin_config*, %struct.sh_pfc* }
%struct.sh_pfc_pin_config = type { i32 }
%struct.sh_pfc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.sh_pfc_pin* }
%struct.sh_pfc_pin = type { i32 }

@PINMUX_TYPE_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @sh_pfc_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_pfc_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_pfc_pinctrl*, align 8
  %8 = alloca %struct.sh_pfc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sh_pfc_pin_config*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sh_pfc_pin*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %15 = call %struct.sh_pfc_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.sh_pfc_pinctrl* %15, %struct.sh_pfc_pinctrl** %7, align 8
  %16 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %7, align 8
  %17 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %16, i32 0, i32 1
  %18 = load %struct.sh_pfc*, %struct.sh_pfc** %17, align 8
  store %struct.sh_pfc* %18, %struct.sh_pfc** %8, align 8
  %19 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sh_pfc_get_pin_index(%struct.sh_pfc* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %7, align 8
  %23 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %22, i32 0, i32 0
  %24 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %24, i64 %26
  store %struct.sh_pfc_pin_config* %27, %struct.sh_pfc_pin_config** %10, align 8
  %28 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %29 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %33 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %3
  %37 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %38 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %41, i64 %43
  store %struct.sh_pfc_pin* %44, %struct.sh_pfc_pin** %13, align 8
  %45 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %46 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %13, align 8
  %47 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PINMUX_TYPE_GPIO, align 4
  %50 = call i32 @sh_pfc_config_mux(%struct.sh_pfc* %45, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %58

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %10, align 8
  %57 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %55, %53
  %59 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %60 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %59, i32 0, i32 0
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %12, align 4
  ret i32 %63
}

declare dso_local %struct.sh_pfc_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @sh_pfc_get_pin_index(%struct.sh_pfc*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh_pfc_config_mux(%struct.sh_pfc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
