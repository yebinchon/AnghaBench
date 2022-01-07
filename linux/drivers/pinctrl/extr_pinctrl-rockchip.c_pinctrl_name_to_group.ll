; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_pinctrl_name_to_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_pinctrl_name_to_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_group = type { i32 }
%struct.rockchip_pinctrl = type { i32, %struct.rockchip_pin_group* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rockchip_pin_group* (%struct.rockchip_pinctrl*, i8*)* @pinctrl_name_to_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rockchip_pin_group* @pinctrl_name_to_group(%struct.rockchip_pinctrl* %0, i8* %1) #0 {
  %3 = alloca %struct.rockchip_pin_group*, align 8
  %4 = alloca %struct.rockchip_pinctrl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.rockchip_pinctrl* %0, %struct.rockchip_pinctrl** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %4, align 8
  %10 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %4, align 8
  %15 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %14, i32 0, i32 1
  %16 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %16, i64 %18
  %20 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %13
  %26 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %4, align 8
  %27 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %26, i32 0, i32 1
  %28 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.rockchip_pin_group, %struct.rockchip_pin_group* %28, i64 %30
  store %struct.rockchip_pin_group* %31, %struct.rockchip_pin_group** %3, align 8
  br label %37

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %7

36:                                               ; preds = %7
  store %struct.rockchip_pin_group* null, %struct.rockchip_pin_group** %3, align 8
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.rockchip_pin_group*, %struct.rockchip_pin_group** %3, align 8
  ret %struct.rockchip_pin_group* %38
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
