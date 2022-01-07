; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_get_coef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_get_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_NCTL0 = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i64 0, align 8
@REG_DPD_CTL0 = common dso_local global i32 0, align 4
@REG_DPD_CTL0_S0 = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i64 0, align 8
@REG_DPD_CTL0_S1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64)* @rtw8822c_dpk_get_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_get_coef(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %6 = load i32, i32* @REG_NCTL0, align 4
  %7 = call i32 @rtw_write32(%struct.rtw_dev* %5, i32 %6, i32 12)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @RF_PATH_A, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = load i32, i32* @REG_DPD_CTL0, align 4
  %14 = call i32 @BIT(i32 24)
  %15 = call i32 @rtw_write32_mask(%struct.rtw_dev* %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = load i32, i32* @REG_DPD_CTL0_S0, align 4
  %18 = call i32 @rtw_write32(%struct.rtw_dev* %16, i32 %17, i32 805306496)
  br label %32

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @RF_PATH_B, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %25 = load i32, i32* @REG_DPD_CTL0, align 4
  %26 = call i32 @BIT(i32 24)
  %27 = call i32 @rtw_write32_mask(%struct.rtw_dev* %24, i32 %25, i32 %26, i32 1)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %29 = load i32, i32* @REG_DPD_CTL0_S1, align 4
  %30 = call i32 @rtw_write32(%struct.rtw_dev* %28, i32 %29, i32 805306496)
  br label %31

31:                                               ; preds = %23, %19
  br label %32

32:                                               ; preds = %31, %11
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @rtw8822c_dpk_coef_tbl_apply(%struct.rtw_dev* %33, i64 %34)
  ret void
}

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw8822c_dpk_coef_tbl_apply(%struct.rtw_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
