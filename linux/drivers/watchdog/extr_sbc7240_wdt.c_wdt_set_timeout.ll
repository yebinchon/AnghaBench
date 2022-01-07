; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sbc7240_wdt.c_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sbc7240_wdt.c_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBC7240_MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout value must be 1<=x<=%d\0A\00", align 1
@SBC7240_SET_TIMEOUT_PORT = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"timeout set to %d seconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_set_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SBC7240_MAX_TIMEOUT, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @SBC7240_MAX_TIMEOUT, align 4
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 -1, i32* %2, align 4
  br label %20

13:                                               ; preds = %6
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SBC7240_SET_TIMEOUT_PORT, align 4
  %16 = call i32 @outb_p(i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* @timeout, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
