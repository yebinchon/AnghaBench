; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_by_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@RTW_DPK_DO_DPK = common dso_local global i32 0, align 4
@REG_NCTL0 = common dso_local global i32 0, align 4
@BIT_SUBPAGE = common dso_local global i32 0, align 4
@REG_DPD_CTL1_S0 = common dso_local global i32 0, align 4
@RF_MODE_TRXAGC = common dso_local global i32 0, align 4
@RFREG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32, i32)* @rtw8822c_dpk_by_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_dpk_by_path(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @RTW_DPK_DO_DPK, align 4
  %11 = call i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %13 = load i32, i32* @REG_NCTL0, align 4
  %14 = load i32, i32* @BIT_SUBPAGE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 1
  %17 = or i32 8, %16
  %18 = call i32 @rtw_write32_mask(%struct.rtw_dev* %12, i32 %13, i32 %14, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %21 = load i32, i32* @REG_DPD_CTL1_S0, align 4
  %22 = call i32 @BIT(i32 26)
  %23 = call i64 @rtw_read32_mask(%struct.rtw_dev* %20, i32 %21, i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = or i32 %19, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RF_MODE_TRXAGC, align 4
  %29 = load i32, i32* @RFREG_MASK, align 4
  %30 = call i32 @rtw_write_rf(%struct.rtw_dev* %26, i32 %27, i32 %28, i32 %29, i32 212500)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @rtw8822c_dpk_get_coef(%struct.rtw_dev* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i64 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rtw8822c_dpk_get_coef(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
