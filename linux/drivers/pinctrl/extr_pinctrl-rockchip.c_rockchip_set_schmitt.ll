; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_set_schmitt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_set_schmitt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { i32, %struct.rockchip_pin_ctrl* }
%struct.rockchip_pin_ctrl = type { i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)* }
%struct.rockchip_pin_bank.0 = type opaque
%struct.regmap = type opaque
%struct.regmap.1 = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"setting input schmitt of GPIO%d-%d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pin_bank*, i32, i32)* @rockchip_set_schmitt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_set_schmitt(%struct.rockchip_pin_bank* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_pin_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_pinctrl*, align 8
  %9 = alloca %struct.rockchip_pin_ctrl*, align 8
  %10 = alloca %struct.regmap.1*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %17 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %16, i32 0, i32 1
  %18 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %17, align 8
  store %struct.rockchip_pinctrl* %18, %struct.rockchip_pinctrl** %8, align 8
  %19 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %20 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %19, i32 0, i32 1
  %21 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %20, align 8
  store %struct.rockchip_pin_ctrl* %21, %struct.rockchip_pin_ctrl** %9, align 8
  %22 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %23 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %26 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %9, align 8
  %32 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %31, i32 0, i32 0
  %33 = load i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)*, i32 (%struct.rockchip_pin_bank.0*, i32, %struct.regmap**, i32*, i32*)** %32, align 8
  %34 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %35 = bitcast %struct.rockchip_pin_bank* %34 to %struct.rockchip_pin_bank.0*
  %36 = load i32, i32* %6, align 4
  %37 = bitcast %struct.regmap.1** %10 to %struct.regmap**
  %38 = call i32 %33(%struct.rockchip_pin_bank.0* %35, i32 %36, %struct.regmap** %37, i32* %11, i32* %13)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %3
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 16
  %46 = call i32 @BIT(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 16
  %53 = call i32 @BIT(i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = or i32 %53, %55
  store i32 %56, i32* %15, align 4
  %57 = load %struct.regmap.1*, %struct.regmap.1** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @regmap_update_bits(%struct.regmap.1* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %43, %41
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap.1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
