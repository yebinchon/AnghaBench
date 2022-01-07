; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_gpiolib_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_gpiolib_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@meson_gpio_direction_input = common dso_local global i32 0, align 4
@meson_gpio_direction_output = common dso_local global i32 0, align 4
@meson_gpio_get = common dso_local global i32 0, align 4
@meson_gpio_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't add gpio chip %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pinctrl*)* @meson_gpiolib_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gpiolib_register(%struct.meson_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_pinctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.meson_pinctrl* %0, %struct.meson_pinctrl** %3, align 8
  %5 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %6 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %11 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 12
  store i32 %9, i32* %12, align 4
  %13 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %14 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %17 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 11
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @gpiochip_generic_request, align 4
  %20 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %21 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 10
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @gpiochip_generic_free, align 4
  %24 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %25 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 9
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @meson_gpio_direction_input, align 4
  %28 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %29 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 8
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @meson_gpio_direction_output, align 4
  %32 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %33 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 7
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @meson_gpio_get, align 4
  %36 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %37 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @meson_gpio_set, align 4
  %40 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %41 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  store i32 %39, i32* %42, align 4
  %43 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %44 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 4
  %46 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %47 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %52 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 4
  %54 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %55 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %58 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %61 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %64 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store i32 2, i32* %65, align 4
  %66 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %67 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %66, i32 0, i32 2
  %68 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %69 = call i32 @gpiochip_add_data(%struct.TYPE_4__* %67, %struct.meson_pinctrl* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %1
  %73 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %74 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %3, align 8
  %77 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %72
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_4__*, %struct.meson_pinctrl*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
