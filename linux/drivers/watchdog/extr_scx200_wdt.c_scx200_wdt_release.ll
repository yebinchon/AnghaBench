; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_scx200_wdt.c_scx200_wdt_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_scx200_wdt.c_scx200_wdt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@expect_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"watchdog device closed unexpectedly, will not disable the watchdog timer\0A\00", align 1
@nowayout = common dso_local global i32 0, align 4
@open_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @scx200_wdt_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scx200_wdt_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load i32, i32* @expect_close, align 4
  %6 = icmp ne i32 %5, 42
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @pr_warn(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @nowayout, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 (...) @scx200_wdt_disable()
  br label %14

14:                                               ; preds = %12, %9
  br label %15

15:                                               ; preds = %14, %7
  store i32 0, i32* @expect_close, align 4
  %16 = call i32 @clear_bit(i32 0, i32* @open_lock)
  ret i32 0
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @scx200_wdt_disable(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
