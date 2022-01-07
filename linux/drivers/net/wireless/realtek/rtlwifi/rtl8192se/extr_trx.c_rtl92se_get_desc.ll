; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c_rtl92se_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c_rtl92se_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"rtl8192se: ERR txdesc :%d not processed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"rtl8192se: ERR rxdesc :%d not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92se_get_desc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %20 [
    i32 131, label %14
    i32 128, label %17
  ]

14:                                               ; preds = %12
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @GET_TX_DESC_OWN(i32* %15)
  store i32 %16, i32* %9, align 4
  br label %23

17:                                               ; preds = %12
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @GET_TX_DESC_TX_BUFFER_ADDRESS(i32* %18)
  store i32 %19, i32* %9, align 4
  br label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %17, %14
  br label %39

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %35 [
    i32 131, label %26
    i32 129, label %29
    i32 130, label %32
  ]

26:                                               ; preds = %24
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @GET_RX_STATUS_DESC_OWN(i32* %27)
  store i32 %28, i32* %9, align 4
  br label %38

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @GET_RX_STATUS_DESC_PKT_LEN(i32* %30)
  store i32 %31, i32* %9, align 4
  br label %38

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @GET_RX_STATUS_DESC_BUFF_ADDR(i32* %33)
  store i32 %34, i32* %9, align 4
  br label %38

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %32, %29, %26
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @GET_TX_DESC_OWN(i32*) #1

declare dso_local i32 @GET_TX_DESC_TX_BUFFER_ADDRESS(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @GET_RX_STATUS_DESC_OWN(i32*) #1

declare dso_local i32 @GET_RX_STATUS_DESC_PKT_LEN(i32*) #1

declare dso_local i32 @GET_RX_STATUS_DESC_BUFF_ADDR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
