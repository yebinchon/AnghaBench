; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"rtl8192ee: ERR txdesc :%d not processed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"rtl8192ee: ERR rxdesc :%d not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92ee_get_desc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %39 [
    i32 131, label %27
    i32 128, label %30
  ]

27:                                               ; preds = %25
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @get_tx_desc_own(i32* %28)
  store i32 %29, i32* %10, align 4
  br label %42

30:                                               ; preds = %25
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @get_txbuffer_desc_addr_low(i32* %31, i32 1)
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @get_txbuffer_desc_addr_high(i32* %33, i32 1, i32 %34)
  %36 = shl i32 %35, 32
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %42

39:                                               ; preds = %25
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %30, %27
  br label %58

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %54 [
    i32 131, label %45
    i32 129, label %48
    i32 130, label %51
  ]

45:                                               ; preds = %43
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @get_rx_desc_own(i32* %46)
  store i32 %47, i32* %10, align 4
  br label %57

48:                                               ; preds = %43
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @get_rx_desc_pkt_len(i32* %49)
  store i32 %50, i32* %10, align 4
  br label %57

51:                                               ; preds = %43
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @get_rx_desc_buff_addr(i32* %52)
  store i32 %53, i32* %10, align 4
  br label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51, %48, %45
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @get_tx_desc_own(i32*) #1

declare dso_local i32 @get_txbuffer_desc_addr_low(i32*, i32) #1

declare dso_local i32 @get_txbuffer_desc_addr_high(i32*, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @get_rx_desc_own(i32*) #1

declare dso_local i32 @get_rx_desc_pkt_len(i32*) #1

declare dso_local i32 @get_rx_desc_buff_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
