; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_gpio_disable_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_gpio_disable_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.sh_pfc_pinctrl = type { %struct.sh_pfc_pin_config*, %struct.sh_pfc* }
%struct.sh_pfc_pin_config = type { i32, i32, i64 }
%struct.sh_pfc = type { i32 }

@PINMUX_TYPE_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @sh_pfc_gpio_disable_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_pfc_gpio_disable_free(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_pfc_pinctrl*, align 8
  %8 = alloca %struct.sh_pfc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sh_pfc_pin_config*, align 8
  %11 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %13 = call %struct.sh_pfc_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.sh_pfc_pinctrl* %13, %struct.sh_pfc_pinctrl** %7, align 8
  %14 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %7, align 8
  %15 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %14, i32 0, i32 1
  %16 = load %struct.sh_pfc*, %struct.sh_pfc** %15, align 8
  store %struct.sh_pfc* %16, %struct.sh_pfc** %8, align 8
  %17 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @sh_pfc_get_pin_index(%struct.sh_pfc* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.sh_pfc_pinctrl*, %struct.sh_pfc_pinctrl** %7, align 8
  %21 = getelementptr inbounds %struct.sh_pfc_pinctrl, %struct.sh_pfc_pinctrl* %20, i32 0, i32 0
  %22 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %22, i64 %24
  store %struct.sh_pfc_pin_config* %25, %struct.sh_pfc_pin_config** %10, align 8
  %26 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %27 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %10, align 8
  %31 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %10, align 8
  %33 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %3
  %37 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %38 = load %struct.sh_pfc_pin_config*, %struct.sh_pfc_pin_config** %10, align 8
  %39 = getelementptr inbounds %struct.sh_pfc_pin_config, %struct.sh_pfc_pin_config* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PINMUX_TYPE_FUNCTION, align 4
  %42 = call i32 @sh_pfc_config_mux(%struct.sh_pfc* %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %3
  %44 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  %45 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %44, i32 0, i32 0
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
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
