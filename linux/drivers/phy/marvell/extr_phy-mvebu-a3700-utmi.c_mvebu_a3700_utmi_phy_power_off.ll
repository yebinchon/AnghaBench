; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-utmi.c_mvebu_a3700_utmi_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-utmi.c_mvebu_a3700_utmi_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mvebu_a3700_utmi = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RB_USB2PHY_PU = common dso_local global i32 0, align 4
@USB2_PHY_OTG_CTRL = common dso_local global i64 0, align 8
@PHY_PU_OTG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mvebu_a3700_utmi_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_a3700_utmi_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.mvebu_a3700_utmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %6 = load %struct.phy*, %struct.phy** %2, align 8
  %7 = call %struct.mvebu_a3700_utmi* @phy_get_drvdata(%struct.phy* %6)
  store %struct.mvebu_a3700_utmi* %7, %struct.mvebu_a3700_utmi** %3, align 8
  %8 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %3, align 8
  %9 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %3, align 8
  %14 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @USB2_PHY_CTRL(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @RB_USB2PHY_PU, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @RB_USB2PHY_SUSPM(i32 %21)
  %23 = or i32 %20, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %3, align 8
  %29 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @USB2_PHY_CTRL(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @writel(i32 %27, i64 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %1
  %38 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %3, align 8
  %39 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB2_PHY_OTG_CTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @PHY_PU_OTG, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mvebu_a3700_utmi*, %struct.mvebu_a3700_utmi** %3, align 8
  %50 = getelementptr inbounds %struct.mvebu_a3700_utmi, %struct.mvebu_a3700_utmi* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @USB2_PHY_OTG_CTRL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  br label %55

55:                                               ; preds = %37, %1
  ret i32 0
}

declare dso_local %struct.mvebu_a3700_utmi* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @USB2_PHY_CTRL(i32) #1

declare dso_local i32 @RB_USB2PHY_SUSPM(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
