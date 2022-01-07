; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i32 }

@RTW_DPK_DPK_ON = common dso_local global i32 0, align 4
@REG_NCTL0 = common dso_local global i32 0, align 4
@BIT_SUBPAGE = common dso_local global i32 0, align 4
@REG_IQK_CTL1 = common dso_local global i32 0, align 4
@BIT_TX_CFIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822c_dpk_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_on(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dpk_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.rtw_dpk_info* %8, %struct.rtw_dpk_info** %5, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @RTW_DPK_DPK_ON, align 4
  %12 = call i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev* %9, i32 %10, i32 %11)
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %14 = load i32, i32* @REG_NCTL0, align 4
  %15 = load i32, i32* @BIT_SUBPAGE, align 4
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 1
  %18 = or i32 8, %17
  %19 = call i32 @rtw_write32_mask(%struct.rtw_dev* %13, i32 %14, i32 %15, i32 %18)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %21 = load i32, i32* @REG_IQK_CTL1, align 4
  %22 = load i32, i32* @BIT_TX_CFIR, align 4
  %23 = call i32 @rtw_write32_mask(%struct.rtw_dev* %20, i32 %21, i32 %22, i32 0)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %5, align 8
  %26 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @test_bit(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rtw8822c_dpk_cal_gs(%struct.rtw_dev* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @rtw8822c_dpk_cal_gs(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
