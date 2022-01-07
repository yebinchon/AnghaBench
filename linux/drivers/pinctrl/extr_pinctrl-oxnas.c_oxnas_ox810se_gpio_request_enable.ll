; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox810se_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox810se_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.oxnas_pinctrl = type { i32, i32 }
%struct.oxnas_gpio_bank = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"requesting gpio %d in bank %d (id %d) with mask 0x%x\0A\00", align 1
@PINMUX_810_PRIMARY_SEL1 = common dso_local global i32 0, align 4
@PINMUX_810_PRIMARY_SEL0 = common dso_local global i32 0, align 4
@PINMUX_810_SECONDARY_SEL1 = common dso_local global i32 0, align 4
@PINMUX_810_SECONDARY_SEL0 = common dso_local global i32 0, align 4
@PINMUX_810_TERTIARY_SEL1 = common dso_local global i32 0, align 4
@PINMUX_810_TERTIARY_SEL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @oxnas_ox810se_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_ox810se_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.oxnas_pinctrl*, align 8
  %8 = alloca %struct.oxnas_gpio_bank*, align 8
  %9 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = call %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.oxnas_pinctrl* %11, %struct.oxnas_pinctrl** %7, align 8
  %12 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %5, align 8
  %13 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.oxnas_gpio_bank* @gpiochip_get_data(i32 %14)
  store %struct.oxnas_gpio_bank* %15, %struct.oxnas_gpio_bank** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %8, align 8
  %19 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %17, %21
  %23 = call i32 @BIT(i64 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %7, align 8
  %25 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %8, align 8
  %29 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %8, align 8
  %33 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %31, i64 %34, i32 %35)
  %37 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %7, align 8
  %38 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %8, align 8
  %41 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @PINMUX_810_PRIMARY_SEL1, align 4
  br label %48

46:                                               ; preds = %3
  %47 = load i32, i32* @PINMUX_810_PRIMARY_SEL0, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @regmap_write_bits(i32 %39, i32 %49, i32 %50, i32 0)
  %52 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %7, align 8
  %53 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %8, align 8
  %56 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @PINMUX_810_SECONDARY_SEL1, align 4
  br label %63

61:                                               ; preds = %48
  %62 = load i32, i32* @PINMUX_810_SECONDARY_SEL0, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @regmap_write_bits(i32 %54, i32 %64, i32 %65, i32 0)
  %67 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %7, align 8
  %68 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %8, align 8
  %71 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* @PINMUX_810_TERTIARY_SEL1, align 4
  br label %78

76:                                               ; preds = %63
  %77 = load i32, i32* @PINMUX_810_TERTIARY_SEL0, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @regmap_write_bits(i32 %69, i32 %79, i32 %80, i32 0)
  ret i32 0
}

declare dso_local %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.oxnas_gpio_bank* @gpiochip_get_data(i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
