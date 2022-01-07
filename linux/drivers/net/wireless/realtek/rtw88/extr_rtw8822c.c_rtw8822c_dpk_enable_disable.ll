; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_enable_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_enable_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i32, i32*, i32 }

@REG_NCTL0 = common dso_local global i32 0, align 4
@BIT_SUBPAGE = common dso_local global i32 0, align 4
@REG_DPD_CTL1_S0 = common dso_local global i32 0, align 4
@BIT_DPD_EN = common dso_local global i32 0, align 4
@REG_DPD_CTL1_S1 = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i64 0, align 8
@REG_DPD_CTL0_S0 = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i64 0, align 8
@REG_DPD_CTL0_S1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_dpk_enable_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_enable_disable(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dpk_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.rtw_dpk_info* %7, %struct.rtw_dpk_info** %3, align 8
  %8 = call i32 @BIT(i32 15)
  %9 = call i32 @BIT(i32 14)
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = load i32, i32* @REG_NCTL0, align 4
  %13 = load i32, i32* @BIT_SUBPAGE, align 4
  %14 = call i32 @rtw_write32_mask(%struct.rtw_dev* %11, i32 %12, i32 %13, i32 12)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = load i32, i32* @REG_DPD_CTL1_S0, align 4
  %17 = load i32, i32* @BIT_DPD_EN, align 4
  %18 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %19 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @rtw_write32_mask(%struct.rtw_dev* %15, i32 %16, i32 %17, i32 %20)
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %23 = load i32, i32* @REG_DPD_CTL1_S1, align 4
  %24 = load i32, i32* @BIT_DPD_EN, align 4
  %25 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %26 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @rtw_write32_mask(%struct.rtw_dev* %22, i32 %23, i32 %24, i32 %27)
  %29 = load i64, i64* @RF_PATH_A, align 8
  %30 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %31 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @test_bit(i64 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %1
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %37 = load i32, i32* @REG_DPD_CTL1_S0, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @rtw_write32_mask(%struct.rtw_dev* %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %41 = load i32, i32* @REG_DPD_CTL0_S0, align 4
  %42 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %43 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @RF_PATH_A, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rtw_write8(%struct.rtw_dev* %40, i32 %41, i32 %47)
  br label %49

49:                                               ; preds = %35, %1
  %50 = load i64, i64* @RF_PATH_B, align 8
  %51 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %52 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @test_bit(i64 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %58 = load i32, i32* @REG_DPD_CTL1_S1, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @rtw_write32_mask(%struct.rtw_dev* %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %62 = load i32, i32* @REG_DPD_CTL0_S1, align 4
  %63 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %64 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @RF_PATH_B, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rtw_write8(%struct.rtw_dev* %61, i32 %62, i32 %68)
  br label %70

70:                                               ; preds = %56, %49
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
