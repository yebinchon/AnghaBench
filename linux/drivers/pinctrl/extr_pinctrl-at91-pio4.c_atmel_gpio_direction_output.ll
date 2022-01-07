; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.atmel_pioctrl = type { %struct.atmel_pin** }
%struct.atmel_pin = type { i32, i32 }

@ATMEL_PIO_SODR = common dso_local global i32 0, align 4
@ATMEL_PIO_CODR = common dso_local global i32 0, align 4
@ATMEL_PIO_MSKR = common dso_local global i32 0, align 4
@ATMEL_PIO_CFGR = common dso_local global i32 0, align 4
@ATMEL_PIO_DIR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @atmel_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_pioctrl*, align 8
  %8 = alloca %struct.atmel_pin*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.atmel_pioctrl* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.atmel_pioctrl* %11, %struct.atmel_pioctrl** %7, align 8
  %12 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %13 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %12, i32 0, i32 0
  %14 = load %struct.atmel_pin**, %struct.atmel_pin*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.atmel_pin*, %struct.atmel_pin** %14, i64 %16
  %18 = load %struct.atmel_pin*, %struct.atmel_pin** %17, align 8
  store %struct.atmel_pin* %18, %struct.atmel_pin** %8, align 8
  %19 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %20 = load %struct.atmel_pin*, %struct.atmel_pin** %8, align 8
  %21 = getelementptr inbounds %struct.atmel_pin, %struct.atmel_pin* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ATMEL_PIO_SODR, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ATMEL_PIO_CODR, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.atmel_pin*, %struct.atmel_pin** %8, align 8
  %32 = getelementptr inbounds %struct.atmel_pin, %struct.atmel_pin* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = call i32 @atmel_gpio_write(%struct.atmel_pioctrl* %19, i32 %22, i32 %30, i32 %34)
  %36 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %37 = load %struct.atmel_pin*, %struct.atmel_pin** %8, align 8
  %38 = getelementptr inbounds %struct.atmel_pin, %struct.atmel_pin* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATMEL_PIO_MSKR, align 4
  %41 = load %struct.atmel_pin*, %struct.atmel_pin** %8, align 8
  %42 = getelementptr inbounds %struct.atmel_pin, %struct.atmel_pin* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = call i32 @atmel_gpio_write(%struct.atmel_pioctrl* %36, i32 %39, i32 %40, i32 %44)
  %46 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %47 = load %struct.atmel_pin*, %struct.atmel_pin** %8, align 8
  %48 = getelementptr inbounds %struct.atmel_pin, %struct.atmel_pin* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ATMEL_PIO_CFGR, align 4
  %51 = call i32 @atmel_gpio_read(%struct.atmel_pioctrl* %46, i32 %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @ATMEL_PIO_DIR_MASK, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %56 = load %struct.atmel_pin*, %struct.atmel_pin** %8, align 8
  %57 = getelementptr inbounds %struct.atmel_pin, %struct.atmel_pin* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATMEL_PIO_CFGR, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @atmel_gpio_write(%struct.atmel_pioctrl* %55, i32 %58, i32 %59, i32 %60)
  ret i32 0
}

declare dso_local %struct.atmel_pioctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @atmel_gpio_write(%struct.atmel_pioctrl*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @atmel_gpio_read(%struct.atmel_pioctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
