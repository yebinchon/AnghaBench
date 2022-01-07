; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_config_ofdm_tx_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_config_ofdm_tx_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@BB_PATH_A = common dso_local global i64 0, align 8
@REG_ANTMAP0 = common dso_local global i32 0, align 4
@REG_TXLGMAP = common dso_local global i32 0, align 4
@BB_PATH_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64, i32)* @rtw8822c_config_ofdm_tx_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_config_ofdm_tx_path(%struct.rtw_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @BB_PATH_A, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %12 = load i32, i32* @REG_ANTMAP0, align 4
  %13 = call i32 @rtw_write32_mask(%struct.rtw_dev* %11, i32 %12, i32 255, i32 17)
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %15 = load i32, i32* @REG_TXLGMAP, align 4
  %16 = call i32 @rtw_write32_mask(%struct.rtw_dev* %14, i32 %15, i32 255, i32 0)
  br label %47

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @BB_PATH_B, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %23 = load i32, i32* @REG_ANTMAP0, align 4
  %24 = call i32 @rtw_write32_mask(%struct.rtw_dev* %22, i32 %23, i32 255, i32 18)
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %26 = load i32, i32* @REG_TXLGMAP, align 4
  %27 = call i32 @rtw_write32_mask(%struct.rtw_dev* %25, i32 %26, i32 255, i32 0)
  br label %46

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %33 = load i32, i32* @REG_ANTMAP0, align 4
  %34 = call i32 @rtw_write32_mask(%struct.rtw_dev* %32, i32 %33, i32 255, i32 51)
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %36 = load i32, i32* @REG_TXLGMAP, align 4
  %37 = call i32 @rtw_write32_mask(%struct.rtw_dev* %35, i32 %36, i32 65535, i32 1028)
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %40 = load i32, i32* @REG_ANTMAP0, align 4
  %41 = call i32 @rtw_write32_mask(%struct.rtw_dev* %39, i32 %40, i32 255, i32 49)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %43 = load i32, i32* @REG_TXLGMAP, align 4
  %44 = call i32 @rtw_write32_mask(%struct.rtw_dev* %42, i32 %43, i32 65535, i32 1024)
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %45, %21
  br label %47

47:                                               ; preds = %46, %10
  ret void
}

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
