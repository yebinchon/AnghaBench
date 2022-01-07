; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_get_rate_section_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_get_rate_section_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_rtl8723be_get_rate_section_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723be_get_rate_section_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %20 [
    i32 137, label %5
    i32 136, label %6
    i32 142, label %7
    i32 135, label %8
    i32 141, label %9
    i32 140, label %10
    i32 139, label %11
    i32 138, label %12
    i32 129, label %13
    i32 128, label %14
    i32 134, label %15
    i32 133, label %16
    i32 132, label %17
    i32 131, label %18
    i32 130, label %19
  ]

5:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %44

6:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %44

7:                                                ; preds = %1
  store i32 2, i32* %3, align 4
  br label %44

8:                                                ; preds = %1
  store i32 3, i32* %3, align 4
  br label %44

9:                                                ; preds = %1
  store i32 4, i32* %3, align 4
  br label %44

10:                                               ; preds = %1
  store i32 5, i32* %3, align 4
  br label %44

11:                                               ; preds = %1
  store i32 6, i32* %3, align 4
  br label %44

12:                                               ; preds = %1
  store i32 7, i32* %3, align 4
  br label %44

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %44

14:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %44

15:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  br label %44

16:                                               ; preds = %1
  store i32 4, i32* %3, align 4
  br label %44

17:                                               ; preds = %1
  store i32 5, i32* %3, align 4
  br label %44

18:                                               ; preds = %1
  store i32 6, i32* %3, align 4
  br label %44

19:                                               ; preds = %1
  store i32 7, i32* %3, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 4095
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp sge i32 %23, 3104
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = icmp sle i32 %26, 3148
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = sub nsw i32 %29, 3104
  %31 = sdiv i32 %30, 4
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %25, %20
  %33 = load i32, i32* %2, align 4
  %34 = icmp sge i32 %33, 3616
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = icmp sle i32 %36, 3660
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = sub nsw i32 %39, 3616
  %41 = sdiv i32 %40, 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %35, %32
  br label %43

43:                                               ; preds = %42, %28
  br label %44

44:                                               ; preds = %43, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
