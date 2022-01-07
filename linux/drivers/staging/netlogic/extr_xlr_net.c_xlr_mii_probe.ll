; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_mii_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.phy_device = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"no PHY found on phy_addr %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@xlr_gmac_link_adjust = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"could not attach PHY\0A\00", align 1
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlr_net_priv*)* @xlr_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_mii_probe(%struct.xlr_net_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlr_net_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %3, align 8
  %5 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %6 = call %struct.phy_device* @xlr_get_phydev(%struct.xlr_net_priv* %5)
  store %struct.phy_device* %6, %struct.phy_device** %4, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %8 = icmp ne %struct.phy_device* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %11 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %61

16:                                               ; preds = %1
  %17 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %18 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = call i32 @phydev_name(%struct.phy_device* %20)
  %22 = load i32, i32* @xlr_gmac_link_adjust, align 4
  %23 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %24 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.phy_device* @phy_connect(i32 %19, i32 %21, i32 %22, i32 %27)
  store %struct.phy_device* %28, %struct.phy_device** %4, align 8
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = call i64 @IS_ERR(%struct.phy_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %16
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %35 = call i32 @PTR_ERR(%struct.phy_device* %34)
  store i32 %35, i32* %2, align 4
  br label %61

36:                                               ; preds = %16
  %37 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %38 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ADVERTISED_MII, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %51 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %60 = call i32 @phy_attached_info(%struct.phy_device* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %36, %32, %9
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.phy_device* @xlr_get_phydev(%struct.xlr_net_priv*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.phy_device* @phy_connect(i32, i32, i32, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
