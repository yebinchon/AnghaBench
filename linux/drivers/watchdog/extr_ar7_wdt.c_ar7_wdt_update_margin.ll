; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ar7_wdt.c_ar7_wdt_update_margin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ar7_wdt.c_ar7_wdt_update_margin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vbus_clk = common dso_local global i32 0, align 4
@prescale_value = common dso_local global i32 0, align 4
@margin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"timer margin %d seconds (prescale %d, change %d, freq %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ar7_wdt_update_margin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar7_wdt_update_margin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @vbus_clk, align 4
  %6 = call i32 @clk_get_rate(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @prescale_value, align 4
  %10 = sdiv i32 %8, %9
  %11 = mul nsw i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 65535
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 65535, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ar7_wdt_change(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @prescale_value, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* @margin, align 4
  %27 = load i32, i32* @margin, align 4
  %28 = load i32, i32* @prescale_value, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @ar7_wdt_change(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
