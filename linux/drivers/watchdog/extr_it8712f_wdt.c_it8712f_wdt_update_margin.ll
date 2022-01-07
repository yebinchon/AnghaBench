; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_it8712f_wdt.c_it8712f_wdt_update_margin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_it8712f_wdt.c_it8712f_wdt_update_margin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WDT_OUT_KRST = common dso_local global i32 0, align 4
@WDT_OUT_PWROK = common dso_local global i32 0, align 4
@margin = common dso_local global i32 0, align 4
@max_units = common dso_local global i32 0, align 4
@WDT_UNIT_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"timer margin %d seconds\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"timer margin %d minutes\0A\00", align 1
@WDT_CONFIG = common dso_local global i64 0, align 8
@revision = common dso_local global i32 0, align 4
@WDT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @it8712f_wdt_update_margin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8712f_wdt_update_margin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @WDT_OUT_KRST, align 4
  %4 = load i32, i32* @WDT_OUT_PWROK, align 4
  %5 = or i32 %3, %4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @margin, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @max_units, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i32, i32* @WDT_UNIT_SEC, align 4
  %12 = load i32, i32* %1, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %21

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = sdiv i32 %17, 60
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, i32* %1, align 4
  %23 = load i64, i64* @WDT_CONFIG, align 8
  %24 = call i32 @superio_outb(i32 %22, i64 %23)
  %25 = load i32, i32* @revision, align 4
  %26 = icmp sge i32 %25, 8
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = ashr i32 %28, 8
  %30 = load i64, i64* @WDT_TIMEOUT, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @superio_outb(i32 %29, i64 %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load i32, i32* %2, align 4
  %35 = load i64, i64* @WDT_TIMEOUT, align 8
  %36 = call i32 @superio_outb(i32 %34, i64 %35)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @superio_outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
