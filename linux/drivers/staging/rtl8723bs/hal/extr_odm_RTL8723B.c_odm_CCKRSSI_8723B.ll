; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_RTL8723B.c_odm_CCKRSSI_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_RTL8723B.c_odm_CCKRSSI_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @odm_CCKRSSI_8723B(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %23 [
    i32 6, label %7
    i32 4, label %11
    i32 1, label %15
    i32 0, label %19
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 2, %8
  %10 = sub nsw i32 -34, %9
  store i32 %10, i32* %5, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 2, %12
  %14 = sub nsw i32 -14, %13
  store i32 %14, i32* %5, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 2, %16
  %18 = sub nsw i32 6, %17
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 2, %20
  %22 = sub nsw i32 16, %21
  store i32 %22, i32* %5, align 4
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %19, %15, %11, %7
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
