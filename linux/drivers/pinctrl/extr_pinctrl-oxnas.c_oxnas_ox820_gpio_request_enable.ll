; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox820_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox820_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.oxnas_pinctrl = type { i32, i32 }
%struct.oxnas_gpio_bank = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PINMUX_820_BANK_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"requesting gpio %d in bank %d (id %d) with mask 0x%x\0A\00", align 1
@PINMUX_820_SECONDARY_SEL = common dso_local global i64 0, align 8
@PINMUX_820_TERTIARY_SEL = common dso_local global i64 0, align 8
@PINMUX_820_QUATERNARY_SEL = common dso_local global i64 0, align 8
@PINMUX_820_DEBUG_SEL = common dso_local global i64 0, align 8
@PINMUX_820_ALTERNATIVE_SEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @oxnas_ox820_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_ox820_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.oxnas_pinctrl*, align 8
  %8 = alloca %struct.oxnas_gpio_bank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %12 = call %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.oxnas_pinctrl* %12, %struct.oxnas_pinctrl** %7, align 8
  %13 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %5, align 8
  %14 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.oxnas_gpio_bank* @gpiochip_get_data(i32 %15)
  store %struct.oxnas_gpio_bank* %16, %struct.oxnas_gpio_bank** %8, align 8
  %17 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %8, align 8
  %18 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @PINMUX_820_BANK_OFFSET, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %8, align 8
  %29 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %27, %31
  %33 = call i32 @BIT(i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %7, align 8
  %35 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %8, align 8
  %39 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %8, align 8
  %43 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %41, i64 %44, i32 %45)
  %47 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %7, align 8
  %48 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* @PINMUX_820_SECONDARY_SEL, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @regmap_write_bits(i32 %49, i64 %53, i32 %54, i32 0)
  %56 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %7, align 8
  %57 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* @PINMUX_820_TERTIARY_SEL, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @regmap_write_bits(i32 %58, i64 %62, i32 %63, i32 0)
  %65 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %7, align 8
  %66 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* @PINMUX_820_QUATERNARY_SEL, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @regmap_write_bits(i32 %67, i64 %71, i32 %72, i32 0)
  %74 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %7, align 8
  %75 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* @PINMUX_820_DEBUG_SEL, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @regmap_write_bits(i32 %76, i64 %80, i32 %81, i32 0)
  %83 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %7, align 8
  %84 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* @PINMUX_820_ALTERNATIVE_SEL, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @regmap_write_bits(i32 %85, i64 %89, i32 %90, i32 0)
  ret i32 0
}

declare dso_local %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.oxnas_gpio_bank* @gpiochip_get_data(i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
