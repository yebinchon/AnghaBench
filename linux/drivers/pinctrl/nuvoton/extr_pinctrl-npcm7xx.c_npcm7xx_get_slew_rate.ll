; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_get_slew_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_get_slew_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.npcm7xx_gpio = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.regmap = type { i32 }

@pincfg = common dso_local global %struct.TYPE_4__* null, align 8
@SLEW = common dso_local global i32 0, align 4
@NPCM7XX_GP_N_OSRC = common dso_local global i64 0, align 8
@SLEWLPC = common dso_local global i32 0, align 4
@NPCM7XX_GCR_SRCNT = common dso_local global i32 0, align 4
@SRCNT_ESPI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npcm7xx_gpio*, %struct.regmap*, i32)* @npcm7xx_get_slew_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_get_slew_rate(%struct.npcm7xx_gpio* %0, %struct.regmap* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.npcm7xx_gpio*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.npcm7xx_gpio* %0, %struct.npcm7xx_gpio** %5, align 8
  store %struct.regmap* %1, %struct.regmap** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %13 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = urem i32 %11, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @BIT(i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pincfg, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SLEW, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %3
  %29 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %5, align 8
  %30 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NPCM7XX_GP_N_OSRC, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @ioread32(i64 %33)
  %35 = load i64, i64* %10, align 8
  %36 = and i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %62

38:                                               ; preds = %3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pincfg, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SLEWLPC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %38
  %49 = load %struct.regmap*, %struct.regmap** %6, align 8
  %50 = load i32, i32* @NPCM7XX_GCR_SRCNT, align 4
  %51 = call i32 @regmap_read(%struct.regmap* %49, i32 %50, i32* %8)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @SRCNT_ESPI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %62

59:                                               ; preds = %38
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %48, %28
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
