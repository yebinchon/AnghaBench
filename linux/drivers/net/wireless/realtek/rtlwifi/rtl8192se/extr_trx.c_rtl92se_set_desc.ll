; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c_rtl92se_set_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c_rtl92se_set_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"rtl8192se: ERR txdesc :%d not processed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"rtl8192se: ERR rxdesc :%d not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92se_set_desc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %5
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %24 [
    i32 133, label %15
    i32 128, label %19
  ]

15:                                               ; preds = %13
  %16 = call i32 (...) @wmb()
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @SET_TX_DESC_OWN(i32* %17, i32 1)
  br label %27

19:                                               ; preds = %13
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SET_TX_DESC_NEXT_DESC_ADDRESS(i32* %20, i32 %22)
  br label %27

24:                                               ; preds = %13
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %19, %15
  br label %51

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %47 [
    i32 130, label %30
    i32 132, label %34
    i32 129, label %39
    i32 131, label %44
  ]

30:                                               ; preds = %28
  %31 = call i32 (...) @wmb()
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @SET_RX_STATUS_DESC_OWN(i32* %32, i32 1)
  br label %50

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SET_RX_STATUS__DESC_BUFF_ADDR(i32* %35, i32 %37)
  br label %50

39:                                               ; preds = %28
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SET_RX_STATUS_DESC_PKT_LEN(i32* %40, i32 %42)
  br label %50

44:                                               ; preds = %28
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @SET_RX_STATUS_DESC_EOR(i32* %45, i32 1)
  br label %50

47:                                               ; preds = %28
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %44, %39, %34, %30
  br label %51

51:                                               ; preds = %50, %27
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @SET_TX_DESC_OWN(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_NEXT_DESC_ADDRESS(i32*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @SET_RX_STATUS_DESC_OWN(i32*, i32) #1

declare dso_local i32 @SET_RX_STATUS__DESC_BUFF_ADDR(i32*, i32) #1

declare dso_local i32 @SET_RX_STATUS_DESC_PKT_LEN(i32*, i32) #1

declare dso_local i32 @SET_RX_STATUS_DESC_EOR(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
