; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-rcu-usb2.c_ltq_rcu_usb2_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-rcu-usb2.c_ltq_rcu_usb2_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ltq_rcu_usb2_priv = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@RCU_CFG1_TX_PEE = common dso_local global i32 0, align 4
@RCU_CFG1_DIS_THR_MASK = common dso_local global i32 0, align 4
@RCU_CFG1_DIS_THR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ltq_rcu_usb2_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_rcu_usb2_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.ltq_rcu_usb2_priv*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.ltq_rcu_usb2_priv* @phy_get_drvdata(%struct.phy* %4)
  store %struct.ltq_rcu_usb2_priv* %5, %struct.ltq_rcu_usb2_priv** %3, align 8
  %6 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RCU_CFG1_TX_PEE, align 4
  %20 = load i32, i32* @RCU_CFG1_TX_PEE, align 4
  %21 = call i32 @regmap_update_bits(i32 %15, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RCU_CFG1_DIS_THR_MASK, align 4
  %29 = load i32, i32* @RCU_CFG1_DIS_THR_SHIFT, align 4
  %30 = shl i32 7, %29
  %31 = call i32 @regmap_update_bits(i32 %24, i32 %27, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %12, %1
  %33 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %34 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @BIT(i32 %43)
  %45 = call i32 @regmap_update_bits(i32 %35, i32 %38, i32 %44, i32 0)
  %46 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %50 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %53 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = call i32 @regmap_update_bits(i32 %48, i32 %51, i32 %57, i32 0)
  %59 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %66 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @BIT(i32 %69)
  %71 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %3, align 8
  %72 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @BIT(i32 %75)
  %77 = call i32 @regmap_update_bits(i32 %61, i32 %64, i32 %70, i32 %76)
  ret i32 0
}

declare dso_local %struct.ltq_rcu_usb2_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
