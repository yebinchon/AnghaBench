; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_WLAN_MTC_CTRL = common dso_local global i32 0, align 4
@MT_WLAN_MTC_CTRL_MTCMOS_PWR_UP = common dso_local global i32 0, align 4
@MT_WLAN_MTC_CTRL_STATE_UP = common dso_local global i32 0, align 4
@MT_WLAN_MTC_CTRL_PWR_ACK = common dso_local global i32 0, align 4
@MT_WLAN_MTC_CTRL_PWR_ACK_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x2_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2_power_on(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %4 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %5 = load i32, i32* @MT_WLAN_MTC_CTRL, align 4
  %6 = load i32, i32* @MT_WLAN_MTC_CTRL_MTCMOS_PWR_UP, align 4
  %7 = call i32 @mt76_set(%struct.mt76x02_dev* %4, i32 %5, i32 %6)
  %8 = load i32, i32* @MT_WLAN_MTC_CTRL_STATE_UP, align 4
  %9 = load i32, i32* @MT_WLAN_MTC_CTRL_PWR_ACK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MT_WLAN_MTC_CTRL_PWR_ACK_S, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %14 = load i32, i32* @MT_WLAN_MTC_CTRL, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @mt76_poll(%struct.mt76x02_dev* %13, i32 %14, i32 %15, i32 %16, i32 1000)
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %19 = load i32, i32* @MT_WLAN_MTC_CTRL, align 4
  %20 = call i32 @mt76_clear(%struct.mt76x02_dev* %18, i32 %19, i32 8323072)
  %21 = call i32 @udelay(i32 10)
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %23 = load i32, i32* @MT_WLAN_MTC_CTRL, align 4
  %24 = call i32 @mt76_clear(%struct.mt76x02_dev* %22, i32 %23, i32 251658240)
  %25 = call i32 @udelay(i32 10)
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %27 = load i32, i32* @MT_WLAN_MTC_CTRL, align 4
  %28 = call i32 @mt76_set(%struct.mt76x02_dev* %26, i32 %27, i32 251658240)
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %30 = load i32, i32* @MT_WLAN_MTC_CTRL, align 4
  %31 = call i32 @mt76_clear(%struct.mt76x02_dev* %29, i32 %30, i32 4095)
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %33 = call i32 @BIT(i32 3)
  %34 = call i32 @mt76_clear(%struct.mt76x02_dev* %32, i32 70148, i32 %33)
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %36 = call i32 @BIT(i32 0)
  %37 = call i32 @mt76_set(%struct.mt76x02_dev* %35, i32 65664, i32 %36)
  %38 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %39 = call i32 @BIT(i32 18)
  %40 = call i32 @mt76_clear(%struct.mt76x02_dev* %38, i32 65636, i32 %39)
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %42 = call i32 @mt76x2_power_on_rf(%struct.mt76x02_dev* %41, i32 0)
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %44 = call i32 @mt76x2_power_on_rf(%struct.mt76x02_dev* %43, i32 1)
  ret void
}

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76x2_power_on_rf(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
