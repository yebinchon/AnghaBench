; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_chip_onoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_chip_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@MT_WLAN_FUN_CTRL = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_GPIO_OUT_EN = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_EN = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_RESET = common dso_local global i32 0, align 4
@MT_WLAN_FUN_CTRL_WLAN_RESET_RF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, i32, i32)* @mt7601u_chip_onoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_chip_onoff(%struct.mt7601u_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %12 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %13 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = load i32, i32* @MT_WLAN_FUN_CTRL_GPIO_OUT_EN, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @MT_WLAN_FUN_CTRL_FRC_WL_ANT_SEL, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_EN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %16
  %29 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_RESET, align 4
  %30 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_RESET_RF, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %35 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %34, i32 %35, i32 %36)
  %38 = call i32 @udelay(i32 20)
  %39 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_RESET, align 4
  %40 = load i32, i32* @MT_WLAN_FUN_CTRL_WLAN_RESET_RF, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %28, %16
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %48 = load i32, i32* @MT_WLAN_FUN_CTRL, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %47, i32 %48, i32 %49)
  %51 = call i32 @udelay(i32 20)
  %52 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mt7601u_set_wlan_state(%struct.mt7601u_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %57 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt7601u_set_wlan_state(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
