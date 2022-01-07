; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.h_is_ofdm_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.h_is_ofdm_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RATE_MASK = common dso_local global i32 0, align 4
@TX_RATE_6M = common dso_local global i32 0, align 4
@TX_RATE_12M = common dso_local global i32 0, align 4
@TX_RATE_24M = common dso_local global i32 0, align 4
@TX_RATE_9M = common dso_local global i32 0, align 4
@TX_RATE_18M = common dso_local global i32 0, align 4
@TX_RATE_36M = common dso_local global i32 0, align 4
@TX_RATE_48M = common dso_local global i32 0, align 4
@TX_RATE_54M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_ofdm_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ofdm_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @RATE_MASK, align 4
  %5 = and i32 %3, %4
  %6 = load i32, i32* @TX_RATE_6M, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %50, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @RATE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @TX_RATE_12M, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %50, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @RATE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @TX_RATE_24M, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %50, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @RATE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @TX_RATE_9M, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @RATE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @TX_RATE_18M, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @RATE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @TX_RATE_36M, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @RATE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @TX_RATE_48M, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @RATE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @TX_RATE_54M, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %44, %38, %32, %26, %20, %14, %8, %1
  %51 = phi i1 [ true, %38 ], [ true, %32 ], [ true, %26 ], [ true, %20 ], [ true, %14 ], [ true, %8 ], [ true, %1 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
