; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_config_tx_power_per_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_config_tx_power_per_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@MT_EE_TX_POWER_DELTA_BW40 = common dso_local global i64 0, align 8
@MT_TX_PWR_CFG_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, i32*)* @mt7601u_config_tx_power_per_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_config_tx_power_per_rate(%struct.mt7601u_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* @MT_EE_TX_POWER_DELTA_BW40, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @get_delta(i32 %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @MT_EE_TX_POWER_BYRATE(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = call i32 @get_unaligned_le32(i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mt7601u_save_power_rate(%struct.mt7601u_dev* %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = xor i32 %28, -1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %16
  %32 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %33 = load i64, i64* @MT_TX_PWR_CFG_0, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %32, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %46 = call i32 @mt7601u_extra_power_over_mac(%struct.mt7601u_dev* %45)
  ret void
}

declare dso_local i32 @get_delta(i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @MT_EE_TX_POWER_BYRATE(i32) #1

declare dso_local i32 @mt7601u_save_power_rate(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i64, i32) #1

declare dso_local i32 @mt7601u_extra_power_over_mac(%struct.mt7601u_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
