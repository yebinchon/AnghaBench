; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1310-miphy.c_spear1310_miphy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1310-miphy.c_spear1310_miphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.spear1310_miphy_priv = type { i64 }

@PCIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @spear1310_miphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear1310_miphy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.spear1310_miphy_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.spear1310_miphy_priv* @phy_get_drvdata(%struct.phy* %5)
  store %struct.spear1310_miphy_priv* %6, %struct.spear1310_miphy_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %3, align 8
  %8 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PCIE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %3, align 8
  %14 = call i32 @spear1310_miphy_pcie_init(%struct.spear1310_miphy_priv* %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %4, align 4
  ret i32 %16
}

declare dso_local %struct.spear1310_miphy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @spear1310_miphy_pcie_init(%struct.spear1310_miphy_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
