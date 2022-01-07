; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_parse_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_parse_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wl1251_tx_parse_status.buf = internal global [9 x i8] zeroinitializer, align 1
@TX_DMA_ERROR = common dso_local global i32 0, align 4
@TX_DISABLED = common dso_local global i32 0, align 4
@TX_RETRY_EXCEEDED = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@TX_KEY_NOT_FOUND = common dso_local global i32 0, align 4
@TX_ENCRYPT_FAIL = common dso_local global i32 0, align 4
@TX_UNAVAILABLE_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @wl1251_tx_parse_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wl1251_tx_parse_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @memset(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @wl1251_tx_parse_status.buf, i64 0, i64 0), i32 0, i32 9)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @TX_DMA_ERROR, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [9 x i8], [9 x i8]* @wl1251_tx_parse_status.buf, i64 0, i64 %12
  store i8 109, i8* %13, align 1
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @TX_DISABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* @wl1251_tx_parse_status.buf, i64 0, i64 %22
  store i8 100, i8* %23, align 1
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @TX_RETRY_EXCEEDED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* @wl1251_tx_parse_status.buf, i64 0, i64 %32
  store i8 114, i8* %33, align 1
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @TX_TIMEOUT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds [9 x i8], [9 x i8]* @wl1251_tx_parse_status.buf, i64 0, i64 %42
  store i8 116, i8* %43, align 1
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @TX_KEY_NOT_FOUND, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [9 x i8], [9 x i8]* @wl1251_tx_parse_status.buf, i64 0, i64 %52
  store i8 107, i8* %53, align 1
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @TX_ENCRYPT_FAIL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* @wl1251_tx_parse_status.buf, i64 0, i64 %62
  store i8 101, i8* %63, align 1
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @TX_UNAVAILABLE_PRIORITY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [9 x i8], [9 x i8]* @wl1251_tx_parse_status.buf, i64 0, i64 %72
  store i8 112, i8* %73, align 1
  br label %74

74:                                               ; preds = %69, %64
  ret i8* getelementptr inbounds ([9 x i8], [9 x i8]* @wl1251_tx_parse_status.buf, i64 0, i64 0)
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
