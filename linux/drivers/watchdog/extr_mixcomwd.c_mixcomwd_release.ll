; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mixcomwd.c_mixcomwd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mixcomwd.c_mixcomwd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@expect_close = common dso_local global i32 0, align 4
@mixcomwd_timer_alive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"release called while internal timer alive\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@mixcomwd_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"WDT device closed unexpectedly.  WDT will not stop!\0A\00", align 1
@mixcomwd_opened = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mixcomwd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixcomwd_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = load i32, i32* @expect_close, align 4
  %7 = icmp eq i32 %6, 42
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load i32, i32* @mixcomwd_timer_alive, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %8
  store i32 1, i32* @mixcomwd_timer_alive, align 4
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 5, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @mod_timer(i32* @mixcomwd_timer, i64 %20)
  br label %24

22:                                               ; preds = %2
  %23 = call i32 @pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %15
  %25 = call i32 @clear_bit(i32 0, i32* @mixcomwd_opened)
  store i32 0, i32* @expect_close, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
