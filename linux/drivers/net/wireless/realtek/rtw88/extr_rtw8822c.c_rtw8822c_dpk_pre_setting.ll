; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_pre_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_pre_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@RF_RXAGC_OFFSET = common dso_local global i32 0, align 4
@RFREG_MASK = common dso_local global i32 0, align 4
@REG_NCTL0 = common dso_local global i32 0, align 4
@RTW_BAND_2G = common dso_local global i64 0, align 8
@REG_DPD_LUT3 = common dso_local global i32 0, align 4
@REG_DPD_LUT0 = common dso_local global i32 0, align 4
@BIT_GLOSS_DB = common dso_local global i32 0, align 4
@REG_IQK_CTL1 = common dso_local global i32 0, align 4
@BIT_TX_CFIR = common dso_local global i32 0, align 4
@BIT_SUBPAGE = common dso_local global i32 0, align 4
@REG_DPD_CTL11 = common dso_local global i32 0, align 4
@REG_DPD_CTL12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_dpk_pre_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_pre_setting(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %47, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @RF_RXAGC_OFFSET, align 4
  %15 = load i32, i32* @RFREG_MASK, align 4
  %16 = call i32 @rtw_write_rf(%struct.rtw_dev* %12, i32 %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %18 = load i32, i32* @REG_NCTL0, align 4
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 1
  %21 = or i32 8, %20
  %22 = call i32 @rtw_write32(%struct.rtw_dev* %17, i32 %18, i32 %21)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %24 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RTW_BAND_2G, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %11
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %32 = load i32, i32* @REG_DPD_LUT3, align 4
  %33 = call i32 @rtw_write32(%struct.rtw_dev* %31, i32 %32, i32 521142272)
  br label %38

34:                                               ; preds = %11
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %36 = load i32, i32* @REG_DPD_LUT3, align 4
  %37 = call i32 @rtw_write32(%struct.rtw_dev* %35, i32 %36, i32 520945664)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %40 = load i32, i32* @REG_DPD_LUT0, align 4
  %41 = load i32, i32* @BIT_GLOSS_DB, align 4
  %42 = call i32 @rtw_write32_mask(%struct.rtw_dev* %39, i32 %40, i32 %41, i32 4)
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %44 = load i32, i32* @REG_IQK_CTL1, align 4
  %45 = load i32, i32* @BIT_TX_CFIR, align 4
  %46 = call i32 @rtw_write32_mask(%struct.rtw_dev* %43, i32 %44, i32 %45, i32 3)
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %4

50:                                               ; preds = %4
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %52 = load i32, i32* @REG_NCTL0, align 4
  %53 = load i32, i32* @BIT_SUBPAGE, align 4
  %54 = call i32 @rtw_write32_mask(%struct.rtw_dev* %51, i32 %52, i32 %53, i32 12)
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %56 = load i32, i32* @REG_DPD_CTL11, align 4
  %57 = call i32 @rtw_write32(%struct.rtw_dev* %55, i32 %56, i32 992155403)
  %58 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %59 = load i32, i32* @REG_DPD_CTL12, align 4
  %60 = call i32 @rtw_write32(%struct.rtw_dev* %58, i32 %59, i32 2002735943)
  ret void
}

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
