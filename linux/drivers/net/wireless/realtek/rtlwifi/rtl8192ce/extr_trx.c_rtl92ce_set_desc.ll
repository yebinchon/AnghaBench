; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_trx.c_rtl92ce_set_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_trx.c_rtl92ce_set_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"rtl8192ce: ERR txdesc :%d not processed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"rtl8192ce: ERR rxdesc :%d not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ce_set_desc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %7, align 8
  store i32* %12, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %26 [
    i32 133, label %17
    i32 128, label %21
  ]

17:                                               ; preds = %15
  %18 = call i32 (...) @wmb()
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @set_tx_desc_own(i32* %19, i32 1)
  br label %29

21:                                               ; preds = %15
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_tx_desc_next_desc_address(i32* %22, i32 %24)
  br label %29

26:                                               ; preds = %15
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %21, %17
  br label %53

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %49 [
    i32 130, label %32
    i32 132, label %36
    i32 129, label %41
    i32 131, label %46
  ]

32:                                               ; preds = %30
  %33 = call i32 (...) @wmb()
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @set_rx_desc_own(i32* %34, i32 1)
  br label %52

36:                                               ; preds = %30
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @set_rx_desc_buff_addr(i32* %37, i32 %39)
  br label %52

41:                                               ; preds = %30
  %42 = load i32*, i32** %11, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_rx_desc_pkt_len(i32* %42, i32 %44)
  br label %52

46:                                               ; preds = %30
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @set_rx_desc_eor(i32* %47, i32 1)
  br label %52

49:                                               ; preds = %30
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %46, %41, %36, %32
  br label %53

53:                                               ; preds = %52, %29
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @set_tx_desc_own(i32*, i32) #1

declare dso_local i32 @set_tx_desc_next_desc_address(i32*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @set_rx_desc_own(i32*, i32) #1

declare dso_local i32 @set_rx_desc_buff_addr(i32*, i32) #1

declare dso_local i32 @set_rx_desc_pkt_len(i32*, i32) #1

declare dso_local i32 @set_rx_desc_eor(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
