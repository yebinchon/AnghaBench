; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_pci.c_mt76x0e_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_pci.c_mt76x0e_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_COEXCFG0 = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_0 = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_0_PA_IO_CURRENT = common dso_local global i32 0, align 4
@MT_XO_CTRL7 = common dso_local global i32 0, align 4
@MT_MAX_LEN_CFG = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_TIMER_EN = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_TX_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_RX_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_NAV_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_EIFS_AS_BUSY = common dso_local global i32 0, align 4
@MT_CH_CCA_RC_EN = common dso_local global i32 0, align 4
@MT_CH_TIME_CFG_CH_TIMER_CLR = common dso_local global i32 0, align 4
@MT76_STATE_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x0e_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0e_register_device(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %7 = call i32 @mt76x0_chip_onoff(%struct.mt76x02_dev* %6, i32 1, i32 0)
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %8, i32 0, i32 0
  %10 = call i32 @mt76x02_wait_for_mac(%struct.TYPE_3__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ETIMEDOUT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %99

15:                                               ; preds = %1
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %17 = call i32 @mt76x02_dma_disable(%struct.mt76x02_dev* %16)
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %19 = call i32 @mt76x0e_mcu_init(%struct.mt76x02_dev* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %99

24:                                               ; preds = %15
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = call i32 @mt76x02_dma_init(%struct.mt76x02_dev* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %99

31:                                               ; preds = %24
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %33 = call i32 @mt76x0_init_hardware(%struct.mt76x02_dev* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %99

38:                                               ; preds = %31
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %40 = call i32 @mt76x02e_init_beacon_config(%struct.mt76x02_dev* %39)
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %41, i32 0, i32 0
  %43 = call i32 @mt76_chip(%struct.TYPE_3__* %42)
  %44 = icmp eq i32 %43, 30224
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %47 = load i32, i32* @MT_COEXCFG0, align 4
  %48 = call i32 @BIT(i32 0)
  %49 = call i32 @mt76_clear(%struct.mt76x02_dev* %46, i32 %47, i32 %48)
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %51 = load i32, i32* @MT_EE_NIC_CONF_0, align 4
  %52 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MT_EE_NIC_CONF_0_PA_IO_CURRENT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %45
  %58 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %59 = load i32, i32* @MT_XO_CTRL7, align 4
  %60 = call i32 @mt76_set(%struct.mt76x02_dev* %58, i32 %59, i32 3075)
  br label %61

61:                                               ; preds = %57, %45
  br label %62

62:                                               ; preds = %61, %38
  %63 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %64 = call i32 @BIT(i32 9)
  %65 = call i32 @mt76_clear(%struct.mt76x02_dev* %63, i32 272, i32 %64)
  %66 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %67 = load i32, i32* @MT_MAX_LEN_CFG, align 4
  %68 = call i32 @BIT(i32 13)
  %69 = call i32 @mt76_set(%struct.mt76x02_dev* %66, i32 %67, i32 %68)
  %70 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %71 = load i32, i32* @MT_CH_TIME_CFG, align 4
  %72 = load i32, i32* @MT_CH_TIME_CFG_TIMER_EN, align 4
  %73 = load i32, i32* @MT_CH_TIME_CFG_TX_AS_BUSY, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @MT_CH_TIME_CFG_RX_AS_BUSY, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @MT_CH_TIME_CFG_NAV_AS_BUSY, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @MT_CH_TIME_CFG_EIFS_AS_BUSY, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @MT_CH_CCA_RC_EN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @MT_CH_TIME_CFG_CH_TIMER_CLR, align 4
  %84 = call i32 @FIELD_PREP(i32 %83, i32 1)
  %85 = or i32 %82, %84
  %86 = call i32 @mt76_wr(%struct.mt76x02_dev* %70, i32 %71, i32 %85)
  %87 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %88 = call i32 @mt76x0_register_device(%struct.mt76x02_dev* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %62
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %99

93:                                               ; preds = %62
  %94 = load i32, i32* @MT76_STATE_INITIALIZED, align 4
  %95 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %96 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = call i32 @set_bit(i32 %94, i32* %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %91, %36, %29, %22, %12
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @mt76x0_chip_onoff(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02_wait_for_mac(%struct.TYPE_3__*) #1

declare dso_local i32 @mt76x02_dma_disable(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0e_mcu_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_dma_init(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_init_hardware(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02e_init_beacon_config(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_chip(%struct.TYPE_3__*) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76x0_register_device(%struct.mt76x02_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
