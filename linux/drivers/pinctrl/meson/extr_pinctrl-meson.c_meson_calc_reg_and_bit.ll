; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_calc_reg_and_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_calc_reg_and_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_bank = type { i32, %struct.meson_reg_desc* }
%struct.meson_reg_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_bank*, i32, i32, i32*, i32*)* @meson_calc_reg_and_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_calc_reg_and_bit(%struct.meson_bank* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.meson_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.meson_reg_desc*, align 8
  store %struct.meson_bank* %0, %struct.meson_bank** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.meson_bank*, %struct.meson_bank** %6, align 8
  %13 = getelementptr inbounds %struct.meson_bank, %struct.meson_bank* %12, i32 0, i32 1
  %14 = load %struct.meson_reg_desc*, %struct.meson_reg_desc** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.meson_reg_desc, %struct.meson_reg_desc* %14, i64 %16
  store %struct.meson_reg_desc* %17, %struct.meson_reg_desc** %11, align 8
  %18 = load %struct.meson_reg_desc*, %struct.meson_reg_desc** %11, align 8
  %19 = getelementptr inbounds %struct.meson_reg_desc, %struct.meson_reg_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 4
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.meson_reg_desc*, %struct.meson_reg_desc** %11, align 8
  %24 = getelementptr inbounds %struct.meson_reg_desc, %struct.meson_reg_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %25, %26
  %28 = load %struct.meson_bank*, %struct.meson_bank** %6, align 8
  %29 = getelementptr inbounds %struct.meson_bank, %struct.meson_bank* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub i32 %27, %30
  %32 = load i32*, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
