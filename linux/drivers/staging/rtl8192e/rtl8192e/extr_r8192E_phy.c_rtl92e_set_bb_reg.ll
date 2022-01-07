; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_set_bb_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_set_bb_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@bMaskDWord = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_set_bb_reg(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @bMaskDWord, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @rtl92e_readl(%struct.net_device* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @_rtl92e_calculate_bit_shift(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @rtl92e_writel(%struct.net_device* %29, i32 %30, i32 %31)
  br label %38

33:                                               ; preds = %4
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @rtl92e_writel(%struct.net_device* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %15
  ret void
}

declare dso_local i32 @rtl92e_readl(%struct.net_device*, i32) #1

declare dso_local i32 @_rtl92e_calculate_bit_shift(i32) #1

declare dso_local i32 @rtl92e_writel(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
