; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-dove.c_dove_audio1_ctrl_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-dove.c_dove_audio1_ctrl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_data = type { i32 }

@mpp4_base = common dso_local global i32 0, align 4
@AU1_GPIO_SEL = common dso_local global i32 0, align 4
@gconfmap = common dso_local global i32 0, align 4
@SSP_CTRL_STATUS_1 = common dso_local global i32 0, align 4
@SSP_ON_AU1 = common dso_local global i32 0, align 4
@MPP_GENERAL_CONFIG = common dso_local global i32 0, align 4
@AU1_SPDIFO_GPIO_EN = common dso_local global i32 0, align 4
@GLOBAL_CONFIG_2 = common dso_local global i32 0, align 4
@TWSI_OPTION3_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mpp_ctrl_data*, i32, i64)* @dove_audio1_ctrl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dove_audio1_ctrl_set(%struct.mvebu_mpp_ctrl_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mvebu_mpp_ctrl_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mvebu_mpp_ctrl_data* %0, %struct.mvebu_mpp_ctrl_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @mpp4_base, align 4
  %9 = call i32 @readl(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @AU1_GPIO_SEL, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @BIT(i32 3)
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @AU1_GPIO_SEL, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @mpp4_base, align 4
  %25 = call i32 @writel(i32 %23, i32 %24)
  %26 = load i32, i32* @gconfmap, align 4
  %27 = load i32, i32* @SSP_CTRL_STATUS_1, align 4
  %28 = load i32, i32* @SSP_ON_AU1, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @BIT(i32 2)
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @SSP_ON_AU1, align 4
  br label %36

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %37)
  %39 = load i32, i32* @gconfmap, align 4
  %40 = load i32, i32* @MPP_GENERAL_CONFIG, align 4
  %41 = load i32, i32* @AU1_SPDIFO_GPIO_EN, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @BIT(i32 1)
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @AU1_SPDIFO_GPIO_EN, align 4
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %41, i32 %50)
  %52 = load i32, i32* @gconfmap, align 4
  %53 = load i32, i32* @GLOBAL_CONFIG_2, align 4
  %54 = load i32, i32* @TWSI_OPTION3_GPIO, align 4
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @BIT(i32 0)
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @TWSI_OPTION3_GPIO, align 4
  br label %62

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %63)
  ret i32 0
}

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
