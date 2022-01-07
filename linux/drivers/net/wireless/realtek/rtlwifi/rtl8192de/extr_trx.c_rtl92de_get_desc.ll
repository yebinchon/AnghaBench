; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_trx.c_rtl92de_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_trx.c_rtl92de_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rx_desc_92c = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"rtl8192de: ERR txdesc :%d not processed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"rtl8192de: ERR rxdesc :%d not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92de_get_desc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rx_desc_92c*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %21 [
    i32 130, label %15
    i32 128, label %18
  ]

15:                                               ; preds = %13
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @GET_TX_DESC_OWN(i32* %16)
  store i32 %17, i32* %9, align 4
  br label %24

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @GET_TX_DESC_TX_BUFFER_ADDRESS(i32* %19)
  store i32 %20, i32* %9, align 4
  br label %24

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %18, %15
  br label %39

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = bitcast i32* %26 to %struct.rx_desc_92c*
  store %struct.rx_desc_92c* %27, %struct.rx_desc_92c** %10, align 8
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %35 [
    i32 130, label %29
    i32 129, label %32
  ]

29:                                               ; preds = %25
  %30 = load %struct.rx_desc_92c*, %struct.rx_desc_92c** %10, align 8
  %31 = call i32 @GET_RX_DESC_OWN(%struct.rx_desc_92c* %30)
  store i32 %31, i32* %9, align 4
  br label %38

32:                                               ; preds = %25
  %33 = load %struct.rx_desc_92c*, %struct.rx_desc_92c** %10, align 8
  %34 = call i32 @GET_RX_DESC_PKT_LEN(%struct.rx_desc_92c* %33)
  store i32 %34, i32* %9, align 4
  br label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %32, %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @GET_TX_DESC_OWN(i32*) #1

declare dso_local i32 @GET_TX_DESC_TX_BUFFER_ADDRESS(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @GET_RX_DESC_OWN(%struct.rx_desc_92c*) #1

declare dso_local i32 @GET_RX_DESC_PKT_LEN(%struct.rx_desc_92c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
