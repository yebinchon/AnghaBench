; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sb_wdog.c_sbwdog_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sb_wdog.c_sbwdog_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@user_dog = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [62 x i8] c"%s in danger of initiating system reset in %ld.%01ld seconds\0A\00", align 1
@ident = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbwdog_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @__raw_readb(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 -8
  %13 = call i32 @__raw_readq(i8* %12)
  %14 = and i32 %13, 8388607
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** @user_dog, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ident, i32 0, i32 0), align 4
  %21 = load i64, i64* %5, align 8
  %22 = udiv i64 %21, 1000000
  %23 = load i64, i64* %5, align 8
  %24 = udiv i64 %23, 100000
  %25 = urem i64 %24, 10
  %26 = call i32 @pr_crit(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %22, i64 %25)
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @__raw_writeb(i32 %31, i8* %32)
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %34
}

declare dso_local i32 @__raw_readb(i8*) #1

declare dso_local i32 @__raw_readq(i8*) #1

declare dso_local i32 @pr_crit(i8*, i32, i64, i64) #1

declare dso_local i32 @__raw_writeb(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
