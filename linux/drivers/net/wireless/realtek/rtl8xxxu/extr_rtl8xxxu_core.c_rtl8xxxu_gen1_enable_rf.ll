; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen1_enable_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen1_enable_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32, i32, i64 }

@REG_SPS0_CTRL = common dso_local global i32 0, align 4
@REG_FPGA0_XAB_RF_PARM = common dso_local global i32 0, align 4
@REG_OFDM0_TRX_PATH_ENABLE = common dso_local global i32 0, align 4
@OFDM_RF_PATH_TX_MASK = common dso_local global i32 0, align 4
@OFDM_RF_PATH_TX_A = common dso_local global i32 0, align 4
@OFDM_RF_PATH_TX_B = common dso_local global i32 0, align 4
@RTL8192C = common dso_local global i64 0, align 8
@RTL8191C = common dso_local global i64 0, align 8
@REG_FPGA0_RF_MODE = common dso_local global i32 0, align 4
@FPGA_RF_MODE_JAPAN = common dso_local global i32 0, align 4
@REG_RX_WAIT_CCA = common dso_local global i32 0, align 4
@RF_A = common dso_local global i32 0, align 4
@RF6052_REG_AC = common dso_local global i32 0, align 4
@RF_B = common dso_local global i32 0, align 4
@REG_TXPAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8xxxu_gen1_enable_rf(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %5 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %6 = load i32, i32* @REG_SPS0_CTRL, align 4
  %7 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = call i32 @BIT(i32 0)
  %9 = call i32 @BIT(i32 3)
  %10 = or i32 %8, %9
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %14 = load i32, i32* @REG_SPS0_CTRL, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %13, i32 %14, i32 %15)
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %18 = load i32, i32* @REG_FPGA0_XAB_RF_PARM, align 4
  %19 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = call i32 @BIT(i32 4)
  %21 = call i32 @BIT(i32 5)
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = call i32 @BIT(i32 3)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %30 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = call i32 @BIT(i32 20)
  %35 = call i32 @BIT(i32 21)
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = call i32 @BIT(i32 19)
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %1
  %44 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %45 = load i32, i32* @REG_FPGA0_XAB_RF_PARM, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %44, i32 %45, i32 %46)
  %48 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %49 = load i32, i32* @REG_OFDM0_TRX_PATH_ENABLE, align 4
  %50 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @OFDM_RF_PATH_TX_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %56 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %43
  %60 = load i32, i32* @OFDM_RF_PATH_TX_A, align 4
  %61 = load i32, i32* @OFDM_RF_PATH_TX_B, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %86

65:                                               ; preds = %43
  %66 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %67 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RTL8192C, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %73 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RTL8191C, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71, %65
  %78 = load i32, i32* @OFDM_RF_PATH_TX_B, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @OFDM_RF_PATH_TX_A, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %59
  %87 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %88 = load i32, i32* @REG_OFDM0_TRX_PATH_ENABLE, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %87, i32 %88, i32 %89)
  %91 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %92 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %93 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @FPGA_RF_MODE_JAPAN, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %99 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %98, i32 %99, i32 %100)
  %102 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %103 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %110

106:                                              ; preds = %86
  %107 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %108 = load i32, i32* @REG_RX_WAIT_CCA, align 4
  %109 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %107, i32 %108, i32 1675306400)
  br label %114

110:                                              ; preds = %86
  %111 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %112 = load i32, i32* @REG_RX_WAIT_CCA, align 4
  %113 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %111, i32 %112, i32 1662723488)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %116 = load i32, i32* @RF_A, align 4
  %117 = load i32, i32* @RF6052_REG_AC, align 4
  %118 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %115, i32 %116, i32 %117, i32 208277)
  %119 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %120 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %125 = load i32, i32* @RF_B, align 4
  %126 = load i32, i32* @RF6052_REG_AC, align 4
  %127 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %124, i32 %125, i32 %126, i32 208277)
  br label %128

128:                                              ; preds = %123, %114
  %129 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %130 = load i32, i32* @REG_TXPAUSE, align 4
  %131 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %129, i32 %130, i32 0)
  ret void
}

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
