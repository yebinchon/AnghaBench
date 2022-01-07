; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_set_wlan_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_init.c_mt76x0_set_wlan_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_CMB_CTRL_XTAL_RDY = common dso_local global i32 0, align 4
@MT_CMB_CTRL_PLL_LD = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_EN = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_CLK_EN = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL = common dso_local global i32 0, align 4
@MT_CMB_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PLL and XTAL check failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, i32, i32)* @mt76x0_set_wlan_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_set_wlan_state(%struct.mt76x02_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @MT_CMB_CTRL_XTAL_RDY, align 4
  %9 = load i32, i32* @MT_CMB_CTRL_PLL_LD, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_EN, align 4
  %15 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_CLK_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_EN, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %26 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mt76_wr(%struct.mt76x02_dev* %25, i32 %26, i32 %27)
  %29 = call i32 @udelay(i32 20)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %34 = load i32, i32* @MT_CMB_CTRL, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @mt76_poll(%struct.mt76x02_dev* %33, i32 %34, i32 %35, i32 %36, i32 2000)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %41 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %39, %32, %24
  ret void
}

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
