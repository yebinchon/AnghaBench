; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-orion.c_orion_mpp_ctrl_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-orion.c_orion_mpp_ctrl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_data = type { i32 }

@MVEBU_MPPS_PER_REG = common dso_local global i32 0, align 4
@MVEBU_MPP_BITS = common dso_local global i32 0, align 4
@mpp_base = common dso_local global i64 0, align 8
@MVEBU_MPP_MASK = common dso_local global i32 0, align 4
@high_mpp_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mpp_ctrl_data*, i32, i64)* @orion_mpp_ctrl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_mpp_ctrl_set(%struct.mvebu_mpp_ctrl_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mvebu_mpp_ctrl_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mvebu_mpp_ctrl_data* %0, %struct.mvebu_mpp_ctrl_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %13 = urem i32 %11, %12
  %14 = load i32, i32* @MVEBU_MPP_BITS, align 4
  %15 = mul i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %16, 16
  br i1 %17, label %18, label %46

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %21 = udiv i32 %19, %20
  %22 = load i32, i32* @MVEBU_MPP_BITS, align 4
  %23 = mul i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i64, i64* @mpp_base, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 @readl(i64 %27)
  %29 = load i32, i32* @MVEBU_MPP_MASK, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 %36, %38
  %40 = or i64 %35, %39
  %41 = load i64, i64* @mpp_base, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writel(i64 %40, i64 %44)
  br label %63

46:                                               ; preds = %3
  %47 = load i64, i64* @high_mpp_base, align 8
  %48 = call i32 @readl(i64 %47)
  %49 = load i32, i32* @MVEBU_MPP_MASK, align 4
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = shl i64 %56, %58
  %60 = or i64 %55, %59
  %61 = load i64, i64* @high_mpp_base, align 8
  %62 = call i32 @writel(i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %46, %18
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
