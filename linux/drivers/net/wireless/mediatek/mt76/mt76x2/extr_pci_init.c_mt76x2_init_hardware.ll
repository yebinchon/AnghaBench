; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_init_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_init_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MT_RX_FILTR_CFG = common dso_local global i32 0, align 4
@MT76_STATE_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x2_init_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2_init_hardware(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %6 = call i32 @mt76x02_dma_disable(%struct.mt76x02_dev* %5)
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %8 = call i32 @mt76x2_reset_wlan(%struct.mt76x02_dev* %7, i32 1)
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %10 = call i32 @mt76x2_power_on(%struct.mt76x02_dev* %9)
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %12 = call i32 @mt76x2_eeprom_init(%struct.mt76x02_dev* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %59

17:                                               ; preds = %1
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %19 = call i32 @mt76x2_mac_reset(%struct.mt76x02_dev* %18, i32 1)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %59

24:                                               ; preds = %17
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = load i32, i32* @MT_RX_FILTR_CFG, align 4
  %27 = call i32 @mt76_rr(%struct.mt76x02_dev* %25, i32 %26)
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %32 = call i32 @mt76x02_dma_init(%struct.mt76x02_dev* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %59

37:                                               ; preds = %24
  %38 = load i32, i32* @MT76_STATE_INITIALIZED, align 4
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %38, i32* %41)
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %44 = call i32 @mt76x2_mac_start(%struct.mt76x02_dev* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %59

49:                                               ; preds = %37
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %51 = call i32 @mt76x2_mcu_init(%struct.mt76x02_dev* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %59

56:                                               ; preds = %49
  %57 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %58 = call i32 @mt76x2_mac_stop(%struct.mt76x02_dev* %57, i32 0)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %54, %47, %35, %22, %15
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @mt76x02_dma_disable(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_reset_wlan(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x2_power_on(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_eeprom_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_mac_reset(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_dma_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mt76x2_mac_start(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_mcu_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_mac_stop(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
