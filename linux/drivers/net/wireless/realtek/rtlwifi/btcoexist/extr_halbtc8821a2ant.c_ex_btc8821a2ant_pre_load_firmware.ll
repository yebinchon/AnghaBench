; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_pre_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_pre_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i64, i32 (%struct.btc_coexist*, i32, i32)*, %struct.btc_board_info }
%struct.btc_board_info = type { i32 }

@BTC_INTF_USB = common dso_local global i64 0, align 8
@BTC_INTF_PCI = common dso_local global i64 0, align 8
@BTC_INTF_SDIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a2ant_pre_load_firmware(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.btc_board_info*, align 8
  %4 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %5 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %6 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %5, i32 0, i32 2
  store %struct.btc_board_info* %6, %struct.btc_board_info** %3, align 8
  store i32 4, i32* %4, align 4
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %8 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BTC_INTF_USB, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 1
  %17 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %16, align 8
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 %17(%struct.btc_coexist* %18, i32 65032, i32 %19)
  br label %64

21:                                               ; preds = %1
  %22 = load %struct.btc_board_info*, %struct.btc_board_info** %3, align 8
  %23 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %36

27:                                               ; preds = %21
  %28 = load %struct.btc_board_info*, %struct.btc_board_info** %3, align 8
  %29 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %26
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %38 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BTC_INTF_PCI, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %44 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %43, i32 0, i32 1
  %45 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %44, align 8
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 %45(%struct.btc_coexist* %46, i32 900, i32 %47)
  br label %63

49:                                               ; preds = %36
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %51 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BTC_INTF_SDIO, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %57 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %56, i32 0, i32 1
  %58 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %57, align 8
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 %58(%struct.btc_coexist* %59, i32 96, i32 %60)
  br label %62

62:                                               ; preds = %55, %49
  br label %63

63:                                               ; preds = %62, %42
  br label %64

64:                                               ; preds = %63, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
