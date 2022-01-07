; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_tx_policy_is_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_tx_policy_is_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_policy = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tx_policy*, %struct.tx_policy*)* @tx_policy_is_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_policy_is_equal(%struct.tx_policy* %0, %struct.tx_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tx_policy*, align 8
  %5 = alloca %struct.tx_policy*, align 8
  %6 = alloca i64, align 8
  store %struct.tx_policy* %0, %struct.tx_policy** %4, align 8
  store %struct.tx_policy* %1, %struct.tx_policy** %5, align 8
  %7 = load %struct.tx_policy*, %struct.tx_policy** %4, align 8
  %8 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = ashr i32 %9, 1
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load %struct.tx_policy*, %struct.tx_policy** %4, align 8
  %13 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.tx_policy*, %struct.tx_policy** %5, align 8
  %16 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.tx_policy*, %struct.tx_policy** %4, align 8
  %25 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.tx_policy*, %struct.tx_policy** %5, align 8
  %28 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @memcmp(i32* %26, i32* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %60

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.tx_policy*, %struct.tx_policy** %4, align 8
  %37 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %struct.tx_policy*, %struct.tx_policy** %4, align 8
  %43 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 15
  %49 = load %struct.tx_policy*, %struct.tx_policy** %5, align 8
  %50 = getelementptr inbounds %struct.tx_policy, %struct.tx_policy* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  %56 = icmp ne i32 %48, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %60

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %35
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57, %33, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
