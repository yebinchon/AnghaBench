; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_config_cck_rx_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_config_cck_rx_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@BB_PATH_A = common dso_local global i64 0, align 8
@BB_PATH_B = common dso_local global i64 0, align 8
@REG_CCANRX = common dso_local global i32 0, align 4
@BB_PATH_AB = common dso_local global i64 0, align 8
@REG_RXCCKSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64)* @rtw8822c_config_cck_rx_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_config_cck_rx_path(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BB_PATH_A, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @BB_PATH_B, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8, %2
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %14 = load i32, i32* @REG_CCANRX, align 4
  %15 = call i32 @rtw_write32_mask(%struct.rtw_dev* %13, i32 %14, i32 393216, i32 0)
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = load i32, i32* @REG_CCANRX, align 4
  %18 = call i32 @rtw_write32_mask(%struct.rtw_dev* %16, i32 %17, i32 6291456, i32 0)
  br label %31

19:                                               ; preds = %8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @BB_PATH_AB, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %25 = load i32, i32* @REG_CCANRX, align 4
  %26 = call i32 @rtw_write32_mask(%struct.rtw_dev* %24, i32 %25, i32 6291456, i32 1)
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %28 = load i32, i32* @REG_CCANRX, align 4
  %29 = call i32 @rtw_write32_mask(%struct.rtw_dev* %27, i32 %28, i32 393216, i32 1)
  br label %30

30:                                               ; preds = %23, %19
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @BB_PATH_A, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %37 = load i32, i32* @REG_RXCCKSEL, align 4
  %38 = call i32 @rtw_write32_mask(%struct.rtw_dev* %36, i32 %37, i32 251658240, i32 0)
  br label %57

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @BB_PATH_B, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %45 = load i32, i32* @REG_RXCCKSEL, align 4
  %46 = call i32 @rtw_write32_mask(%struct.rtw_dev* %44, i32 %45, i32 251658240, i32 5)
  br label %56

47:                                               ; preds = %39
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @BB_PATH_AB, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %53 = load i32, i32* @REG_RXCCKSEL, align 4
  %54 = call i32 @rtw_write32_mask(%struct.rtw_dev* %52, i32 %53, i32 251658240, i32 1)
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %35
  ret void
}

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
