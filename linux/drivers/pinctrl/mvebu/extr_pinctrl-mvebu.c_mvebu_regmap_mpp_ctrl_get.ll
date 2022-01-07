; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_regmap_mpp_ctrl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_regmap_mpp_ctrl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MVEBU_MPPS_PER_REG = common dso_local global i32 0, align 4
@MVEBU_MPP_BITS = common dso_local global i32 0, align 4
@MVEBU_MPP_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvebu_regmap_mpp_ctrl_get(%struct.mvebu_mpp_ctrl_data* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvebu_mpp_ctrl_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mvebu_mpp_ctrl_data* %0, %struct.mvebu_mpp_ctrl_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %14 = udiv i32 %12, %13
  %15 = load i32, i32* @MVEBU_MPP_BITS, align 4
  %16 = mul i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %19 = urem i32 %17, %18
  %20 = load i32, i32* @MVEBU_MPP_BITS, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %5, align 8
  %23 = getelementptr inbounds %struct.mvebu_mpp_ctrl_data, %struct.mvebu_mpp_ctrl_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %5, align 8
  %27 = getelementptr inbounds %struct.mvebu_mpp_ctrl_data, %struct.mvebu_mpp_ctrl_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @regmap_read(i32 %25, i64 %32, i32* %10)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %46

38:                                               ; preds = %3
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = lshr i32 %39, %40
  %42 = load i32, i32* @MVEBU_MPP_MASK, align 4
  %43 = and i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = load i64*, i64** %7, align 8
  store i64 %44, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %38, %36
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
