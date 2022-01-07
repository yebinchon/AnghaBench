; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pinconf_pull_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pinconf_pull_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_ctrl = type { i32 }

@PIN_CONFIG_BIAS_PULL_PIN_DEFAULT = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pin_ctrl*, i32)* @rockchip_pinconf_pull_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pinconf_pull_valid(%struct.rockchip_pin_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_pin_ctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.rockchip_pin_ctrl* %0, %struct.rockchip_pin_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %4, align 8
  %7 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %30 [
    i32 135, label %9
    i32 133, label %9
    i32 134, label %20
    i32 136, label %25
    i32 128, label %25
    i32 132, label %25
    i32 131, label %25
    i32 130, label %25
    i32 129, label %25
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PIN_CONFIG_BIAS_PULL_PIN_DEFAULT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PIN_CONFIG_BIAS_DISABLE, align 4
  %16 = icmp eq i32 %14, %15
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ true, %9 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %2, %2, %2, %2, %2, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PIN_CONFIG_BIAS_PULL_PIN_DEFAULT, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %25, %20, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
