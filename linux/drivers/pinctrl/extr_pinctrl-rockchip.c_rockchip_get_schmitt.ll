; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_get_schmitt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_get_schmitt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { %struct.rockchip_pin_ctrl* }
%struct.rockchip_pin_ctrl = type { i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)* }
%struct.rockchip_pin_bank.0 = type opaque
%struct.regmap = type opaque
%struct.regmap.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pin_bank*, i32)* @rockchip_get_schmitt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_get_schmitt(%struct.rockchip_pin_bank* %0, i32 %1) #0 {
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
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %14 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %13, i32 0, i32 0
  %15 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %14, align 8
  store %struct.rockchip_pinctrl* %15, %struct.rockchip_pinctrl** %6, align 8
  %16 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %6, align 8
  %17 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %16, i32 0, i32 0
  %18 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %17, align 8
  store %struct.rockchip_pin_ctrl* %18, %struct.rockchip_pin_ctrl** %7, align 8
  %19 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %7, align 8
  %20 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %19, i32 0, i32 0
  %21 = load i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)*, i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)** %20, align 8
  %22 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %23 = bitcast %struct.rockchip_pin_bank* %22 to %struct.rockchip_pin_bank.0*
  %24 = load i32, i32* %5, align 4
  %25 = bitcast %struct.regmap.1** %8 to %struct.regmap**
  %26 = call i32 %21(%struct.rockchip_pin_bank.0* %23, i32 %24, %struct.regmap** %25, i32* %9, i32* %11)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load %struct.regmap.1*, %struct.regmap.1** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @regmap_read(%struct.regmap.1* %32, i32 %33, i32* %12)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = ashr i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %37, %29
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @regmap_read(%struct.regmap.1*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
