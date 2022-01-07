; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_get_pull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinconf_get_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pinctrl = type { i32, i32 }
%struct.meson_bank = type { i32 }

@REG_PULLEN = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_DISABLE = common dso_local global i32 0, align 4
@REG_PULL = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_PULL_UP = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_PULL_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pinctrl*, i32)* @meson_pinconf_get_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pinconf_get_pull(%struct.meson_pinctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.meson_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.meson_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.meson_pinctrl* %0, %struct.meson_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @meson_get_bank(%struct.meson_pinctrl* %12, i32 %13, %struct.meson_bank** %6)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load %struct.meson_bank*, %struct.meson_bank** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @REG_PULLEN, align 4
  %23 = call i32 @meson_calc_reg_and_bit(%struct.meson_bank* %20, i32 %21, i32 %22, i32* %7, i32* %8)
  %24 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %4, align 8
  %25 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %68

33:                                               ; preds = %19
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @PIN_CONFIG_BIAS_DISABLE, align 4
  store i32 %40, i32* %11, align 4
  br label %66

41:                                               ; preds = %33
  %42 = load %struct.meson_bank*, %struct.meson_bank** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @REG_PULL, align 4
  %45 = call i32 @meson_calc_reg_and_bit(%struct.meson_bank* %42, i32 %43, i32 %44, i32* %7, i32* %8)
  %46 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %4, align 8
  %47 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @regmap_read(i32 %48, i32 %49, i32* %9)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %68

55:                                               ; preds = %41
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @PIN_CONFIG_BIAS_PULL_UP, align 4
  store i32 %62, i32* %11, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @PIN_CONFIG_BIAS_PULL_DOWN, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %53, %31, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @meson_get_bank(%struct.meson_pinctrl*, i32, %struct.meson_bank**) #1

declare dso_local i32 @meson_calc_reg_and_bit(%struct.meson_bank*, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
