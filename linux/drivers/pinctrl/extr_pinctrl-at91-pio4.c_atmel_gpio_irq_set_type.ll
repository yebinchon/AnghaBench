; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.atmel_pioctrl = type { %struct.atmel_pin** }
%struct.atmel_pin = type { i32, i32 }

@ATMEL_PIO_MSKR = common dso_local global i32 0, align 4
@ATMEL_PIO_CFGR = common dso_local global i32 0, align 4
@ATMEL_PIO_CFGR_EVTSEL_MASK = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@ATMEL_PIO_CFGR_EVTSEL_RISING = common dso_local global i32 0, align 4
@ATMEL_PIO_CFGR_EVTSEL_FALLING = common dso_local global i32 0, align 4
@ATMEL_PIO_CFGR_EVTSEL_BOTH = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@ATMEL_PIO_CFGR_EVTSEL_LOW = common dso_local global i32 0, align 4
@ATMEL_PIO_CFGR_EVTSEL_HIGH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @atmel_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_pioctrl*, align 8
  %7 = alloca %struct.atmel_pin*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.atmel_pioctrl* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.atmel_pioctrl* %10, %struct.atmel_pioctrl** %6, align 8
  %11 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %6, align 8
  %12 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %11, i32 0, i32 0
  %13 = load %struct.atmel_pin**, %struct.atmel_pin*** %12, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.atmel_pin*, %struct.atmel_pin** %13, i64 %16
  %18 = load %struct.atmel_pin*, %struct.atmel_pin** %17, align 8
  store %struct.atmel_pin* %18, %struct.atmel_pin** %7, align 8
  %19 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %6, align 8
  %20 = load %struct.atmel_pin*, %struct.atmel_pin** %7, align 8
  %21 = getelementptr inbounds %struct.atmel_pin, %struct.atmel_pin* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ATMEL_PIO_MSKR, align 4
  %24 = load %struct.atmel_pin*, %struct.atmel_pin** %7, align 8
  %25 = getelementptr inbounds %struct.atmel_pin, %struct.atmel_pin* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = call i32 @atmel_gpio_write(%struct.atmel_pioctrl* %19, i32 %22, i32 %23, i32 %27)
  %29 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %6, align 8
  %30 = load %struct.atmel_pin*, %struct.atmel_pin** %7, align 8
  %31 = getelementptr inbounds %struct.atmel_pin, %struct.atmel_pin* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATMEL_PIO_CFGR, align 4
  %34 = call i32 @atmel_gpio_read(%struct.atmel_pioctrl* %29, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @ATMEL_PIO_CFGR_EVTSEL_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %76 [
    i32 131, label %40
    i32 132, label %47
    i32 133, label %54
    i32 129, label %61
    i32 130, label %68
    i32 128, label %75
  ]

40:                                               ; preds = %2
  %41 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %42 = load i32, i32* @handle_edge_irq, align 4
  %43 = call i32 @irq_set_handler_locked(%struct.irq_data* %41, i32 %42)
  %44 = load i32, i32* @ATMEL_PIO_CFGR_EVTSEL_RISING, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %79

47:                                               ; preds = %2
  %48 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %49 = load i32, i32* @handle_edge_irq, align 4
  %50 = call i32 @irq_set_handler_locked(%struct.irq_data* %48, i32 %49)
  %51 = load i32, i32* @ATMEL_PIO_CFGR_EVTSEL_FALLING, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %79

54:                                               ; preds = %2
  %55 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %56 = load i32, i32* @handle_edge_irq, align 4
  %57 = call i32 @irq_set_handler_locked(%struct.irq_data* %55, i32 %56)
  %58 = load i32, i32* @ATMEL_PIO_CFGR_EVTSEL_BOTH, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %79

61:                                               ; preds = %2
  %62 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %63 = load i32, i32* @handle_level_irq, align 4
  %64 = call i32 @irq_set_handler_locked(%struct.irq_data* %62, i32 %63)
  %65 = load i32, i32* @ATMEL_PIO_CFGR_EVTSEL_LOW, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %79

68:                                               ; preds = %2
  %69 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %70 = load i32, i32* @handle_level_irq, align 4
  %71 = call i32 @irq_set_handler_locked(%struct.irq_data* %69, i32 %70)
  %72 = load i32, i32* @ATMEL_PIO_CFGR_EVTSEL_HIGH, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %79

75:                                               ; preds = %2
  br label %76

76:                                               ; preds = %2, %75
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %87

79:                                               ; preds = %68, %61, %54, %47, %40
  %80 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %6, align 8
  %81 = load %struct.atmel_pin*, %struct.atmel_pin** %7, align 8
  %82 = getelementptr inbounds %struct.atmel_pin, %struct.atmel_pin* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ATMEL_PIO_CFGR, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @atmel_gpio_write(%struct.atmel_pioctrl* %80, i32 %83, i32 %84, i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %79, %76
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.atmel_pioctrl* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @atmel_gpio_write(%struct.atmel_pioctrl*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @atmel_gpio_read(%struct.atmel_pioctrl*, i32, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
