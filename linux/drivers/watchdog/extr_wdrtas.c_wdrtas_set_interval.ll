; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_set_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_set_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdrtas_set_interval.print_msg = internal global i32 10, align 4
@wdrtas_token_set_indicator = common dso_local global i32 0, align 4
@WDRTAS_SURVEILLANCE_IND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"setting the watchdog to %i timeout failed: %li\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wdrtas_set_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdrtas_set_interval(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, 59
  %6 = sdiv i32 %5, 60
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @wdrtas_token_set_indicator, align 4
  %8 = load i32, i32* @WDRTAS_SURVEILLANCE_IND, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @rtas_call(i32 %7, i32 3, i32 1, i32* null, i32 %8, i32 0, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @wdrtas_set_interval.print_msg, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18)
  %20 = load i32, i32* @wdrtas_set_interval.print_msg, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @wdrtas_set_interval.print_msg, align 4
  br label %22

22:                                               ; preds = %16, %13, %1
  %23 = load i64, i64* %3, align 8
  %24 = trunc i64 %23 to i32
  ret i32 %24
}

declare dso_local i64 @rtas_call(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
