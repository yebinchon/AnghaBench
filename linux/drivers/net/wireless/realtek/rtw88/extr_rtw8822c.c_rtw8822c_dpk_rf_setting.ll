; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_rf_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_rf_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@RF_MODE_TRXAGC = common dso_local global i32 0, align 4
@RFREG_MASK = common dso_local global i32 0, align 4
@RF_TX_GAIN = common dso_local global i32 0, align 4
@RF_DEBUG = common dso_local global i32 0, align 4
@BIT_DE_TX_GAIN = common dso_local global i32 0, align 4
@BIT_DE_PWR_TRIM = common dso_local global i32 0, align 4
@RF_TX_GAIN_OFFSET = common dso_local global i32 0, align 4
@BIT_TX_OFFSET_VAL = common dso_local global i32 0, align 4
@RTW_BAND_2G = common dso_local global i64 0, align 8
@BIT_LB_ATT = common dso_local global i32 0, align 4
@RF_RXG_GAIN = common dso_local global i32 0, align 4
@BIT_RXG_GAIN = common dso_local global i32 0, align 4
@RF_TXA_LB_SW = common dso_local global i32 0, align 4
@BIT_TXA_LB_ATT = common dso_local global i32 0, align 4
@BIT_LB_SW = common dso_local global i32 0, align 4
@RF_RXA_MIX_GAIN = common dso_local global i32 0, align 4
@BIT_RXA_MIX_GAIN = common dso_local global i32 0, align 4
@BIT_RXAGC = common dso_local global i32 0, align 4
@BIT_DE_TRXBW = common dso_local global i32 0, align 4
@RF_BW_TRXBB = common dso_local global i32 0, align 4
@BIT_BW_RXBB = common dso_local global i32 0, align 4
@DPK_CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@BIT_BW_TXBB = common dso_local global i32 0, align 4
@RF_EXT_TIA_BW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32)* @rtw8822c_dpk_rf_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_dpk_rf_setting(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RF_MODE_TRXAGC, align 4
  %9 = load i32, i32* @RFREG_MASK, align 4
  %10 = call i32 @rtw_write_rf(%struct.rtw_dev* %6, i32 %7, i32 %8, i32 %9, i32 327703)
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RF_TX_GAIN, align 4
  %14 = load i32, i32* @RFREG_MASK, align 4
  %15 = call i32 @rtw_read_rf(%struct.rtw_dev* %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RF_DEBUG, align 4
  %19 = load i32, i32* @BIT_DE_TX_GAIN, align 4
  %20 = call i32 @rtw_write_rf(%struct.rtw_dev* %16, i32 %17, i32 %18, i32 %19, i32 1)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @RF_DEBUG, align 4
  %24 = load i32, i32* @BIT_DE_PWR_TRIM, align 4
  %25 = call i32 @rtw_write_rf(%struct.rtw_dev* %21, i32 %22, i32 %23, i32 %24, i32 1)
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @RF_TX_GAIN_OFFSET, align 4
  %29 = load i32, i32* @BIT_TX_OFFSET_VAL, align 4
  %30 = call i32 @rtw_write_rf(%struct.rtw_dev* %26, i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @RF_TX_GAIN, align 4
  %34 = load i32, i32* @RFREG_MASK, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @rtw_write_rf(%struct.rtw_dev* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RTW_BAND_2G, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %2
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @RF_TX_GAIN_OFFSET, align 4
  %48 = load i32, i32* @BIT_LB_ATT, align 4
  %49 = call i32 @rtw_write_rf(%struct.rtw_dev* %45, i32 %46, i32 %47, i32 %48, i32 1)
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @RF_RXG_GAIN, align 4
  %53 = load i32, i32* @BIT_RXG_GAIN, align 4
  %54 = call i32 @rtw_write_rf(%struct.rtw_dev* %50, i32 %51, i32 %52, i32 %53, i32 0)
  br label %76

55:                                               ; preds = %2
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @RF_TXA_LB_SW, align 4
  %59 = load i32, i32* @BIT_TXA_LB_ATT, align 4
  %60 = call i32 @rtw_write_rf(%struct.rtw_dev* %56, i32 %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @RF_TXA_LB_SW, align 4
  %64 = load i32, i32* @BIT_LB_ATT, align 4
  %65 = call i32 @rtw_write_rf(%struct.rtw_dev* %61, i32 %62, i32 %63, i32 %64, i32 6)
  %66 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @RF_TXA_LB_SW, align 4
  %69 = load i32, i32* @BIT_LB_SW, align 4
  %70 = call i32 @rtw_write_rf(%struct.rtw_dev* %66, i32 %67, i32 %68, i32 %69, i32 1)
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @RF_RXA_MIX_GAIN, align 4
  %74 = load i32, i32* @BIT_RXA_MIX_GAIN, align 4
  %75 = call i32 @rtw_write_rf(%struct.rtw_dev* %71, i32 %72, i32 %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %55, %44
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @RF_MODE_TRXAGC, align 4
  %80 = load i32, i32* @BIT_RXAGC, align 4
  %81 = call i32 @rtw_write_rf(%struct.rtw_dev* %77, i32 %78, i32 %79, i32 %80, i32 15)
  %82 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @RF_DEBUG, align 4
  %85 = load i32, i32* @BIT_DE_TRXBW, align 4
  %86 = call i32 @rtw_write_rf(%struct.rtw_dev* %82, i32 %83, i32 %84, i32 %85, i32 1)
  %87 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @RF_BW_TRXBB, align 4
  %90 = load i32, i32* @BIT_BW_RXBB, align 4
  %91 = call i32 @rtw_write_rf(%struct.rtw_dev* %87, i32 %88, i32 %89, i32 %90, i32 0)
  %92 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %93 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DPK_CHANNEL_WIDTH_80, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %76
  %100 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @RF_BW_TRXBB, align 4
  %103 = load i32, i32* @BIT_BW_TXBB, align 4
  %104 = call i32 @rtw_write_rf(%struct.rtw_dev* %100, i32 %101, i32 %102, i32 %103, i32 2)
  br label %111

105:                                              ; preds = %76
  %106 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @RF_BW_TRXBB, align 4
  %109 = load i32, i32* @BIT_BW_TXBB, align 4
  %110 = call i32 @rtw_write_rf(%struct.rtw_dev* %106, i32 %107, i32 %108, i32 %109, i32 1)
  br label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @RF_EXT_TIA_BW, align 4
  %115 = call i32 @BIT(i32 1)
  %116 = call i32 @rtw_write_rf(%struct.rtw_dev* %112, i32 %113, i32 %114, i32 %115, i32 1)
  %117 = call i32 @usleep_range(i32 100, i32 110)
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, 31
  ret i32 %119
}

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rtw_read_rf(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
