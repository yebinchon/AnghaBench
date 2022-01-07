; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_init.c_mt76x2u_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_init.c_mt76x2u_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@CFG = common dso_local global i32 0, align 4
@MT_WLAN_MTC_CTRL_MTCMOS_PWR_UP = common dso_local global i32 0, align 4
@MT_WLAN_MTC_CTRL_STATE_UP = common dso_local global i32 0, align 4
@MT_WLAN_MTC_CTRL_PWR_ACK = common dso_local global i32 0, align 4
@MT_WLAN_MTC_CTRL_PWR_ACK_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x2u_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2u_power_on(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %4 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %5 = load i32, i32* @CFG, align 4
  %6 = call i32 @MT_VEND_ADDR(i32 %5, i32 328)
  %7 = load i32, i32* @MT_WLAN_MTC_CTRL_MTCMOS_PWR_UP, align 4
  %8 = call i32 @mt76_set(%struct.mt76x02_dev* %4, i32 %6, i32 %7)
  %9 = load i32, i32* @MT_WLAN_MTC_CTRL_STATE_UP, align 4
  %10 = load i32, i32* @MT_WLAN_MTC_CTRL_PWR_ACK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MT_WLAN_MTC_CTRL_PWR_ACK_S, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %15 = load i32, i32* @CFG, align 4
  %16 = call i32 @MT_VEND_ADDR(i32 %15, i32 328)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @mt76_poll(%struct.mt76x02_dev* %14, i32 %16, i32 %17, i32 %18, i32 1000)
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %21 = load i32, i32* @CFG, align 4
  %22 = call i32 @MT_VEND_ADDR(i32 %21, i32 328)
  %23 = call i32 @mt76_clear(%struct.mt76x02_dev* %20, i32 %22, i32 8323072)
  %24 = call i32 @usleep_range(i32 10, i32 20)
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %26 = load i32, i32* @CFG, align 4
  %27 = call i32 @MT_VEND_ADDR(i32 %26, i32 328)
  %28 = call i32 @mt76_clear(%struct.mt76x02_dev* %25, i32 %27, i32 251658240)
  %29 = call i32 @usleep_range(i32 10, i32 20)
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %31 = load i32, i32* @CFG, align 4
  %32 = call i32 @MT_VEND_ADDR(i32 %31, i32 328)
  %33 = call i32 @mt76_set(%struct.mt76x02_dev* %30, i32 %32, i32 251658240)
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %35 = load i32, i32* @CFG, align 4
  %36 = call i32 @MT_VEND_ADDR(i32 %35, i32 328)
  %37 = call i32 @mt76_clear(%struct.mt76x02_dev* %34, i32 %36, i32 4095)
  %38 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %39 = load i32, i32* @CFG, align 4
  %40 = call i32 @MT_VEND_ADDR(i32 %39, i32 4612)
  %41 = call i32 @BIT(i32 3)
  %42 = call i32 @mt76_clear(%struct.mt76x02_dev* %38, i32 %40, i32 %41)
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %44 = load i32, i32* @CFG, align 4
  %45 = call i32 @MT_VEND_ADDR(i32 %44, i32 128)
  %46 = call i32 @BIT(i32 0)
  %47 = call i32 @mt76_set(%struct.mt76x02_dev* %43, i32 %45, i32 %46)
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %49 = load i32, i32* @CFG, align 4
  %50 = call i32 @MT_VEND_ADDR(i32 %49, i32 100)
  %51 = call i32 @BIT(i32 18)
  %52 = call i32 @mt76_clear(%struct.mt76x02_dev* %48, i32 %50, i32 %51)
  %53 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %54 = call i32 @mt76x2u_power_on_rf(%struct.mt76x02_dev* %53, i32 0)
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %56 = call i32 @mt76x2u_power_on_rf(%struct.mt76x02_dev* %55, i32 1)
  ret void
}

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_VEND_ADDR(i32, i32) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76x2u_power_on_rf(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
