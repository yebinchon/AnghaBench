; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pinctrl_fsel_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pinctrl_fsel_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_pinctrl = type { i32 }

@BCM2835_FSEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"get %08x (%u => %s)\0A\00", align 1
@bcm2835_functions = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_pinctrl*, i32)* @bcm2835_pinctrl_fsel_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_pinctrl_fsel_get(%struct.bcm2835_pinctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm2835_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm2835_pinctrl* %0, %struct.bcm2835_pinctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @FSEL_REG(i32 %8)
  %10 = call i32 @bcm2835_gpio_rd(%struct.bcm2835_pinctrl* %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @FSEL_SHIFT(i32 %12)
  %14 = ashr i32 %11, %13
  %15 = load i32, i32* @BCM2835_FSEL_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %3, align 8
  %18 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** @bcm2835_functions, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @bcm2835_gpio_rd(%struct.bcm2835_pinctrl*, i32) #1

declare dso_local i32 @FSEL_REG(i32) #1

declare dso_local i32 @FSEL_SHIFT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
