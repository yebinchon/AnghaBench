; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_dcc.c_hvc_dcc_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_dcc.c_hvc_dcc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DCC_STATUS_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hvc_dcc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_dcc_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @jiffies, align 4
  %4 = load i32, i32* @HZ, align 4
  %5 = sdiv i32 %4, 10
  %6 = add nsw i32 %3, %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  %8 = call i32 @__dcc_putchar(i8 signext 10)
  br label %9

9:                                                ; preds = %19, %0
  %10 = load i64, i64* %2, align 8
  %11 = call i64 @time_is_after_jiffies(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = call i32 (...) @__dcc_getstatus()
  %15 = load i32, i32* @DCC_STATUS_TX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %21

19:                                               ; preds = %13
  br label %9

20:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @__dcc_putchar(i8 signext) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @__dcc_getstatus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
