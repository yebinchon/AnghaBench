; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen1_disable_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen1_disable_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_SPS0_CTRL = common dso_local global i32 0, align 4
@REG_FPGA0_XAB_RF_PARM = common dso_local global i32 0, align 4
@REG_OFDM0_TRX_PATH_ENABLE = common dso_local global i32 0, align 4
@OFDM_RF_PATH_TX_MASK = common dso_local global i32 0, align 4
@REG_FPGA0_RF_MODE = common dso_local global i32 0, align 4
@FPGA_RF_MODE_JAPAN = common dso_local global i32 0, align 4
@REG_RX_WAIT_CCA = common dso_local global i32 0, align 4
@RF_A = common dso_local global i32 0, align 4
@RF6052_REG_AC = common dso_local global i32 0, align 4
@RF_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8xxxu_gen1_disable_rf(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %5 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %6 = load i32, i32* @REG_SPS0_CTRL, align 4
  %7 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %9 = load i32, i32* @REG_FPGA0_XAB_RF_PARM, align 4
  %10 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = call i32 @BIT(i32 3)
  %12 = call i32 @BIT(i32 4)
  %13 = or i32 %11, %12
  %14 = call i32 @BIT(i32 5)
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %20 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = call i32 @BIT(i32 19)
  %25 = call i32 @BIT(i32 20)
  %26 = or i32 %24, %25
  %27 = call i32 @BIT(i32 21)
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %23, %1
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %34 = load i32, i32* @REG_FPGA0_XAB_RF_PARM, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %33, i32 %34, i32 %35)
  %37 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %38 = load i32, i32* @REG_OFDM0_TRX_PATH_ENABLE, align 4
  %39 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @OFDM_RF_PATH_TX_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %45 = load i32, i32* @REG_OFDM0_TRX_PATH_ENABLE, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %44, i32 %45, i32 %46)
  %48 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %49 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %50 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @FPGA_RF_MODE_JAPAN, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %55 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %54, i32 %55, i32 %56)
  %58 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %59 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %32
  %63 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %64 = load i32, i32* @REG_RX_WAIT_CCA, align 4
  %65 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %63, i32 %64, i32 14362016)
  br label %70

66:                                               ; preds = %32
  %67 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %68 = load i32, i32* @REG_RX_WAIT_CCA, align 4
  %69 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %67, i32 %68, i32 1779104)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %72 = load i32, i32* @RF_A, align 4
  %73 = load i32, i32* @RF6052_REG_AC, align 4
  %74 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %71, i32 %72, i32 %73, i32 0)
  %75 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %76 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %81 = load i32, i32* @RF_B, align 4
  %82 = load i32, i32* @RF6052_REG_AC, align 4
  %83 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %80, i32 %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %79, %70
  %85 = call i32 @BIT(i32 0)
  %86 = call i32 @BIT(i32 3)
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %3, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %92 = load i32, i32* @REG_SPS0_CTRL, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %91, i32 %92, i32 %93)
  ret void
}

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv*, i32, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
