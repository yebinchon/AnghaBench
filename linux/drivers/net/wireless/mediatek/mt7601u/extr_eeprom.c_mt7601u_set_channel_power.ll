; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_set_channel_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_set_channel_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@MT_TX_ALC_CFG_0 = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_0_LIMIT_0 = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_OFFSET = common dso_local global i32 0, align 4
@MT7601U_DEFAULT_TX_POWER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, i64*)* @mt7601u_set_channel_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_set_channel_power(%struct.mt7601u_dev* %0, i64* %1) #0 {
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %10 = load i32, i32* @MT_TX_ALC_CFG_0, align 4
  %11 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @MT_TX_ALC_CFG_0_LIMIT_0, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @FIELD_GET(i32 %12, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = call i64 @mt7601u_has_tssi(%struct.mt7601u_dev* %15, i64* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @mt7601u_set_channel_target_power(%struct.mt7601u_dev* %20, i64* %21, i64 %22)
  br label %58

24:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 14
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load i64*, i64** %4, align 8
  %30 = load i32, i32* @MT_EE_TX_POWER_OFFSET, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %29, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @field_validate(i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %28
  %44 = load i64, i64* @MT7601U_DEFAULT_TX_POWER, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %46, i64* %54, align 8
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %25

58:                                               ; preds = %19, %25
  ret void
}

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i64 @mt7601u_has_tssi(%struct.mt7601u_dev*, i64*) #1

declare dso_local i32 @mt7601u_set_channel_target_power(%struct.mt7601u_dev*, i64*, i64) #1

declare dso_local i64 @field_validate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
