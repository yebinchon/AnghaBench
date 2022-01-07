; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_find_next_grp_by_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_find_next_grp_by_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_37xx_pin_group = type { i32, i32, i32* }
%struct.armada_37xx_pinctrl = type { i32, %struct.armada_37xx_pin_group* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.armada_37xx_pin_group* (%struct.armada_37xx_pinctrl*, i32, i32*)* @armada_37xx_find_next_grp_by_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.armada_37xx_pin_group* @armada_37xx_find_next_grp_by_pin(%struct.armada_37xx_pinctrl* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.armada_37xx_pin_group*, align 8
  %5 = alloca %struct.armada_37xx_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.armada_37xx_pin_group*, align 8
  %9 = alloca i32, align 4
  store %struct.armada_37xx_pinctrl* %0, %struct.armada_37xx_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  br label %10

10:                                               ; preds = %55, %3
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %14 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %10
  %18 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %19 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %18, i32 0, i32 1
  %20 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %19, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %20, i64 %23
  store %struct.armada_37xx_pin_group* %24, %struct.armada_37xx_pin_group** %8, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %52, %17
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %8, align 8
  %32 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %8, align 8
  %35 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = icmp slt i32 %30, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %29
  %40 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %8, align 8
  %41 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %8, align 8
  store %struct.armada_37xx_pin_group* %50, %struct.armada_37xx_pin_group** %4, align 8
  br label %57

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %29

55:                                               ; preds = %29
  br label %10

56:                                               ; preds = %10
  store %struct.armada_37xx_pin_group* null, %struct.armada_37xx_pin_group** %4, align 8
  br label %57

57:                                               ; preds = %56, %49
  %58 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %4, align 8
  ret %struct.armada_37xx_pin_group* %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
