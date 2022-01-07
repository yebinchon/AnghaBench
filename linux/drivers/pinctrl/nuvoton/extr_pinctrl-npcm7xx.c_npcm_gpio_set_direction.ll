; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.npcm7xx_pinctrl = type { %struct.npcm7xx_gpio* }
%struct.npcm7xx_gpio = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NPCM7XX_GPIO_PER_BANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"GPIO Set Direction: %d = %d\0A\00", align 1
@NPCM7XX_GP_N_OEC = common dso_local global i64 0, align 8
@NPCM7XX_GP_N_OES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @npcm_gpio_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_gpio_set_direction(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.npcm7xx_pinctrl*, align 8
  %10 = alloca %struct.npcm7xx_gpio*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.npcm7xx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.npcm7xx_pinctrl* %13, %struct.npcm7xx_pinctrl** %9, align 8
  %14 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %9, align 8
  %15 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %14, i32 0, i32 0
  %16 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NPCM7XX_GPIO_PER_BANK, align 4
  %19 = udiv i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %16, i64 %20
  store %struct.npcm7xx_gpio* %21, %struct.npcm7xx_gpio** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %24 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = urem i32 %22, %26
  %28 = call i32 @BIT(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %30 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %41 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NPCM7XX_GP_N_OEC, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @iowrite32(i32 %39, i64 %44)
  br label %54

46:                                               ; preds = %4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %10, align 8
  %49 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NPCM7XX_GP_N_OES, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @iowrite32(i32 %47, i64 %52)
  br label %54

54:                                               ; preds = %46, %38
  ret i32 0
}

declare dso_local %struct.npcm7xx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
