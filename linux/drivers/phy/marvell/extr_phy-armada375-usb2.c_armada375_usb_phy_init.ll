; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-armada375-usb2.c_armada375_usb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-armada375-usb2.c_armada375_usb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.armada375_cluster_phy = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@USB2_PHY_CONFIG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @armada375_usb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada375_usb_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.armada375_cluster_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.armada375_cluster_phy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.armada375_cluster_phy* %7, %struct.armada375_cluster_phy** %4, align 8
  %8 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %4, align 8
  %9 = icmp ne %struct.armada375_cluster_phy* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %4, align 8
  %15 = getelementptr inbounds %struct.armada375_cluster_phy, %struct.armada375_cluster_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @readl(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %4, align 8
  %19 = getelementptr inbounds %struct.armada375_cluster_phy, %struct.armada375_cluster_phy* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32, i32* @USB2_PHY_CONFIG_DISABLE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %13
  %27 = load i32, i32* @USB2_PHY_CONFIG_DISABLE, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.armada375_cluster_phy*, %struct.armada375_cluster_phy** %4, align 8
  %34 = getelementptr inbounds %struct.armada375_cluster_phy, %struct.armada375_cluster_phy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @writel(i32 %32, i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.armada375_cluster_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
