; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpu5wdt.c_cpu5wdt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpu5wdt.c_cpu5wdt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"port=0x%x, verbose=%i\0A\00", align 1
@port = common dso_local global i64 0, align 8
@cpu5wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cpu5wdt_trigger = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@CPU5WDT_EXTENT = common dso_local global i32 0, align 4
@PFX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"request_region failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CPU5WDT_STATUS_REG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"sorry, was my fault\0A\00", align 1
@cpu5wdt_misc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"misc_register failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"init success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpu5wdt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu5wdt_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @verbose, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i64, i64* @port, align 8
  %8 = load i64, i64* @verbose, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %8)
  br label %10

10:                                               ; preds = %6, %0
  %11 = call i32 @init_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 3))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 2), align 8
  %12 = load i32, i32* @cpu5wdt_trigger, align 4
  %13 = call i32 @timer_setup(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 1), i32 %12, i32 0)
  %14 = load i32, i32* @ticks, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 0), align 8
  %15 = load i64, i64* @port, align 8
  %16 = load i32, i32* @CPU5WDT_EXTENT, align 4
  %17 = load i32, i32* @PFX, align 4
  %18 = call i32 @request_region(i64 %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %10
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %10
  %25 = load i64, i64* @port, align 8
  %26 = load i64, i64* @CPU5WDT_STATUS_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inb(i64 %27)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = lshr i32 %29, 2
  %31 = and i32 %30, 1
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %24
  %37 = call i32 @misc_register(i32* @cpu5wdt_misc)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %44

42:                                               ; preds = %36
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %50

44:                                               ; preds = %40
  %45 = load i64, i64* @port, align 8
  %46 = load i32, i32* @CPU5WDT_EXTENT, align 4
  %47 = call i32 @release_region(i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %20
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @request_region(i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @release_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
