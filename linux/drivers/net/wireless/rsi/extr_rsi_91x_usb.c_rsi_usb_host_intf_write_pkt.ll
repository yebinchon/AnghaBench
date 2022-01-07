; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_usb_host_intf_write_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_usb_host_intf_write_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { i32 }

@RSI_WIFI_MGMT_Q = common dso_local global i64 0, align 8
@RSI_WIFI_DATA_Q = common dso_local global i64 0, align 8
@RSI_COEX_Q = common dso_local global i64 0, align 8
@WLAN_EP = common dso_local global i32 0, align 4
@BT_EP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsi_hw*, i32*, i64)* @rsi_usb_host_intf_write_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_usb_host_intf_write_pkt(%struct.rsi_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.rsi_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rsi_hw* %0, %struct.rsi_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 4
  %13 = and i32 %12, 7
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @RSI_WIFI_MGMT_Q, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @RSI_WIFI_DATA_Q, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @RSI_COEX_Q, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18, %3
  %27 = load i32, i32* @WLAN_EP, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @BT_EP, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %8, align 4
  %32 = load %struct.rsi_hw*, %struct.rsi_hw** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @rsi_write_multiple(%struct.rsi_hw* %32, i32 %33, i32* %34, i64 %35)
  ret i32 %36
}

declare dso_local i32 @rsi_write_multiple(%struct.rsi_hw*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
