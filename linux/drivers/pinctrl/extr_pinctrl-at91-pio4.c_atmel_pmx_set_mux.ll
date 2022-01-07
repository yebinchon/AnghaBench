; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_pmx_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_pmx_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.atmel_pioctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"enable function %s group %s\0A\00", align 1
@atmel_functions = common dso_local global i32* null, align 8
@ATMEL_PIO_CFGR_FUNC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"pin: %u, conf: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @atmel_pmx_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pmx_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_pioctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = call %struct.atmel_pioctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.atmel_pioctrl* %11, %struct.atmel_pioctrl** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @atmel_functions, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %21 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %27)
  %29 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %7, align 8
  %30 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @atmel_pin_config_read(%struct.pinctrl_dev* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @ATMEL_PIO_CFGR_FUNC_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ATMEL_PIO_CFGR_FUNC_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @atmel_pin_config_write(%struct.pinctrl_dev* %55, i32 %56, i32 %57)
  ret i32 0
}

declare dso_local %struct.atmel_pioctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @atmel_pin_config_read(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @atmel_pin_config_write(%struct.pinctrl_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
