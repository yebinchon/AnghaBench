; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_get_drive_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcm7xx_get_drive_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pinctrl_dev = type { i32 }
%struct.npcm7xx_pinctrl = type { %struct.npcm7xx_gpio* }
%struct.npcm7xx_gpio = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@NPCM7XX_GPIO_PER_BANK = common dso_local global i32 0, align 4
@pincfg = common dso_local global %struct.TYPE_4__* null, align 8
@DRIVE_STRENGTH_MASK = common dso_local global i32 0, align 4
@NPCM7XX_GP_N_ODSC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"pin %d strength %d = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32)* @npcm7xx_get_drive_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_get_drive_strength(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.npcm7xx_pinctrl*, align 8
  %7 = alloca %struct.npcm7xx_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = call %struct.npcm7xx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.npcm7xx_pinctrl* %14, %struct.npcm7xx_pinctrl** %6, align 8
  %15 = load %struct.npcm7xx_pinctrl*, %struct.npcm7xx_pinctrl** %6, align 8
  %16 = getelementptr inbounds %struct.npcm7xx_pinctrl, %struct.npcm7xx_pinctrl* %15, i32 0, i32 0
  %17 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @NPCM7XX_GPIO_PER_BANK, align 4
  %20 = udiv i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %17, i64 %21
  store %struct.npcm7xx_gpio* %22, %struct.npcm7xx_gpio** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %7, align 8
  %25 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = urem i32 %23, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @BIT(i32 %29)
  store i64 %30, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pincfg, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @DRIVE_STRENGTH_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %2
  %42 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %7, align 8
  %43 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NPCM7XX_GP_N_ODSC, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i64 @ioread32(i64 %46)
  %48 = load i64, i64* %9, align 8
  %49 = and i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @DSHI(i32 %54)
  br label %59

56:                                               ; preds = %41
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @DSLO(i32 %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i32 [ %55, %53 ], [ %58, %56 ]
  store i32 %60, i32* %10, align 4
  %61 = load %struct.npcm7xx_gpio*, %struct.npcm7xx_gpio** %7, align 8
  %62 = getelementptr inbounds %struct.npcm7xx_gpio, %struct.npcm7xx_gpio* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %73

70:                                               ; preds = %2
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %59
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.npcm7xx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @DSHI(i32) #1

declare dso_local i32 @DSLO(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
