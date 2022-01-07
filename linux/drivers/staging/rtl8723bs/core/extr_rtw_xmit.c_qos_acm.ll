; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_qos_acm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_qos_acm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"qos_acm(): invalid pattrib->priority: %d!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qos_acm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %28 [
    i32 0, label %6
    i32 3, label %6
    i32 1, label %13
    i32 2, label %13
    i32 4, label %14
    i32 5, label %14
    i32 6, label %21
    i32 7, label %21
  ]

6:                                                ; preds = %2, %2
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @BIT(i32 1)
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 1, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %6
  br label %31

13:                                               ; preds = %2, %2
  br label %31

14:                                               ; preds = %2, %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @BIT(i32 2)
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %14
  br label %31

21:                                               ; preds = %2, %2
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @BIT(i32 3)
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 5, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %21
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DBG_871X(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %27, %20, %13, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DBG_871X(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
