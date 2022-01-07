; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_trx.c_rtl88ee_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_trx.c_rtl88ee_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"rtl8188ee: ERR txdesc :%d not processed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"rtl8188ee: ERR rxdesc :%d not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl88ee_get_desc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %22 [
    i32 131, label %16
    i32 128, label %19
  ]

16:                                               ; preds = %14
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @get_tx_desc_own(i32* %17)
  store i32 %18, i32* %9, align 4
  br label %25

19:                                               ; preds = %14
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @get_tx_desc_tx_buffer_address(i32* %20)
  store i32 %21, i32* %9, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %19, %16
  br label %41

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %37 [
    i32 131, label %28
    i32 129, label %31
    i32 130, label %34
  ]

28:                                               ; preds = %26
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @get_rx_desc_own(i32* %29)
  store i32 %30, i32* %9, align 4
  br label %40

31:                                               ; preds = %26
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @get_rx_desc_pkt_len(i32* %32)
  store i32 %33, i32* %9, align 4
  br label %40

34:                                               ; preds = %26
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @get_rx_desc_buff_addr(i32* %35)
  store i32 %36, i32* %9, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %34, %31, %28
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @get_tx_desc_own(i32*) #1

declare dso_local i32 @get_tx_desc_tx_buffer_address(i32*) #1

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
