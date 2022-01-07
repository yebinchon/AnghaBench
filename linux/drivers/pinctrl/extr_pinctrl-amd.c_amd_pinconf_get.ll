; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-amd.c_amd_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-amd.c_amd_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.amd_gpio = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@DB_TMR_OUT_MASK = common dso_local global i32 0, align 4
@PULL_DOWN_ENABLE_OFF = common dso_local global i32 0, align 4
@PULL_UP_SEL_OFF = common dso_local global i32 0, align 4
@DRV_STRENGTH_SEL_OFF = common dso_local global i32 0, align 4
@DRV_STRENGTH_SEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid config param %04x\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @amd_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.amd_gpio*, align 8
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.amd_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.amd_gpio* %14, %struct.amd_gpio** %11, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pinconf_to_config_param(i64 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.amd_gpio*, %struct.amd_gpio** %11, align 8
  %19 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %18, i32 0, i32 1
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @raw_spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.amd_gpio*, %struct.amd_gpio** %11, align 8
  %23 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = mul i32 %25, 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.amd_gpio*, %struct.amd_gpio** %11, align 8
  %31 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %30, i32 0, i32 1
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @raw_spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %12, align 4
  switch i32 %34, label %59 [
    i32 128, label %35
    i32 131, label %39
    i32 130, label %45
    i32 129, label %53
  ]

35:                                               ; preds = %3
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DB_TMR_OUT_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %9, align 4
  br label %68

39:                                               ; preds = %3
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @PULL_DOWN_ENABLE_OFF, align 4
  %42 = lshr i32 %40, %41
  %43 = call i32 @BIT(i32 0)
  %44 = and i32 %42, %43
  store i32 %44, i32* %9, align 4
  br label %68

45:                                               ; preds = %3
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @PULL_UP_SEL_OFF, align 4
  %48 = lshr i32 %46, %47
  %49 = call i32 @BIT(i32 0)
  %50 = call i32 @BIT(i32 1)
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  store i32 %52, i32* %9, align 4
  br label %68

53:                                               ; preds = %3
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @DRV_STRENGTH_SEL_OFF, align 4
  %56 = lshr i32 %54, %55
  %57 = load i32, i32* @DRV_STRENGTH_SEL_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %9, align 4
  br label %68

59:                                               ; preds = %3
  %60 = load %struct.amd_gpio*, %struct.amd_gpio** %11, align 8
  %61 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ENOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %73

68:                                               ; preds = %53, %45, %39, %35
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @pinconf_to_config_packed(i32 %69, i32 %70)
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %59
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.amd_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
