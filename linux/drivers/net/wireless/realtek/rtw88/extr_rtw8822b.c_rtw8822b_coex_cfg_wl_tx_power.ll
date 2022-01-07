; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_wl_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_coex_cfg_wl_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { %struct.rtw_coex_dm }
%struct.rtw_coex_dm = type { i32 }

@rtw8822b_coex_cfg_wl_tx_power.reg_addr = internal constant [2 x i32] [i32 3160, i32 3672], align 4
@rtw8822b_coex_cfg_wl_tx_power.wl_tx_power = internal constant [5 x i32] [i32 216, i32 212, i32 208, i32 204, i32 200], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822b_coex_cfg_wl_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_coex_cfg_wl_tx_power(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_dm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 0
  store %struct.rtw_coex* %10, %struct.rtw_coex** %5, align 8
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 0
  store %struct.rtw_coex_dm* %12, %struct.rtw_coex_dm** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %15 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %55

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %22 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %24 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @rtw8822b_coex_cfg_wl_tx_power.wl_tx_power, i64 0, i64 0))
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @rtw8822b_coex_cfg_wl_tx_power.wl_tx_power, i64 0, i64 0))
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %32 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %19
  %34 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %35 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* @rtw8822b_coex_cfg_wl_tx_power.wl_tx_power, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %52, %33
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @rtw8822b_coex_cfg_wl_tx_power.reg_addr, i64 0, i64 0))
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* @rtw8822b_coex_cfg_wl_tx_power.reg_addr, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @rtw_write8_mask(%struct.rtw_dev* %45, i32 %49, i32 255, i32 %50)
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %40

55:                                               ; preds = %18, %40
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rtw_write8_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
