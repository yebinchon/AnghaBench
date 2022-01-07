; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@mt76x2_phy_calibrate = common dso_local global i32 0, align 4
@mt76x02_rates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x2_register_device(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %5, i32 0, i32 1
  %7 = load i32, i32* @mt76x2_phy_calibrate, align 4
  %8 = call i32 @INIT_DELAYED_WORK(i32* %6, i32 %7)
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %10 = call i32 @mt76x02_init_device(%struct.mt76x02_dev* %9)
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %12 = call i32 @mt76x2_init_hardware(%struct.mt76x02_dev* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %19 = call i32 @mt76x02_config_mac_addr_list(%struct.mt76x02_dev* %18)
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %20, i32 0, i32 0
  %22 = load i32, i32* @mt76x02_rates, align 4
  %23 = load i32, i32* @mt76x02_rates, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @mt76_register_device(%struct.TYPE_6__* %21, i32 1, i32 %22, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %44

29:                                               ; preds = %17
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %31 = call i32 @mt76x02_init_debugfs(%struct.mt76x02_dev* %30)
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @mt76x2_init_txpower(%struct.mt76x02_dev* %32, i32* %36)
  %38 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @mt76x2_init_txpower(%struct.mt76x02_dev* %38, i32* %42)
  store i32 0, i32* %2, align 4
  br label %48

44:                                               ; preds = %28
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %46 = call i32 @mt76x2_stop_hardware(%struct.mt76x02_dev* %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %29, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mt76x02_init_device(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_init_hardware(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_config_mac_addr_list(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_register_device(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mt76x02_init_debugfs(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_init_txpower(%struct.mt76x02_dev*, i32*) #1

declare dso_local i32 @mt76x2_stop_hardware(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
