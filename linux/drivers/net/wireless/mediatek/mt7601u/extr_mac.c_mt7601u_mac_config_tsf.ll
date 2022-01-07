; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_mac_config_tsf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_mac_config_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@MT_BEACON_TIME_CFG = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_TIMER_EN = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_SYNC_MODE = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_TBTT_EN = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_INTVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7601u_mac_config_tsf(%struct.mt7601u_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %9 = load i32, i32* @MT_BEACON_TIME_CFG, align 4
  %10 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @MT_BEACON_TIME_CFG_TIMER_EN, align 4
  %12 = load i32, i32* @MT_BEACON_TIME_CFG_SYNC_MODE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MT_BEACON_TIME_CFG_TBTT_EN, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %23 = load i32, i32* @MT_BEACON_TIME_CFG, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %22, i32 %23, i32 %24)
  br label %43

26:                                               ; preds = %3
  %27 = load i32, i32* @MT_BEACON_TIME_CFG_INTVAL, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @MT_BEACON_TIME_CFG_INTVAL, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 4
  %34 = call i32 @FIELD_PREP(i32 %31, i32 %33)
  %35 = load i32, i32* @MT_BEACON_TIME_CFG_TIMER_EN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MT_BEACON_TIME_CFG_SYNC_MODE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MT_BEACON_TIME_CFG_TBTT_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
