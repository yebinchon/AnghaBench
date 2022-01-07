; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_MRateToHwRate8190Pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_MRateToHwRate8190Pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DESC90_RATE1M = common dso_local global i32 0, align 4
@DESC90_RATE2M = common dso_local global i32 0, align 4
@DESC90_RATE5_5M = common dso_local global i32 0, align 4
@DESC90_RATE11M = common dso_local global i32 0, align 4
@DESC90_RATE6M = common dso_local global i32 0, align 4
@DESC90_RATE9M = common dso_local global i32 0, align 4
@DESC90_RATE12M = common dso_local global i32 0, align 4
@DESC90_RATE18M = common dso_local global i32 0, align 4
@DESC90_RATE24M = common dso_local global i32 0, align 4
@DESC90_RATE36M = common dso_local global i32 0, align 4
@DESC90_RATE48M = common dso_local global i32 0, align 4
@DESC90_RATE54M = common dso_local global i32 0, align 4
@DESC90_RATEMCS0 = common dso_local global i32 0, align 4
@DESC90_RATEMCS1 = common dso_local global i32 0, align 4
@DESC90_RATEMCS2 = common dso_local global i32 0, align 4
@DESC90_RATEMCS3 = common dso_local global i32 0, align 4
@DESC90_RATEMCS4 = common dso_local global i32 0, align 4
@DESC90_RATEMCS5 = common dso_local global i32 0, align 4
@DESC90_RATEMCS6 = common dso_local global i32 0, align 4
@DESC90_RATEMCS7 = common dso_local global i32 0, align 4
@DESC90_RATEMCS8 = common dso_local global i32 0, align 4
@DESC90_RATEMCS9 = common dso_local global i32 0, align 4
@DESC90_RATEMCS10 = common dso_local global i32 0, align 4
@DESC90_RATEMCS11 = common dso_local global i32 0, align 4
@DESC90_RATEMCS12 = common dso_local global i32 0, align 4
@DESC90_RATEMCS13 = common dso_local global i32 0, align 4
@DESC90_RATEMCS14 = common dso_local global i32 0, align 4
@DESC90_RATEMCS15 = common dso_local global i32 0, align 4
@DESC90_RATEMCS32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @MRateToHwRate8190Pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MRateToHwRate8190Pci(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @DESC90_RATE1M, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %64 [
    i32 152, label %6
    i32 150, label %8
    i32 146, label %10
    i32 155, label %12
    i32 145, label %14
    i32 144, label %16
    i32 154, label %18
    i32 153, label %20
    i32 151, label %22
    i32 149, label %24
    i32 148, label %26
    i32 147, label %28
    i32 143, label %30
    i32 142, label %32
    i32 135, label %34
    i32 134, label %36
    i32 133, label %38
    i32 132, label %40
    i32 131, label %42
    i32 130, label %44
    i32 129, label %46
    i32 128, label %48
    i32 141, label %50
    i32 140, label %52
    i32 139, label %54
    i32 138, label %56
    i32 137, label %58
    i32 136, label %60
    i32 160, label %62
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @DESC90_RATE1M, align 4
  store i32 %7, i32* %3, align 4
  br label %65

8:                                                ; preds = %1
  %9 = load i32, i32* @DESC90_RATE2M, align 4
  store i32 %9, i32* %3, align 4
  br label %65

10:                                               ; preds = %1
  %11 = load i32, i32* @DESC90_RATE5_5M, align 4
  store i32 %11, i32* %3, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load i32, i32* @DESC90_RATE11M, align 4
  store i32 %13, i32* %3, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load i32, i32* @DESC90_RATE6M, align 4
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load i32, i32* @DESC90_RATE9M, align 4
  store i32 %17, i32* %3, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load i32, i32* @DESC90_RATE12M, align 4
  store i32 %19, i32* %3, align 4
  br label %65

20:                                               ; preds = %1
  %21 = load i32, i32* @DESC90_RATE18M, align 4
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %1
  %23 = load i32, i32* @DESC90_RATE24M, align 4
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %1
  %25 = load i32, i32* @DESC90_RATE36M, align 4
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %1
  %27 = load i32, i32* @DESC90_RATE48M, align 4
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %1
  %29 = load i32, i32* @DESC90_RATE54M, align 4
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %1
  %31 = load i32, i32* @DESC90_RATEMCS0, align 4
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %1
  %33 = load i32, i32* @DESC90_RATEMCS1, align 4
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %1
  %35 = load i32, i32* @DESC90_RATEMCS2, align 4
  store i32 %35, i32* %3, align 4
  br label %65

36:                                               ; preds = %1
  %37 = load i32, i32* @DESC90_RATEMCS3, align 4
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %1
  %39 = load i32, i32* @DESC90_RATEMCS4, align 4
  store i32 %39, i32* %3, align 4
  br label %65

40:                                               ; preds = %1
  %41 = load i32, i32* @DESC90_RATEMCS5, align 4
  store i32 %41, i32* %3, align 4
  br label %65

42:                                               ; preds = %1
  %43 = load i32, i32* @DESC90_RATEMCS6, align 4
  store i32 %43, i32* %3, align 4
  br label %65

44:                                               ; preds = %1
  %45 = load i32, i32* @DESC90_RATEMCS7, align 4
  store i32 %45, i32* %3, align 4
  br label %65

46:                                               ; preds = %1
  %47 = load i32, i32* @DESC90_RATEMCS8, align 4
  store i32 %47, i32* %3, align 4
  br label %65

48:                                               ; preds = %1
  %49 = load i32, i32* @DESC90_RATEMCS9, align 4
  store i32 %49, i32* %3, align 4
  br label %65

50:                                               ; preds = %1
  %51 = load i32, i32* @DESC90_RATEMCS10, align 4
  store i32 %51, i32* %3, align 4
  br label %65

52:                                               ; preds = %1
  %53 = load i32, i32* @DESC90_RATEMCS11, align 4
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %1
  %55 = load i32, i32* @DESC90_RATEMCS12, align 4
  store i32 %55, i32* %3, align 4
  br label %65

56:                                               ; preds = %1
  %57 = load i32, i32* @DESC90_RATEMCS13, align 4
  store i32 %57, i32* %3, align 4
  br label %65

58:                                               ; preds = %1
  %59 = load i32, i32* @DESC90_RATEMCS14, align 4
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %1
  %61 = load i32, i32* @DESC90_RATEMCS15, align 4
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %1
  %63 = load i32, i32* @DESC90_RATEMCS32, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %1
  br label %65

65:                                               ; preds = %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
