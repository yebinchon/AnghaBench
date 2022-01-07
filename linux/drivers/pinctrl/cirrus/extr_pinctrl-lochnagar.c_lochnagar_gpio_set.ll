; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.lochnagar_pin_priv = type { i32, %struct.TYPE_2__*, %struct.lochnagar* }
%struct.TYPE_2__ = type { %struct.lochnagar_pin* }
%struct.lochnagar_pin = type { i32, i32, i32, i32, i32 }
%struct.lochnagar = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Set GPIO %s to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@LN2_OP_GPIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to set %s value: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @lochnagar_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lochnagar_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lochnagar_pin_priv*, align 8
  %8 = alloca %struct.lochnagar*, align 8
  %9 = alloca %struct.lochnagar_pin*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.lochnagar_pin_priv* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.lochnagar_pin_priv* %12, %struct.lochnagar_pin_priv** %7, align 8
  %13 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %7, align 8
  %14 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %13, i32 0, i32 2
  %15 = load %struct.lochnagar*, %struct.lochnagar** %14, align 8
  store %struct.lochnagar* %15, %struct.lochnagar** %8, align 8
  %16 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %7, align 8
  %17 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %22, align 8
  store %struct.lochnagar_pin* %23, %struct.lochnagar_pin** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %7, align 8
  %30 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %9, align 8
  %33 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %39 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %38)
  %40 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %9, align 8
  %41 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %78 [
    i32 128, label %43
    i32 129, label %51
  ]

43:                                               ; preds = %3
  %44 = load i32, i32* @LN2_OP_GPIO, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %7, align 8
  %48 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %9, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @lochnagar_pin_set_mux(%struct.lochnagar_pin_priv* %47, %struct.lochnagar_pin* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %81

51:                                               ; preds = %3
  %52 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %9, align 8
  %53 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.lochnagar*, %struct.lochnagar** %8, align 8
  %63 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %9, align 8
  %66 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %9, align 8
  %69 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %9, align 8
  %74 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %72, %75
  %77 = call i32 @regmap_update_bits(i32 %64, i32 %67, i32 %71, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %81

78:                                               ; preds = %3
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %61, %43
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %86 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %9, align 8
  %89 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %81
  ret void
}

declare dso_local %struct.lochnagar_pin_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @lochnagar_pin_set_mux(%struct.lochnagar_pin_priv*, %struct.lochnagar_pin*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
