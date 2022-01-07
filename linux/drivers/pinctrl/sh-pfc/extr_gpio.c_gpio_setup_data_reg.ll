; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_gpio_setup_data_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_gpio_setup_data_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc_chip = type { %struct.sh_pfc_gpio_pin*, %struct.sh_pfc* }
%struct.sh_pfc_gpio_pin = type { i32, i32 }
%struct.sh_pfc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pinmux_data_reg*, %struct.sh_pfc_pin* }
%struct.pinmux_data_reg = type { i32, i64* }
%struct.sh_pfc_pin = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_pfc_chip*, i32)* @gpio_setup_data_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_setup_data_reg(%struct.sh_pfc_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_pfc_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_pfc*, align 8
  %6 = alloca %struct.sh_pfc_gpio_pin*, align 8
  %7 = alloca %struct.sh_pfc_pin*, align 8
  %8 = alloca %struct.pinmux_data_reg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sh_pfc_chip* %0, %struct.sh_pfc_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %12 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %11, i32 0, i32 1
  %13 = load %struct.sh_pfc*, %struct.sh_pfc** %12, align 8
  store %struct.sh_pfc* %13, %struct.sh_pfc** %5, align 8
  %14 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %15 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %14, i32 0, i32 0
  %16 = load %struct.sh_pfc_gpio_pin*, %struct.sh_pfc_gpio_pin** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sh_pfc_gpio_pin, %struct.sh_pfc_gpio_pin* %16, i64 %18
  store %struct.sh_pfc_gpio_pin* %19, %struct.sh_pfc_gpio_pin** %6, align 8
  %20 = load %struct.sh_pfc*, %struct.sh_pfc** %5, align 8
  %21 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %24, i64 %26
  store %struct.sh_pfc_pin* %27, %struct.sh_pfc_pin** %7, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.sh_pfc*, %struct.sh_pfc** %5, align 8
  %29 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %31, align 8
  store %struct.pinmux_data_reg* %32, %struct.pinmux_data_reg** %8, align 8
  br label %33

33:                                               ; preds = %69, %2
  %34 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %8, align 8
  %35 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %65, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %8, align 8
  %42 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %39
  %46 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %8, align 8
  %47 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %7, align 8
  %54 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.sh_pfc_gpio_pin*, %struct.sh_pfc_gpio_pin** %6, align 8
  %60 = getelementptr inbounds %struct.sh_pfc_gpio_pin, %struct.sh_pfc_gpio_pin* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.sh_pfc_gpio_pin*, %struct.sh_pfc_gpio_pin** %6, align 8
  %63 = getelementptr inbounds %struct.sh_pfc_gpio_pin, %struct.sh_pfc_gpio_pin* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %76

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %39

68:                                               ; preds = %39
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %8, align 8
  %73 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %72, i32 1
  store %struct.pinmux_data_reg* %73, %struct.pinmux_data_reg** %8, align 8
  br label %33

74:                                               ; preds = %33
  %75 = call i32 (...) @BUG()
  br label %76

76:                                               ; preds = %74, %57
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
