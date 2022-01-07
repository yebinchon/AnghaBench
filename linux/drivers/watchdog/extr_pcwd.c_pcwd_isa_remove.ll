; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_isa_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_isa_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.device = type { i32 }

@debug = common dso_local global i64 0, align 8
@DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"pcwd_isa_remove id=%d\0A\00", align 1
@pcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@nowayout = common dso_local global i32 0, align 4
@pcwd_miscdev = common dso_local global i32 0, align 4
@temp_miscdev = common dso_local global i32 0, align 4
@PCWD_REVISION_A = common dso_local global i64 0, align 8
@cards_found = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pcwd_isa_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcwd_isa_remove(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @debug, align 8
  %7 = load i64, i64* @DEBUG, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %37

16:                                               ; preds = %12
  %17 = load i32, i32* @nowayout, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 (...) @pcwd_stop()
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 @misc_deregister(i32* @pcwd_miscdev)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 2), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @misc_deregister(i32* @temp_miscdev)
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1), align 8
  %30 = load i64, i64* @PCWD_REVISION_A, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 2, i32 4
  %34 = call i32 @release_region(i32 %28, i32 %33)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %35 = load i32, i32* @cards_found, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @cards_found, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pcwd_stop(...) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
