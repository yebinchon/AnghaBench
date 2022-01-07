; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_gpio_pin_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_gpio.c_gpio_pin_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc_chip = type { i32*, %struct.gpio_chip, %struct.sh_pfc* }
%struct.gpio_chip = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sh_pfc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpio_pin_request = common dso_local global i32 0, align 4
@gpio_pin_free = common dso_local global i32 0, align 4
@gpio_pin_direction_input = common dso_local global i32 0, align 4
@gpio_pin_get = common dso_local global i32 0, align 4
@gpio_pin_direction_output = common dso_local global i32 0, align 4
@gpio_pin_set = common dso_local global i32 0, align 4
@gpio_pin_to_irq = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_pfc_chip*)* @gpio_pin_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_pin_setup(%struct.sh_pfc_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_pfc_chip*, align 8
  %4 = alloca %struct.sh_pfc*, align 8
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.sh_pfc_chip* %0, %struct.sh_pfc_chip** %3, align 8
  %7 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %8 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %7, i32 0, i32 2
  %9 = load %struct.sh_pfc*, %struct.sh_pfc** %8, align 8
  store %struct.sh_pfc* %9, %struct.sh_pfc** %4, align 8
  %10 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %11 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %10, i32 0, i32 1
  store %struct.gpio_chip* %11, %struct.gpio_chip** %5, align 8
  %12 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %13 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %16 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @devm_kcalloc(i32 %14, i32 %19, i32 4, i32 %20)
  %22 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %23 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %25 = getelementptr inbounds %struct.sh_pfc_chip, %struct.sh_pfc_chip* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %82

31:                                               ; preds = %1
  %32 = load %struct.sh_pfc_chip*, %struct.sh_pfc_chip** %3, align 8
  %33 = call i32 @gpio_setup_data_regs(%struct.sh_pfc_chip* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load i32, i32* @gpio_pin_request, align 4
  %40 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %41 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @gpio_pin_free, align 4
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @gpio_pin_direction_input, align 4
  %46 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %47 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @gpio_pin_get, align 4
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @gpio_pin_direction_output, align 4
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %53 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @gpio_pin_set, align 4
  %55 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %56 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @gpio_pin_to_irq, align 4
  %58 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %59 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %61 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %66 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %68 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %71 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @THIS_MODULE, align 4
  %73 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %74 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %76 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %78 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %81 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %38, %36, %28
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_setup_data_regs(%struct.sh_pfc_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
