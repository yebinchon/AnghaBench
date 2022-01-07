; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_rtl8192cu_mq_to_hwq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_rtl8192cu_mq_to_hwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTL_TXQ_BCN = common dso_local global i32 0, align 4
@RTL_TXQ_MGT = common dso_local global i32 0, align 4
@RTL_TXQ_VO = common dso_local global i32 0, align 4
@RTL_TXQ_VI = common dso_local global i32 0, align 4
@RTL_TXQ_BE = common dso_local global i32 0, align 4
@RTL_TXQ_BK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"rtl8192cu: QSLT_BE queue, skb_queue:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192cu_mq_to_hwq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ieee80211_is_beacon(i32 %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @RTL_TXQ_BCN, align 4
  store i32 %11, i32* %5, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ieee80211_is_mgmt(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @RTL_TXQ_MGT, align 4
  store i32 %17, i32* %5, align 4
  br label %33

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %28 [
    i32 0, label %20
    i32 1, label %22
    i32 2, label %24
    i32 3, label %26
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @RTL_TXQ_VO, align 4
  store i32 %21, i32* %5, align 4
  br label %32

22:                                               ; preds = %18
  %23 = load i32, i32* @RTL_TXQ_VI, align 4
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @RTL_TXQ_BE, align 4
  store i32 %25, i32* %5, align 4
  br label %32

26:                                               ; preds = %18
  %27 = load i32, i32* @RTL_TXQ_BK, align 4
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @RTL_TXQ_BE, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %26, %24, %22, %20
  br label %33

33:                                               ; preds = %32, %16, %10
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
