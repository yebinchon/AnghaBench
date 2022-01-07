; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pfc-r8a77990.c_r8a77990_pinmux_get_bias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pfc-r8a77990.c_r8a77990_pinmux_get_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc = type { i32 }
%struct.pinmux_bias_reg = type { i32, i32 }

@PIN_CONFIG_BIAS_DISABLE = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_PULL_UP = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_PULL_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_pfc*, i32)* @r8a77990_pinmux_get_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8a77990_pinmux_get_bias(%struct.sh_pfc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_pfc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinmux_bias_reg*, align 8
  %7 = alloca i32, align 4
  store %struct.sh_pfc* %0, %struct.sh_pfc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.pinmux_bias_reg* @sh_pfc_pin_to_bias_reg(%struct.sh_pfc* %8, i32 %9, i32* %7)
  store %struct.pinmux_bias_reg* %10, %struct.pinmux_bias_reg** %6, align 8
  %11 = load %struct.pinmux_bias_reg*, %struct.pinmux_bias_reg** %6, align 8
  %12 = icmp ne %struct.pinmux_bias_reg* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @PIN_CONFIG_BIAS_DISABLE, align 4
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %17 = load %struct.pinmux_bias_reg*, %struct.pinmux_bias_reg** %6, align 8
  %18 = getelementptr inbounds %struct.pinmux_bias_reg, %struct.pinmux_bias_reg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sh_pfc_read(%struct.sh_pfc* %16, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @PIN_CONFIG_BIAS_DISABLE, align 4
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %15
  %28 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %29 = load %struct.pinmux_bias_reg*, %struct.pinmux_bias_reg** %6, align 8
  %30 = getelementptr inbounds %struct.pinmux_bias_reg, %struct.pinmux_bias_reg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sh_pfc_read(%struct.sh_pfc* %28, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @PIN_CONFIG_BIAS_PULL_UP, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @PIN_CONFIG_BIAS_PULL_DOWN, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %37, %25, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.pinmux_bias_reg* @sh_pfc_pin_to_bias_reg(%struct.sh_pfc*, i32, i32*) #1

declare dso_local i32 @sh_pfc_read(%struct.sh_pfc*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
