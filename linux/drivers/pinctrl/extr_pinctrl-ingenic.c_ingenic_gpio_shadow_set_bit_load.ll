; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_gpio_shadow_set_bit_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_gpio_shadow_set_bit_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_gpio_chip = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@X1000_GPIO_PZ_GID2LD = common dso_local global i32 0, align 4
@PINS_PER_GPIO_CHIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ingenic_gpio_chip*)* @ingenic_gpio_shadow_set_bit_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_gpio_shadow_set_bit_load(%struct.ingenic_gpio_chip* %0) #0 {
  %2 = alloca %struct.ingenic_gpio_chip*, align 8
  store %struct.ingenic_gpio_chip* %0, %struct.ingenic_gpio_chip** %2, align 8
  %3 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %2, align 8
  %4 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @X1000_GPIO_PZ_GID2LD, align 4
  %9 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %2, align 8
  %10 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PINS_PER_GPIO_CHIP, align 4
  %14 = sdiv i32 %12, %13
  %15 = call i32 @regmap_write(i32 %7, i32 %8, i32 %14)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
