; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_set_slew_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_set_slew_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.npcm7xx_gpio = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.regmap = type { i32 }

@pincfg = common dso_local global %struct.TYPE_4__* null, align 8
@SLEW = common dso_local global i32 0, align 4
@NPCM7XX_GP_N_OSRC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SLEWLPC = common dso_local global i32 0, align 4
@NPCM7XX_GCR_SRCNT = common dso_local global i32 0, align 4
@SRCNT_ESPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npcm7xx_gpio*, %struct.regmap*, i32, i32)* @npcm7xx_set_slew_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_set_slew_rate(%struct.npcm7xx_gpio* %0, %struct.regmap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.npcm7xx_gpio*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.npcm7xx_gpio* %0, %struct.npcm7xx_gpio** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %13 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = urem i32 %11, %15
  %17 = call i32 @BIT(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pincfg, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SLEW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %49 [
    i32 0, label %29
    i32 1, label %39
  ]

29:                                               ; preds = %27
  %30 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %31 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %30, i32 0, i32 1
  %32 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %33 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NPCM7XX_GP_N_OSRC, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @npcm_gpio_clr(%struct.TYPE_5__* %31, i64 %36, i32 %37)
  store i32 0, i32* %5, align 4
  br label %81

39:                                               ; preds = %27
  %40 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %41 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %40, i32 0, i32 1
  %42 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %6, align 8
  %43 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NPCM7XX_GP_N_OSRC, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @npcm_gpio_set(%struct.TYPE_5__* %41, i64 %46, i32 %47)
  store i32 0, i32* %5, align 4
  br label %81

49:                                               ; preds = %27
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %81

52:                                               ; preds = %4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pincfg, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SLEWLPC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  switch i32 %63, label %75 [
    i32 0, label %64
    i32 1, label %69
  ]

64:                                               ; preds = %62
  %65 = load %struct.regmap*, %struct.regmap** %7, align 8
  %66 = load i32, i32* @NPCM7XX_GCR_SRCNT, align 4
  %67 = load i32, i32* @SRCNT_ESPI, align 4
  %68 = call i32 @regmap_update_bits(%struct.regmap* %65, i32 %66, i32 %67, i32 0)
  store i32 0, i32* %5, align 4
  br label %81

69:                                               ; preds = %62
  %70 = load %struct.regmap*, %struct.regmap** %7, align 8
  %71 = load i32, i32* @NPCM7XX_GCR_SRCNT, align 4
  %72 = load i32, i32* @SRCNT_ESPI, align 4
  %73 = load i32, i32* @SRCNT_ESPI, align 4
  %74 = call i32 @regmap_update_bits(%struct.regmap* %70, i32 %71, i32 %72, i32 %73)
  store i32 0, i32* %5, align 4
  br label %81

75:                                               ; preds = %62
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %81

78:                                               ; preds = %52
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %75, %69, %64, %49, %39, %29
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @npcm_gpio_clr(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @npcm_gpio_set(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
