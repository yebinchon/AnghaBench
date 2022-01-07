; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_it8712f_wdt.c_it8712f_wdt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_it8712f_wdt.c_it8712f_wdt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"disabling watchdog timer\0A\00", align 1
@LDN_GPIO = common dso_local global i32 0, align 4
@WDT_CONFIG = common dso_local global i64 0, align 8
@WDT_CONTROL = common dso_local global i64 0, align 8
@revision = common dso_local global i32 0, align 4
@WDT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @it8712f_wdt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @it8712f_wdt_disable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @superio_enter()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %1, align 4
  br label %26

8:                                                ; preds = %0
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @LDN_GPIO, align 4
  %11 = call i32 @superio_select(i32 %10)
  %12 = load i64, i64* @WDT_CONFIG, align 8
  %13 = call i32 @superio_outb(i32 0, i64 %12)
  %14 = load i64, i64* @WDT_CONTROL, align 8
  %15 = call i32 @superio_outb(i32 0, i64 %14)
  %16 = load i32, i32* @revision, align 4
  %17 = icmp sge i32 %16, 8
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load i64, i64* @WDT_TIMEOUT, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @superio_outb(i32 0, i64 %20)
  br label %22

22:                                               ; preds = %18, %8
  %23 = load i64, i64* @WDT_TIMEOUT, align 8
  %24 = call i32 @superio_outb(i32 0, i64 %23)
  %25 = call i32 (...) @superio_exit()
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %22, %6
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @superio_enter(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @superio_select(i32) #1

declare dso_local i32 @superio_outb(i32, i64) #1

declare dso_local i32 @superio_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
