; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_run_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_run_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32, i32, i32, i32, i64, i8*, i64)* @sbp_run_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp_run_transaction(%struct.fw_card* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 1, i32* %18, align 4
  br label %21

21:                                               ; preds = %47, %8
  %22 = load i32, i32* %18, align 4
  %23 = icmp sle i32 %22, 5
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = load %struct.fw_card*, %struct.fw_card** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i64, i64* %15, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = load i64, i64* %17, align 8
  %33 = call i32 @fw_run_transaction(%struct.fw_card* %25, i32 %26, i32 %27, i32 %28, i32 %29, i64 %30, i8* %31, i64 %32)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  switch i32 %34, label %37 [
    i32 130, label %35
    i32 128, label %35
    i32 131, label %35
    i32 129, label %35
  ]

35:                                               ; preds = %24, %24, %24, %24
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %9, align 4
  br label %52

37:                                               ; preds = %24
  %38 = load i32, i32* %18, align 4
  %39 = mul nsw i32 5, %38
  %40 = load i32, i32* %18, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i32 @usleep_range(i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %18, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load i32, i32* %19, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %35
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @fw_run_transaction(%struct.fw_card*, i32, i32, i32, i32, i64, i8*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
