; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_set_drive_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_set_drive_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.npcm7xx_pinctrl = type { %struct.npcm7xx_gpio* }
%struct.npcm7xx_gpio = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@NPCM7XX_GPIO_PER_BANK = common dso_local global i32 0, align 4
@pincfg = common dso_local global %struct.TYPE_4__* null, align 8
@DRIVE_STRENGTH_MASK = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"setting pin %d to low strength [%d]\0A\00", align 1
@NPCM7XX_GP_N_ODSC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"setting pin %d to high strength [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npcm7xx_pinctrl*, i32, i32)* @npcm7xx_set_drive_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_set_drive_strength(%struct.npcm7xx_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.npcm7xx_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.npcm7xx_gpio*, align 8
  %10 = alloca i32, align 4
  store %struct.npcm7xx_pinctrl* %0, %struct.npcm7xx_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %5, align 8
  %12 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %11, i32 0, i32 0
  %13 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NPCM7XX_GPIO_PER_BANK, align 4
  %16 = udiv i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %13, i64 %17
  store %struct.npcm7xx_gpio* %18, %struct.npcm7xx_gpio** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %9, align 8
  %21 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = urem i32 %19, %23
  %25 = call i32 @BIT(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pincfg, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DRIVE_STRENGTH_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %3
  %40 = load i32, i32* @ENOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %90

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @DSLO(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %9, align 8
  %49 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %9, align 8
  %56 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %55, i32 0, i32 1
  %57 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %9, align 8
  %58 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NPCM7XX_GP_N_ODSC, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @npcm_gpio_clr(%struct.TYPE_5__* %56, i64 %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %90

64:                                               ; preds = %42
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @DSHI(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %9, align 8
  %71 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %9, align 8
  %78 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %77, i32 0, i32 1
  %79 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %9, align 8
  %80 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NPCM7XX_GP_N_ODSC, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @npcm_gpio_set(%struct.TYPE_5__* %78, i64 %83, i32 %84)
  store i32 0, i32* %4, align 4
  br label %90

86:                                               ; preds = %64
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* @ENOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %69, %47, %39
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DSLO(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @npcm_gpio_clr(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @DSHI(i32) #1

declare dso_local i32 @npcm_gpio_set(%struct.TYPE_5__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
