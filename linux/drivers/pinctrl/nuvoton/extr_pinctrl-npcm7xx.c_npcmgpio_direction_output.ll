; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcmgpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcmgpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64, i32 }
%struct.npcm7xx_gpio = type { i32 (%struct.gpio_chip.0*, i32, i32)* }
%struct.gpio_chip.0 = type opaque

@.str = private unnamed_addr constant [38 x i8] c"gpio_direction_output: offset%d = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @npcmgpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcmgpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.npcm7xx_gpio*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %11 = call %struct.npcm7xx_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.npcm7xx_gpio* %11, %struct.npcm7xx_gpio** %8, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @pinctrl_gpio_direction_output(i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %8, align 8
  %31 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %30, i32 0, i32 0
  %32 = load i32 (%struct.gpio_chip.0*, i32, i32)*, i32 (%struct.gpio_chip.0*, i32, i32)** %31, align 8
  %33 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %34 = bitcast %struct.gpio_chip* %33 to %struct.gpio_chip.0*
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %32(%struct.gpio_chip.0* %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %27
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.npcm7xx_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @pinctrl_gpio_direction_output(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
