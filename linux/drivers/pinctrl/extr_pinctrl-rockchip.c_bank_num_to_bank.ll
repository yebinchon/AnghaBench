; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_bank_num_to_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_bank_num_to_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32 }
%struct.rockchip_pinctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.rockchip_pin_bank* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rockchip_pin_bank* (%struct.rockchip_pinctrl*, i32)* @bank_num_to_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rockchip_pin_bank* @bank_num_to_bank(%struct.rockchip_pinctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.rockchip_pin_bank*, align 8
  %4 = alloca %struct.rockchip_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rockchip_pin_bank*, align 8
  %7 = alloca i32, align 4
  store %struct.rockchip_pinctrl* %0, %struct.rockchip_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %4, align 8
  %9 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %11, align 8
  store %struct.rockchip_pin_bank* %12, %struct.rockchip_pin_bank** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %4, align 8
  %16 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %13
  %22 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %23 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  store %struct.rockchip_pin_bank* %28, %struct.rockchip_pin_bank** %3, align 8
  br label %39

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %34 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %33, i32 1
  store %struct.rockchip_pin_bank* %34, %struct.rockchip_pin_bank** %6, align 8
  br label %13

35:                                               ; preds = %13
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.rockchip_pin_bank* @ERR_PTR(i32 %37)
  store %struct.rockchip_pin_bank* %38, %struct.rockchip_pin_bank** %3, align 8
  br label %39

39:                                               ; preds = %35, %27
  %40 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %3, align 8
  ret %struct.rockchip_pin_bank* %40
}

declare dso_local %struct.rockchip_pin_bank* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
