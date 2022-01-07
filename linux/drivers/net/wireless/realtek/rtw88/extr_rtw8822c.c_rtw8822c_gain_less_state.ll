; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_gain_less_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_gain_less_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw8822c_dpk_data = type { i32, i32, i32 }

@RF_MODE_TRXAGC = common dso_local global i32 0, align 4
@BIT_RXAGC = common dso_local global i32 0, align 4
@RTW_DPK_GAIN_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.rtw8822c_dpk_data*)* @rtw8822c_gain_less_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_gain_less_state(%struct.rtw_dev* %0, %struct.rtw8822c_dpk_data* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw8822c_dpk_data*, align 8
  %5 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.rtw8822c_dpk_data* %1, %struct.rtw8822c_dpk_data** %4, align 8
  %6 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %7 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 12
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %14 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RF_MODE_TRXAGC, align 4
  %17 = load i32, i32* @BIT_RXAGC, align 4
  %18 = call i32 @rtw_write_rf(%struct.rtw_dev* %12, i32 %15, i32 %16, i32 %17, i32 12)
  br label %41

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 11
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 15
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %27 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %28 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RF_MODE_TRXAGC, align 4
  %31 = load i32, i32* @BIT_RXAGC, align 4
  %32 = call i32 @rtw_write_rf(%struct.rtw_dev* %26, i32 %29, i32 %30, i32 %31, i32 15)
  br label %40

33:                                               ; preds = %22, %19
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 14
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.rtw8822c_dpk_data*, %struct.rtw8822c_dpk_data** %4, align 8
  %38 = getelementptr inbounds %struct.rtw8822c_dpk_data, %struct.rtw8822c_dpk_data* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %11
  %42 = load i32, i32* @RTW_DPK_GAIN_CHECK, align 4
  ret i32 %42
}

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
