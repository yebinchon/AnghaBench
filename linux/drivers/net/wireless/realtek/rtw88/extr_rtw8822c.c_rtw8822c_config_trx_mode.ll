; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_config_trx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_config_trx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@BB_PATH_A = common dso_local global i32 0, align 4
@REG_ORITXCODE = common dso_local global i32 0, align 4
@MASK20BITS = common dso_local global i32 0, align 4
@BB_PATH_B = common dso_local global i32 0, align 4
@REG_ORITXCODE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32)* @rtw8822c_config_trx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_config_trx_mode(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BB_PATH_A, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %17 = load i32, i32* @REG_ORITXCODE, align 4
  %18 = load i32, i32* @MASK20BITS, align 4
  %19 = call i32 @rtw_write32_mask(%struct.rtw_dev* %16, i32 %17, i32 %18, i32 209682)
  br label %25

20:                                               ; preds = %4
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %22 = load i32, i32* @REG_ORITXCODE, align 4
  %23 = load i32, i32* @MASK20BITS, align 4
  %24 = call i32 @rtw_write32_mask(%struct.rtw_dev* %21, i32 %22, i32 %23, i32 69905)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BB_PATH_B, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %34 = load i32, i32* @REG_ORITXCODE2, align 4
  %35 = load i32, i32* @MASK20BITS, align 4
  %36 = call i32 @rtw_write32_mask(%struct.rtw_dev* %33, i32 %34, i32 %35, i32 209682)
  br label %42

37:                                               ; preds = %25
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %39 = load i32, i32* @REG_ORITXCODE2, align 4
  %40 = load i32, i32* @MASK20BITS, align 4
  %41 = call i32 @rtw_write32_mask(%struct.rtw_dev* %38, i32 %39, i32 %40, i32 69905)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @rtw8822c_config_rx_path(%struct.rtw_dev* %43, i32 %44)
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @rtw8822c_config_tx_path(%struct.rtw_dev* %46, i32 %47, i32 %48)
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %51 = call i32 @rtw8822c_toggle_igi(%struct.rtw_dev* %50)
  ret void
}

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw8822c_config_rx_path(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw8822c_config_tx_path(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw8822c_toggle_igi(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
