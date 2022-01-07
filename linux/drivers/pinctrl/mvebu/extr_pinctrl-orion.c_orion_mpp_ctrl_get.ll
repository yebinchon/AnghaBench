; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-orion.c_orion_mpp_ctrl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-orion.c_orion_mpp_ctrl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_data = type { i32 }

@MVEBU_MPPS_PER_REG = common dso_local global i32 0, align 4
@MVEBU_MPP_BITS = common dso_local global i32 0, align 4
@mpp_base = common dso_local global i64 0, align 8
@MVEBU_MPP_MASK = common dso_local global i32 0, align 4
@high_mpp_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mpp_ctrl_data*, i32, i64*)* @orion_mpp_ctrl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_mpp_ctrl_get(%struct.mvebu_mpp_ctrl_data* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.mvebu_mpp_ctrl_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mvebu_mpp_ctrl_data* %0, %struct.mvebu_mpp_ctrl_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %11 = urem i32 %9, %10
  %12 = load i32, i32* @MVEBU_MPP_BITS, align 4
  %13 = mul i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %14, 16
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %19 = udiv i32 %17, %18
  %20 = load i32, i32* @MVEBU_MPP_BITS, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i64, i64* @mpp_base, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @readl(i64 %25)
  %27 = load i32, i32* %7, align 4
  %28 = lshr i32 %26, %27
  %29 = load i32, i32* @MVEBU_MPP_MASK, align 4
  %30 = and i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  br label %42

33:                                               ; preds = %3
  %34 = load i64, i64* @high_mpp_base, align 8
  %35 = call i32 @readl(i64 %34)
  %36 = load i32, i32* %7, align 4
  %37 = lshr i32 %35, %36
  %38 = load i32, i32* @MVEBU_MPP_MASK, align 4
  %39 = and i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = load i64*, i64** %6, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %33, %16
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
