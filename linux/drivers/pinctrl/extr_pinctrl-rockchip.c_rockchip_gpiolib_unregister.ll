; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_gpiolib_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_gpiolib_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rockchip_pinctrl = type { %struct.rockchip_pin_ctrl* }
%struct.rockchip_pin_ctrl = type { i32, %struct.rockchip_pin_bank* }
%struct.rockchip_pin_bank = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.rockchip_pinctrl*)* @rockchip_gpiolib_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_gpiolib_unregister(%struct.platform_device* %0, %struct.rockchip_pinctrl* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rockchip_pinctrl*, align 8
  %5 = alloca %struct.rockchip_pin_ctrl*, align 8
  %6 = alloca %struct.rockchip_pin_bank*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.rockchip_pinctrl* %1, %struct.rockchip_pinctrl** %4, align 8
  %8 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %4, align 8
  %9 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %8, i32 0, i32 0
  %10 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %9, align 8
  store %struct.rockchip_pin_ctrl* %10, %struct.rockchip_pin_ctrl** %5, align 8
  %11 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %11, i32 0, i32 1
  %13 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %12, align 8
  store %struct.rockchip_pin_bank* %13, %struct.rockchip_pin_bank** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %30, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %5, align 8
  %17 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %22 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %30

26:                                               ; preds = %20
  %27 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %28 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %27, i32 0, i32 0
  %29 = call i32 @gpiochip_remove(i32* %28)
  br label %30

30:                                               ; preds = %26, %25
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %34 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %33, i32 1
  store %struct.rockchip_pin_bank* %34, %struct.rockchip_pin_bank** %6, align 8
  br label %14

35:                                               ; preds = %14
  ret i32 0
}

declare dso_local i32 @gpiochip_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
