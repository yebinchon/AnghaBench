; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_pin_to_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_pin_to_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, i32 }
%struct.rockchip_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rockchip_pin_bank* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rockchip_pin_bank* (%struct.rockchip_pinctrl*, i32)* @pin_to_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rockchip_pin_bank* @pin_to_bank(%struct.rockchip_pinctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.rockchip_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_pin_bank*, align 8
  store %struct.rockchip_pinctrl* %0, %struct.rockchip_pinctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  store %struct.rockchip_pin_bank* %10, %struct.rockchip_pin_bank** %5, align 8
  br label %11

11:                                               ; preds = %21, %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %14 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %17 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %15, %18
  %20 = icmp uge i32 %12, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %23 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %22, i32 1
  store %struct.rockchip_pin_bank* %23, %struct.rockchip_pin_bank** %5, align 8
  br label %11

24:                                               ; preds = %11
  %25 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  ret %struct.rockchip_pin_bank* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
