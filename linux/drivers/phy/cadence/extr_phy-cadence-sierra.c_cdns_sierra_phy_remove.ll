; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-sierra.c_cdns_sierra_phy_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-sierra.c_cdns_sierra_phy_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cdns_sierra_phy = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns_sierra_phy_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_sierra_phy_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cdns_sierra_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.cdns_sierra_phy* @dev_get_drvdata(i32 %8)
  store %struct.cdns_sierra_phy* %9, %struct.cdns_sierra_phy** %3, align 8
  %10 = load %struct.cdns_sierra_phy*, %struct.cdns_sierra_phy** %3, align 8
  %11 = getelementptr inbounds %struct.cdns_sierra_phy, %struct.cdns_sierra_phy* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @reset_control_assert(i32 %12)
  %14 = load %struct.cdns_sierra_phy*, %struct.cdns_sierra_phy** %3, align 8
  %15 = getelementptr inbounds %struct.cdns_sierra_phy, %struct.cdns_sierra_phy* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @reset_control_assert(i32 %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @pm_runtime_disable(%struct.TYPE_4__* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %46, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.cdns_sierra_phy*, %struct.cdns_sierra_phy** %3, align 8
  %24 = getelementptr inbounds %struct.cdns_sierra_phy, %struct.cdns_sierra_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.cdns_sierra_phy*, %struct.cdns_sierra_phy** %3, align 8
  %29 = getelementptr inbounds %struct.cdns_sierra_phy, %struct.cdns_sierra_phy* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @reset_control_assert(i32 %35)
  %37 = load %struct.cdns_sierra_phy*, %struct.cdns_sierra_phy** %3, align 8
  %38 = getelementptr inbounds %struct.cdns_sierra_phy, %struct.cdns_sierra_phy* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @reset_control_put(i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %21

49:                                               ; preds = %21
  ret i32 0
}

declare dso_local %struct.cdns_sierra_phy* @dev_get_drvdata(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_4__*) #1

declare dso_local i32 @reset_control_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
