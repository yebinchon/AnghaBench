; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_addr_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_addr_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_addr_delay(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 254
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @mdelay(i32 50)
  br label %37

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 253
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @msleep(i32 5)
  br label %36

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 252
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @msleep(i32 1)
  br label %35

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 251
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @usleep_range(i32 50, i32 100)
  br label %34

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 250
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @usleep_range(i32 5, i32 10)
  br label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, 249
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @usleep_range(i32 1, i32 2)
  br label %32

32:                                               ; preds = %30, %27
  br label %33

33:                                               ; preds = %32, %25
  br label %34

34:                                               ; preds = %33, %20
  br label %35

35:                                               ; preds = %34, %15
  br label %36

36:                                               ; preds = %35, %10
  br label %37

37:                                               ; preds = %36, %5
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
