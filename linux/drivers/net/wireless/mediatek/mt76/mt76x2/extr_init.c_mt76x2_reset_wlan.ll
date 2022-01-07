; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_init.c_mt76x2_reset_wlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_init.c_mt76x2_reset_wlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_WLAN_FUN_CTRL = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_EN = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_RESET_RF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_reset_wlan(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %40

9:                                                ; preds = %2
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %11 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %12 = call i32 @mt76_rr(%struct.mt76x02_dev* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_EN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %9
  %22 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_RESET_RF, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mt76_wr(%struct.mt76x02_dev* %25, i32 %26, i32 %27)
  %29 = call i32 @udelay(i32 20)
  %30 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_RESET_RF, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %21, %9
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %36 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @mt76_wr(%struct.mt76x02_dev* %35, i32 %36, i32 %37)
  %39 = call i32 @udelay(i32 20)
  br label %40

40:                                               ; preds = %34, %8
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @mt76x2_set_wlan_state(%struct.mt76x02_dev* %41, i32 %42)
  ret void
}

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt76x2_set_wlan_state(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
