; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear1340.c_gpio_request_endisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear1340.c_gpio_request_endisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_pmx = type { i32 }

@PAD_FUNCTION_EN_1 = common dso_local global i32 0, align 4
@PAD_FUNCTION_EN_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spear_pmx*, i32, i32)* @gpio_request_endisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_request_endisable(%struct.spear_pmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spear_pmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spear_pmx* %0, %struct.spear_pmx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = srem i32 %15, 32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ule i32 %17, 3
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @PAD_FUNCTION_EN_1, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = add i64 %21, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  br label %36

27:                                               ; preds = %3
  %28 = load i32, i32* @PAD_FUNCTION_EN_5, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %30, 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = add i64 %29, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %27, %19
  %37 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @pmx_readl(%struct.spear_pmx* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %53

48:                                               ; preds = %36
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.spear_pmx*, %struct.spear_pmx** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @pmx_writel(%struct.spear_pmx* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @pmx_readl(%struct.spear_pmx*, i32) #1

declare dso_local i32 @pmx_writel(%struct.spear_pmx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
