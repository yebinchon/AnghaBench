; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-berlin-sata.c_phy_berlin_sata_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-berlin-sata.c_phy_berlin_sata_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.phy_berlin_desc = type { i32 }
%struct.phy_berlin_priv = type { i32, i32, i64 }

@CONTROL_REGISTER = common dso_local global i32 0, align 4
@HOST_VSA_ADDR = common dso_local global i64 0, align 8
@HOST_VSA_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @phy_berlin_sata_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_berlin_sata_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.phy_berlin_desc*, align 8
  %4 = alloca %struct.phy_berlin_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %6 = load %struct.phy*, %struct.phy** %2, align 8
  %7 = call %struct.phy_berlin_desc* @phy_get_drvdata(%struct.phy* %6)
  store %struct.phy_berlin_desc* %7, %struct.phy_berlin_desc** %3, align 8
  %8 = load %struct.phy*, %struct.phy** %2, align 8
  %9 = getelementptr inbounds %struct.phy, %struct.phy* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.phy_berlin_priv* @dev_get_drvdata(i32 %11)
  store %struct.phy_berlin_priv* %12, %struct.phy_berlin_priv** %4, align 8
  %13 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %4, align 8
  %14 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_prepare_enable(i32 %15)
  %17 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %4, align 8
  %18 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* @CONTROL_REGISTER, align 4
  %21 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %4, align 8
  %22 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HOST_VSA_ADDR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %4, align 8
  %28 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HOST_VSA_DATA, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.phy_berlin_desc*, %struct.phy_berlin_desc** %3, align 8
  %34 = getelementptr inbounds %struct.phy_berlin_desc, %struct.phy_berlin_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %4, align 8
  %40 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HOST_VSA_DATA, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %4, align 8
  %46 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %4, align 8
  %49 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @clk_disable_unprepare(i32 %50)
  ret i32 0
}

declare dso_local %struct.phy_berlin_desc* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.phy_berlin_priv* @dev_get_drvdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
