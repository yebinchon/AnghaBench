; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_u2_phy_instance_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_u2_phy_instance_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_tphy = type { i32 }
%struct.mtk_phy_instance = type { %struct.u2phy_banks }
%struct.u2phy_banks = type { i64 }

@U3P_U2PHYDTM1 = common dso_local global i64 0, align 8
@P2C_FORCE_IDDIG = common dso_local global i32 0, align 4
@P2C_RG_IDDIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_tphy*, %struct.mtk_phy_instance*, i32)* @u2_phy_instance_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u2_phy_instance_set_mode(%struct.mtk_tphy* %0, %struct.mtk_phy_instance* %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_tphy*, align 8
  %5 = alloca %struct.mtk_phy_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.u2phy_banks*, align 8
  %8 = alloca i32, align 4
  store %struct.mtk_tphy* %0, %struct.mtk_tphy** %4, align 8
  store %struct.mtk_phy_instance* %1, %struct.mtk_phy_instance** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %9, i32 0, i32 0
  store %struct.u2phy_banks* %10, %struct.u2phy_banks** %7, align 8
  %11 = load %struct.u2phy_banks*, %struct.u2phy_banks** %7, align 8
  %12 = getelementptr inbounds %struct.u2phy_banks, %struct.u2phy_banks* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @U3P_U2PHYDTM1, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %39 [
    i32 130, label %18
    i32 129, label %24
    i32 128, label %32
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @P2C_FORCE_IDDIG, align 4
  %20 = load i32, i32* @P2C_RG_IDDIG, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %40

24:                                               ; preds = %3
  %25 = load i32, i32* @P2C_FORCE_IDDIG, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @P2C_RG_IDDIG, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load i32, i32* @P2C_FORCE_IDDIG, align 4
  %34 = load i32, i32* @P2C_RG_IDDIG, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %40

39:                                               ; preds = %3
  br label %48

40:                                               ; preds = %32, %24, %18
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.u2phy_banks*, %struct.u2phy_banks** %7, align 8
  %43 = getelementptr inbounds %struct.u2phy_banks, %struct.u2phy_banks* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @U3P_U2PHYDTM1, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
