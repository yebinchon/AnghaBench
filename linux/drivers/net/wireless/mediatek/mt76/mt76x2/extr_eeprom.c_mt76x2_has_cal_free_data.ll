; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_has_cal_free_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_has_cal_free_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_EE_NIC_CONF_0 = common dso_local global i64 0, align 8
@MT_EE_XTAL_TRIM_1 = common dso_local global i64 0, align 8
@MT_EE_TX_POWER_DELTA_BW40 = common dso_local global i64 0, align 8
@MT_EE_TX_POWER_0_START_2G = common dso_local global i64 0, align 8
@MT_EE_TX_POWER_0_GRP3_TX_POWER_DELTA = common dso_local global i64 0, align 8
@MT_EE_TX_POWER_0_GRP4_TSSI_SLOPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, i32*)* @mt76x2_has_cal_free_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2_has_cal_free_data(%struct.mt76x02_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i64, i64* @MT_EE_NIC_CONF_0, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* @MT_EE_XTAL_TRIM_1, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 65535
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %50

21:                                               ; preds = %14
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* @MT_EE_TX_POWER_DELTA_BW40, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %50

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* @MT_EE_TX_POWER_0_START_2G, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 65535
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %50

35:                                               ; preds = %28
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* @MT_EE_TX_POWER_0_GRP3_TX_POWER_DELTA, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %50

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* @MT_EE_TX_POWER_0_GRP4_TSSI_SLOPE, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 65535
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %50

49:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %41, %34, %27, %20, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
