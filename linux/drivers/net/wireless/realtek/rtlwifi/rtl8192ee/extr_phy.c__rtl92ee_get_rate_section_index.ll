; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_get_rate_section_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_get_rate_section_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_rtl92ee_get_rate_section_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ee_get_rate_section_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %13 [
    i32 137, label %5
    i32 129, label %5
    i32 136, label %6
    i32 128, label %6
    i32 142, label %7
    i32 134, label %7
    i32 135, label %8
    i32 141, label %9
    i32 133, label %9
    i32 140, label %10
    i32 132, label %10
    i32 139, label %11
    i32 131, label %11
    i32 138, label %12
    i32 130, label %12
  ]

5:                                                ; preds = %1, %1
  store i32 0, i32* %3, align 4
  br label %37

6:                                                ; preds = %1, %1
  store i32 1, i32* %3, align 4
  br label %37

7:                                                ; preds = %1, %1
  store i32 2, i32* %3, align 4
  br label %37

8:                                                ; preds = %1
  store i32 3, i32* %3, align 4
  br label %37

9:                                                ; preds = %1, %1
  store i32 4, i32* %3, align 4
  br label %37

10:                                               ; preds = %1, %1
  store i32 5, i32* %3, align 4
  br label %37

11:                                               ; preds = %1, %1
  store i32 6, i32* %3, align 4
  br label %37

12:                                               ; preds = %1, %1
  store i32 7, i32* %3, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 4095
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp sge i32 %16, 3104
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = icmp sle i32 %19, 3148
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = sub nsw i32 %22, 3104
  %24 = sdiv i32 %23, 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %18, %13
  %26 = load i32, i32* %2, align 4
  %27 = icmp sge i32 %26, 3616
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = icmp sle i32 %29, 3660
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = sub nsw i32 %32, 3616
  %34 = sdiv i32 %33, 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %28, %25
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36, %12, %11, %10, %9, %8, %7, %6, %5
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
