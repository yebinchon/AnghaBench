; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_write_local_reg_1byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_write_local_reg_1byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_INTF_SDIO = common dso_local global i64 0, align 8
@BTC_INTF_PCI = common dso_local global i64 0, align 8
@BTC_INTF_USB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @halbtc_write_local_reg_1byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc_write_local_reg_1byte(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.btc_coexist*
  store %struct.btc_coexist* %10, %struct.btc_coexist** %7, align 8
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 1
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  store %struct.rtl_priv* %13, %struct.rtl_priv** %8, align 8
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %15 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BTC_INTF_SDIO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BTC_INTF_PCI, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %27, i32 %28, i32 %29)
  br label %43

31:                                               ; preds = %20
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %33 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BTC_INTF_USB, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @rtl_write_byte(%struct.rtl_priv* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43, %19
  ret void
}

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
