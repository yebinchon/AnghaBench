; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_init_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_init_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_NHM_TIMER_8723B = common dso_local global i64 0, align 8
@REG_NHM_TH9_TH10_8723B = common dso_local global i64 0, align 8
@REG_NHM_TH3_TO_TH0_8723B = common dso_local global i64 0, align 8
@REG_NHM_TH7_TO_TH4_8723B = common dso_local global i64 0, align 8
@REG_FPGA0_IQK = common dso_local global i64 0, align 8
@REG_OFDM0_FA_RSTC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*)* @rtl8723bu_init_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723bu_init_statistics(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %4 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %5 = load i64, i64* @REG_NHM_TIMER_8723B, align 8
  %6 = add nsw i64 %5, 2
  %7 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %4, i64 %6, i32 10000)
  %8 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %9 = load i64, i64* @REG_NHM_TH9_TH10_8723B, align 8
  %10 = add nsw i64 %9, 2
  %11 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %8, i64 %10, i32 65535)
  %12 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %13 = load i64, i64* @REG_NHM_TH3_TO_TH0_8723B, align 8
  %14 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %12, i64 %13, i32 -174)
  %15 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %16 = load i64, i64* @REG_NHM_TH7_TO_TH4_8723B, align 8
  %17 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %15, i64 %16, i32 -1)
  %18 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %19 = load i64, i64* @REG_FPGA0_IQK, align 8
  %20 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %18, i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, 255
  store i32 %22, i32* %3, align 4
  %23 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %24 = load i64, i64* @REG_FPGA0_IQK, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %23, i64 %24, i32 %25)
  %27 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %28 = load i64, i64* @REG_NHM_TH9_TH10_8723B, align 8
  %29 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %27, i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = call i32 @BIT(i32 8)
  %31 = call i32 @BIT(i32 9)
  %32 = or i32 %30, %31
  %33 = call i32 @BIT(i32 10)
  %34 = or i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %38 = load i64, i64* @REG_NHM_TH9_TH10_8723B, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %37, i64 %38, i32 %39)
  %41 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %42 = load i64, i64* @REG_OFDM0_FA_RSTC, align 8
  %43 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %41, i64 %42)
  store i32 %43, i32* %3, align 4
  %44 = call i32 @BIT(i32 7)
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %48 = load i64, i64* @REG_OFDM0_FA_RSTC, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %47, i64 %48, i32 %49)
  ret void
}

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i64, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i64, i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
