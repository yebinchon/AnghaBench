; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_get_pull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_get_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32*, %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { i32, %struct.rockchip_pin_ctrl* }
%struct.rockchip_pin_ctrl = type { i32, i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)* }
%struct.rockchip_pin_bank.0 = type opaque
%struct.regmap = type opaque
%struct.regmap.1 = type { i32 }

@RK3066B = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_DISABLE = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_PULL_PIN_DEFAULT = common dso_local global i32 0, align 4
@RK3188_PULL_BITS_PER_PIN = common dso_local global i32 0, align 4
@rockchip_pull_list = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [26 x i8] c"unsupported pinctrl type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pin_bank*, i32)* @rockchip_get_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_get_pull(%struct.rockchip_pin_bank* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_pin_bank*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rockchip_pinctrl*, align 8
  %7 = alloca %struct.rockchip_pin_ctrl*, align 8
  %8 = alloca %struct.regmap.1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %15 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %14, i32 0, i32 1
  %16 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %15, align 8
  store %struct.rockchip_pinctrl* %16, %struct.rockchip_pinctrl** %6, align 8
  %17 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %6, align 8
  %18 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %17, i32 0, i32 1
  %19 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %18, align 8
  store %struct.rockchip_pin_ctrl* %19, %struct.rockchip_pin_ctrl** %7, align 8
  %20 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %7, align 8
  %21 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RK3066B, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @PIN_CONFIG_BIAS_DISABLE, align 4
  store i32 %26, i32* %3, align 4
  br label %92

27:                                               ; preds = %2
  %28 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %7, align 8
  %29 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %28, i32 0, i32 1
  %30 = load i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)*, i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)** %29, align 8
  %31 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %32 = bitcast %struct.rockchip_pin_bank* %31 to %struct.rockchip_pin_bank.0*
  %33 = load i32, i32* %5, align 4
  %34 = bitcast %struct.regmap.1** %8 to %struct.regmap**
  %35 = call i32 %30(%struct.rockchip_pin_bank.0* %32, i32 %33, %struct.regmap** %34, i32* %9, i32* %12)
  %36 = load %struct.regmap.1*, %struct.regmap.1** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @regmap_read(%struct.regmap.1* %36, i32 %37, i32* %13)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %92

43:                                               ; preds = %27
  %44 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %7, align 8
  %45 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %85 [
    i32 134, label %47
    i32 133, label %47
    i32 135, label %59
    i32 128, label %59
    i32 132, label %59
    i32 131, label %59
    i32 130, label %59
    i32 129, label %59
  ]

47:                                               ; preds = %43, %43
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @PIN_CONFIG_BIAS_PULL_PIN_DEFAULT, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @PIN_CONFIG_BIAS_DISABLE, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %3, align 4
  br label %92

59:                                               ; preds = %43, %43, %43, %43, %43, %43
  %60 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %61 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sdiv i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = ashr i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* @RK3188_PULL_BITS_PER_PIN, align 4
  %72 = shl i32 1, %71
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %13, align 4
  %76 = load i32**, i32*** @rockchip_pull_list, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %3, align 4
  br label %92

85:                                               ; preds = %43
  %86 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %6, align 8
  %87 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %85, %59, %57, %41, %25
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @regmap_read(%struct.regmap.1*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
