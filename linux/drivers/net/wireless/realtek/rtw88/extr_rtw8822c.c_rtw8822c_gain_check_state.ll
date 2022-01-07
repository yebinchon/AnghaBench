; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_gain_check_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_gain_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw8822c_dpk_data = type { i32, i64, i32, i32, i64, i64, i64 }

@RF_TX_GAIN = common dso_local global i32 0, align 4
@BIT_GAIN_TXBB = common dso_local global i32 0, align 4
@RF_MODE_TRXAGC = common dso_local global i32 0, align 4
@BIT_RXAGC = common dso_local global i32 0, align 4
@RTW_DPK_LOSS_CHECK = common dso_local global i64 0, align 8
@RTW_DPK_GAIN_CHECK = common dso_local global i64 0, align 8
@RTW_DPK_AGC_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rtw_dev*, %struct.rtw8822c_dpk_data*)* @rtw8822c_gain_check_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtw8822c_gain_check_state(%struct.rtw_dev* %0, %struct.rtw8822c_dpk_data* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw8822c_dpk_data*, align 8
  %5 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw8822c_dpk_data* %1, %struct.rtw8822c_dpk_data** %4, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %8 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RF_TX_GAIN, align 4
  %11 = load i32, i32* @BIT_GAIN_TXBB, align 4
  %12 = call i64 @rtw_read_rf(%struct.rtw_dev* %6, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %14 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %13, i32 0, i32 6
  store i64 %12, i64* %14, align 8
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %16 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %17 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RF_MODE_TRXAGC, align 4
  %20 = load i32, i32* @BIT_RXAGC, align 4
  %21 = call i64 @rtw_read_rf(%struct.rtw_dev* %15, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %23 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %22, i32 0, i32 5
  store i64 %21, i64* %23, align 8
  %24 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %25 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i64, i64* @RTW_DPK_LOSS_CHECK, align 8
  store i64 %29, i64* %5, align 8
  br label %57

30:                                               ; preds = %2
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %32 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %33 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %36 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @rtw8822c_dpk_agc_gain_chk(%struct.rtw_dev* %31, i32 %34, i32 %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @RTW_DPK_GAIN_CHECK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %44 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @RTW_DPK_AGC_OUT, align 8
  store i64 %48, i64* %5, align 8
  br label %56

49:                                               ; preds = %42, %30
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @RTW_DPK_GAIN_CHECK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @RTW_DPK_LOSS_CHECK, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %47
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %59 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %63 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %64, 6
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i64, i64* @RTW_DPK_AGC_OUT, align 8
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %66, %57
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local i64 @rtw_read_rf(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i64 @rtw8822c_dpk_agc_gain_chk(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
