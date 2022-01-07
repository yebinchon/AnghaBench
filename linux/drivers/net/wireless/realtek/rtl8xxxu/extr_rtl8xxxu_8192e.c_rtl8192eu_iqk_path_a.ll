; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192eu_iqk_path_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192eu_iqk_path_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_FPGA0_IQK = common dso_local global i32 0, align 4
@RF_A = common dso_local global i32 0, align 4
@RF6052_REG_UNKNOWN_DF = common dso_local global i32 0, align 4
@REG_TX_IQK_TONE_A = common dso_local global i32 0, align 4
@REG_RX_IQK_TONE_A = common dso_local global i32 0, align 4
@REG_TX_IQK_TONE_B = common dso_local global i32 0, align 4
@REG_RX_IQK_TONE_B = common dso_local global i32 0, align 4
@REG_TX_IQK_PI_A = common dso_local global i32 0, align 4
@REG_RX_IQK_PI_A = common dso_local global i32 0, align 4
@REG_IQK_AGC_RSP = common dso_local global i32 0, align 4
@REG_IQK_AGC_PTS = common dso_local global i32 0, align 4
@REG_RX_POWER_AFTER_IQK_A_2 = common dso_local global i32 0, align 4
@REG_TX_POWER_BEFORE_IQK_A = common dso_local global i32 0, align 4
@REG_TX_POWER_AFTER_IQK_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8192eu_iqk_path_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192eu_iqk_path_a(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %8 = load i32, i32* @REG_FPGA0_IQK, align 4
  %9 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %7, i32 %8, i32 0)
  %10 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %11 = load i32, i32* @RF_A, align 4
  %12 = load i32, i32* @RF6052_REG_UNKNOWN_DF, align 4
  %13 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %10, i32 %11, i32 %12, i32 384)
  %14 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %15 = load i32, i32* @REG_FPGA0_IQK, align 4
  %16 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %14, i32 %15, i32 -2139095040)
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %18 = load i32, i32* @REG_TX_IQK_TONE_A, align 4
  %19 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %17, i32 %18, i32 402689052)
  %20 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %21 = load i32, i32* @REG_RX_IQK_TONE_A, align 4
  %22 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %20, i32 %21, i32 939559964)
  %23 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %24 = load i32, i32* @REG_TX_IQK_TONE_B, align 4
  %25 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %23, i32 %24, i32 939559964)
  %26 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %27 = load i32, i32* @REG_RX_IQK_TONE_B, align 4
  %28 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %26, i32 %27, i32 939559964)
  %29 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %30 = load i32, i32* @REG_TX_IQK_PI_A, align 4
  %31 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %29, i32 %30, i32 -2112617725)
  %32 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %33 = load i32, i32* @REG_RX_IQK_PI_A, align 4
  %34 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %32, i32 %33, i32 1746272256)
  %35 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %36 = load i32, i32* @REG_IQK_AGC_RSP, align 4
  %37 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %35, i32 %36, i32 4598033)
  %38 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %39 = load i32, i32* @REG_IQK_AGC_PTS, align 4
  %40 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %38, i32 %39, i32 -117440512)
  %41 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %42 = load i32, i32* @REG_IQK_AGC_PTS, align 4
  %43 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %41, i32 %42, i32 -134217728)
  %44 = call i32 @mdelay(i32 10)
  %45 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %46 = load i32, i32* @REG_RX_POWER_AFTER_IQK_A_2, align 4
  %47 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %49 = load i32, i32* @REG_TX_POWER_BEFORE_IQK_A, align 4
  %50 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %52 = load i32, i32* @REG_TX_POWER_AFTER_IQK_A, align 4
  %53 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @BIT(i32 28)
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 67043328
  %61 = icmp ne i32 %60, 21102592
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 67043328
  %65 = icmp ne i32 %64, 4325376
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %62, %58, %1
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
