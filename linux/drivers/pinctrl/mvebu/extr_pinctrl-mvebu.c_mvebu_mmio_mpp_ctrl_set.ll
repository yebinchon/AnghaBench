; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_mmio_mpp_ctrl_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_mmio_mpp_ctrl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_data = type { i64 }

@MVEBU_MPPS_PER_REG = common dso_local global i32 0, align 4
@MVEBU_MPP_BITS = common dso_local global i32 0, align 4
@MVEBU_MPP_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvebu_mmio_mpp_ctrl_set(%struct.mvebu_mpp_ctrl_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mvebu_mpp_ctrl_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mvebu_mpp_ctrl_data* %0, %struct.mvebu_mpp_ctrl_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %12 = udiv i32 %10, %11
  %13 = load i32, i32* @MVEBU_MPP_BITS, align 4
  %14 = mul i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %17 = urem i32 %15, %16
  %18 = load i32, i32* @MVEBU_MPP_BITS, align 4
  %19 = mul i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %4, align 8
  %21 = getelementptr inbounds %struct.mvebu_mpp_ctrl_data, %struct.mvebu_mpp_ctrl_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @readl(i64 %25)
  %27 = load i32, i32* @MVEBU_MPP_MASK, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = shl i64 %34, %36
  %38 = or i64 %33, %37
  %39 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %4, align 8
  %40 = getelementptr inbounds %struct.mvebu_mpp_ctrl_data, %struct.mvebu_mpp_ctrl_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writel(i64 %38, i64 %44)
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
