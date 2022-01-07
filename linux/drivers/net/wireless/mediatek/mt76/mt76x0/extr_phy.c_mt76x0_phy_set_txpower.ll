; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, %struct.mt76_rate_power }
%struct.TYPE_3__ = type { i32 }
%struct.mt76_rate_power = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x0_phy_set_txpower(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.mt76_rate_power*, align 8
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store %struct.mt76_rate_power* %7, %struct.mt76_rate_power** %3, align 8
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %3, align 8
  %15 = call i32 @mt76x0_get_tx_power_per_rate(%struct.mt76x02_dev* %8, i32 %13, %struct.mt76_rate_power* %14)
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mt76x0_get_power_info(%struct.mt76x02_dev* %16, i32 %21, i32* %4)
  %23 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @mt76x02_add_rate_power_offset(%struct.mt76_rate_power* %23, i32 %24)
  %26 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %3, align 8
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %28 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mt76x02_limit_rate_power(%struct.mt76_rate_power* %26, i32 %30)
  %32 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %3, align 8
  %33 = call i32 @mt76x02_get_max_rate_power(%struct.mt76_rate_power* %32)
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %35 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @mt76x02_add_rate_power_offset(%struct.mt76_rate_power* %37, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %43 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @mt76x02_phy_set_txpower(%struct.mt76x02_dev* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @mt76x0_get_tx_power_per_rate(%struct.mt76x02_dev*, i32, %struct.mt76_rate_power*) #1

declare dso_local i32 @mt76x0_get_power_info(%struct.mt76x02_dev*, i32, i32*) #1

declare dso_local i32 @mt76x02_add_rate_power_offset(%struct.mt76_rate_power*, i32) #1

declare dso_local i32 @mt76x02_limit_rate_power(%struct.mt76_rate_power*, i32) #1

declare dso_local i32 @mt76x02_get_max_rate_power(%struct.mt76_rate_power*) #1

declare dso_local i32 @mt76x02_phy_set_txpower(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
