; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb.c_mt76x0u_init_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb.c_mt76x0u_init_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_US_CYC_CFG = common dso_local global i32 0, align 4
@MT_US_CYC_CNT = common dso_local global i32 0, align 4
@MT_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@MT_TXOP_TRUN_EN = common dso_local global i32 0, align 4
@MT_TXOP_EXT_CCA_DLY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_TIMER_EN = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_TX_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_RX_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_NAV_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_EIFS_AS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, i32)* @mt76x0u_init_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0u_init_hardware(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @mt76x0_chip_onoff(%struct.mt76x02_dev* %7, i32 1, i32 %8)
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 0
  %12 = call i32 @mt76x02_wait_for_mac(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ETIMEDOUT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %19 = call i32 @mt76x0u_mcu_init(%struct.mt76x02_dev* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %17
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %26 = call i32 @mt76x0_init_usb_dma(%struct.mt76x02_dev* %25)
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %28 = call i32 @mt76x0_init_hardware(%struct.mt76x02_dev* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %24
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %35 = call i32 @mt76x02u_init_beacon_config(%struct.mt76x02_dev* %34)
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %37 = load i32, i32* @MT_US_CYC_CFG, align 4
  %38 = load i32, i32* @MT_US_CYC_CNT, align 4
  %39 = call i32 @mt76_rmw(%struct.mt76x02_dev* %36, i32 %37, i32 %38, i32 30)
  %40 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %41 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %42 = load i32, i32* @MT_TXOP_TRUN_EN, align 4
  %43 = call i32 @FIELD_PREP(i32 %42, i32 63)
  %44 = load i32, i32* @MT_TXOP_EXT_CCA_DLY, align 4
  %45 = call i32 @FIELD_PREP(i32 %44, i32 88)
  %46 = or i32 %43, %45
  %47 = call i32 @mt76_wr(%struct.mt76x02_dev* %40, i32 %41, i32 %46)
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %49 = load i32, i32* @MT_CH_TIME_CFG, align 4
  %50 = load i32, i32* @MT_CH_TIME_CFG_TIMER_EN, align 4
  %51 = load i32, i32* @MT_CH_TIME_CFG_TX_AS_BUSY, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MT_CH_TIME_CFG_RX_AS_BUSY, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MT_CH_TIME_CFG_NAV_AS_BUSY, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MT_CH_TIME_CFG_EIFS_AS_BUSY, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @mt76_wr(%struct.mt76x02_dev* %48, i32 %49, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %33, %31, %22, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @mt76x0_chip_onoff(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02_wait_for_mac(i32*) #1

declare dso_local i32 @mt76x0u_mcu_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_init_usb_dma(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_init_hardware(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02u_init_beacon_config(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_rmw(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
