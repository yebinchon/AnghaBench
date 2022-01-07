; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_it87_wdt.c__wdt_update_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_it87_wdt.c__wdt_update_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WDT_KRST = common dso_local global i8 0, align 1
@testmode = common dso_local global i64 0, align 8
@max_units = common dso_local global i32 0, align 4
@WDT_TOV1 = common dso_local global i8 0, align 1
@chip_type = common dso_local global i64 0, align 8
@IT8721_ID = common dso_local global i64 0, align 8
@WDT_PWROK = common dso_local global i8 0, align 1
@WDTCFG = common dso_local global i32 0, align 4
@WDTVALLSB = common dso_local global i32 0, align 4
@WDTVALMSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @_wdt_update_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_wdt_update_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i8, i8* @WDT_KRST, align 1
  store i8 %4, i8* %3, align 1
  %5 = load i64, i64* @testmode, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8 0, i8* %3, align 1
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @max_units, align 4
  %11 = icmp ule i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i8, i8* @WDT_TOV1, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, %14
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %3, align 1
  br label %22

19:                                               ; preds = %8
  %20 = load i32, i32* %2, align 4
  %21 = udiv i32 %20, 60
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i64, i64* @chip_type, align 8
  %24 = load i64, i64* @IT8721_ID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i8, i8* @WDT_PWROK, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %3, align 1
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* @WDTCFG, align 4
  %37 = call i32 @superio_outb(i32 %35, i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @WDTVALLSB, align 4
  %40 = call i32 @superio_outb(i32 %38, i32 %39)
  %41 = load i32, i32* @max_units, align 4
  %42 = icmp ugt i32 %41, 255
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i32, i32* %2, align 4
  %45 = lshr i32 %44, 8
  %46 = load i32, i32* @WDTVALMSB, align 4
  %47 = call i32 @superio_outb(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %33
  ret void
}

declare dso_local i32 @superio_outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
