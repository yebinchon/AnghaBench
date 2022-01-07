; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_pinmux_set_pin_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_pinmux_set_pin_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_pinctrl = type { i64, i32 }

@PINS_PER_GPIO_CHIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"set pin P%c%u to function %u\0A\00", align 1
@ID_X1000 = common dso_local global i64 0, align 8
@JZ4760_GPIO_INT = common dso_local global i32 0, align 4
@GPIO_MSK = common dso_local global i32 0, align 4
@JZ4760_GPIO_PAT1 = common dso_local global i32 0, align 4
@JZ4760_GPIO_PAT0 = common dso_local global i32 0, align 4
@ID_JZ4760 = common dso_local global i64 0, align 8
@JZ4740_GPIO_FUNC = common dso_local global i32 0, align 4
@JZ4740_GPIO_TRIG = common dso_local global i32 0, align 4
@JZ4740_GPIO_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_pinctrl*, i32, i32)* @ingenic_pinmux_set_pin_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_pinmux_set_pin_fn(%struct.ingenic_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ingenic_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ingenic_pinctrl* %0, %struct.ingenic_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PINS_PER_GPIO_CHIP, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PINS_PER_GPIO_CHIP, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %16 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = add i32 65, %18
  %20 = trunc i32 %19 to i8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8 signext %20, i32 %21, i32 %22)
  %24 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %25 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ID_X1000, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %3
  %30 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @JZ4760_GPIO_INT, align 4
  %33 = call i32 @ingenic_shadow_config_pin(%struct.ingenic_pinctrl* %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @GPIO_MSK, align 4
  %37 = call i32 @ingenic_shadow_config_pin(%struct.ingenic_pinctrl* %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @JZ4760_GPIO_PAT1, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 2
  %43 = call i32 @ingenic_shadow_config_pin(%struct.ingenic_pinctrl* %38, i32 %39, i32 %40, i32 %42)
  %44 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @JZ4760_GPIO_PAT0, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 1
  %49 = call i32 @ingenic_shadow_config_pin(%struct.ingenic_pinctrl* %44, i32 %45, i32 %46, i32 %48)
  %50 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ingenic_shadow_config_pin_load(%struct.ingenic_pinctrl* %50, i32 %51)
  br label %99

53:                                               ; preds = %3
  %54 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %55 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ID_JZ4760, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %53
  %60 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @JZ4760_GPIO_INT, align 4
  %63 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %60, i32 %61, i32 %62, i32 0)
  %64 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @GPIO_MSK, align 4
  %67 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %64, i32 %65, i32 %66, i32 0)
  %68 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @JZ4760_GPIO_PAT1, align 4
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 2
  %73 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %68, i32 %69, i32 %70, i32 %72)
  %74 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @JZ4760_GPIO_PAT0, align 4
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 1
  %79 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %74, i32 %75, i32 %76, i32 %78)
  br label %98

80:                                               ; preds = %53
  %81 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @JZ4740_GPIO_FUNC, align 4
  %84 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %81, i32 %82, i32 %83, i32 1)
  %85 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @JZ4740_GPIO_TRIG, align 4
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 2
  %90 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %85, i32 %86, i32 %87, i32 %89)
  %91 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @JZ4740_GPIO_SELECT, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp sgt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %91, i32 %92, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %80, %59
  br label %99

99:                                               ; preds = %98, %29
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i8 signext, i32, i32) #1

declare dso_local i32 @ingenic_shadow_config_pin(%struct.ingenic_pinctrl*, i32, i32, i32) #1

declare dso_local i32 @ingenic_shadow_config_pin_load(%struct.ingenic_pinctrl*, i32) #1

declare dso_local i32 @ingenic_config_pin(%struct.ingenic_pinctrl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
