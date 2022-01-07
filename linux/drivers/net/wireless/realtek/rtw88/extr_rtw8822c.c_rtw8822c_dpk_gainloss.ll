; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_gainloss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_gainloss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i32* }

@RF_MODE_TRXAGC = common dso_local global i32 0, align 4
@BIT_TXAGC = common dso_local global i32 0, align 4
@RTW_DPK_DAGC = common dso_local global i32 0, align 4
@RF_TX_GAIN = common dso_local global i32 0, align 4
@BIT_GAIN_TXBB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rtw_dev*, i64)* @rtw8822c_dpk_gainloss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtw8822c_dpk_gainloss(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_dpk_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.rtw_dpk_info* %15, %struct.rtw_dpk_info** %5, align 8
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @rtw8822c_dpk_rf_setting(%struct.rtw_dev* %16, i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @RF_MODE_TRXAGC, align 4
  %22 = load i32, i32* @BIT_TXAGC, align 4
  %23 = call i64 @rtw_read_rf(%struct.rtw_dev* %19, i64 %20, i32 %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @rtw8822c_dpk_rxbb_dc_cal(%struct.rtw_dev* %24, i64 %25)
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @RTW_DPK_DAGC, align 4
  %30 = call i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev* %27, i64 %28, i32 %29)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @rtw8822c_dpk_dgain_read(%struct.rtw_dev* %31, i64 %32)
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @rtw8822c_dpk_dc_corr_check(%struct.rtw_dev* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %2
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @rtw8822c_dpk_rxbb_dc_cal(%struct.rtw_dev* %39, i64 %40)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* @RTW_DPK_DAGC, align 4
  %45 = call i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev* %42, i64 %43, i32 %44)
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @rtw8822c_dpk_dc_corr_check(%struct.rtw_dev* %46, i64 %47)
  br label %49

49:                                               ; preds = %38, %2
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @rtw8822c_dpk_thermal_read(%struct.rtw_dev* %50, i64 %51)
  store i64 %52, i64* %11, align 8
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @rtw8822c_dpk_pas_agc(%struct.rtw_dev* %53, i64 %54, i32 0, i32 1)
  store i64 %55, i64* %7, align 8
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @rtw8822c_dpk_gainloss_result(%struct.rtw_dev* %56, i64 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  store i64 0, i64* %7, align 8
  br label %67

63:                                               ; preds = %49
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %63, %62
  %68 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load i32, i32* @RF_TX_GAIN, align 4
  %71 = load i32, i32* @BIT_GAIN_TXBB, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @rtw_write_rf(%struct.rtw_dev* %68, i64 %69, i32 %70, i32 %71, i64 %72)
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sub nsw i64 %75, %76
  %78 = sub nsw i64 %74, %77
  store i64 %78, i64* %6, align 8
  %79 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i64 @rtw8822c_dpk_thermal_read(%struct.rtw_dev* %79, i64 %80)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = sub nsw i64 %82, %83
  %85 = call i32 @abs(i64 %84)
  %86 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %5, align 8
  %87 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load i64, i64* %6, align 8
  ret i64 %91
}

declare dso_local i64 @rtw8822c_dpk_rf_setting(%struct.rtw_dev*, i64) #1

declare dso_local i64 @rtw_read_rf(%struct.rtw_dev*, i64, i32, i32) #1

declare dso_local i32 @rtw8822c_dpk_rxbb_dc_cal(%struct.rtw_dev*, i64) #1

declare dso_local i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw8822c_dpk_dgain_read(%struct.rtw_dev*, i64) #1

declare dso_local i64 @rtw8822c_dpk_dc_corr_check(%struct.rtw_dev*, i64) #1

declare dso_local i64 @rtw8822c_dpk_thermal_read(%struct.rtw_dev*, i64) #1

declare dso_local i64 @rtw8822c_dpk_pas_agc(%struct.rtw_dev*, i64, i32, i32) #1

declare dso_local i64 @rtw8822c_dpk_gainloss_result(%struct.rtw_dev*, i64) #1

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i64, i32, i32, i64) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
