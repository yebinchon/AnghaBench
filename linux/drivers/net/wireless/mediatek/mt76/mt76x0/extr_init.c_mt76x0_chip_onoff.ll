; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_chip_onoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_chip_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_WLAN_FUN_CTRL = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_GPIO_OUT_EN = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_EN = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_RESET = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_RESET_RF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x0_chip_onoff(%struct.mt76x02_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %9 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %10 = call i32 @mt76_rr(%struct.mt76x02_dev* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %3
  %14 = load i32, i32* @MT_WLAN_FUN_CTRL_GPIO_OUT_EN, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_EN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %13
  %26 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_RESET, align 4
  %27 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_RESET_RF, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %32 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @mt76_wr(%struct.mt76x02_dev* %31, i32 %32, i32 %33)
  %35 = call i32 @udelay(i32 20)
  %36 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_RESET, align 4
  %37 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_RESET_RF, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %25, %13
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %45 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @mt76_wr(%struct.mt76x02_dev* %44, i32 %45, i32 %46)
  %48 = call i32 @udelay(i32 20)
  %49 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @mt76x0_set_wlan_state(%struct.mt76x02_dev* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt76x0_set_wlan_state(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
