; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_DbgInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_DbgInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTC_MSG_MAX = common dso_local global i64 0, align 8
@GLBtcDbgType = common dso_local global i64* null, align 8
@BTC_MSG_INTERFACE = common dso_local global i64 0, align 8
@BTC_MSG_ALGORITHM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @halbtcoutsrc_DbgInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtcoutsrc_DbgInit() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @BTC_MSG_MAX, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load i64*, i64** @GLBtcDbgType, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* %1, align 8
  br label %2

13:                                               ; preds = %2
  %14 = load i64*, i64** @GLBtcDbgType, align 8
  %15 = load i64, i64* @BTC_MSG_INTERFACE, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 0, i64* %16, align 8
  %17 = load i64*, i64** @GLBtcDbgType, align 8
  %18 = load i64, i64* @BTC_MSG_ALGORITHM, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 0, i64* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
