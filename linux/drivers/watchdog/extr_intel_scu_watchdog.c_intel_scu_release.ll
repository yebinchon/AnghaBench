; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_intel_scu_watchdog.c_intel_scu_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_intel_scu_watchdog.c_intel_scu_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@watchdog_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"intel_scu_release, without open\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"closed, without starting timer\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Unexpected close of /dev/watchdog!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @intel_scu_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_scu_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = call i32 @test_and_clear_bit(i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog_device, i32 0, i32 2))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENOTTY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %21

12:                                               ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog_device, i32 0, i32 1), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %21

17:                                               ; preds = %12
  %18 = call i32 @pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @watchdog_device, i32 0, i32 0), align 4
  %19 = call i32 (...) @intel_scu_keepalive()
  %20 = call i32 (...) @watchdog_fire()
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %15, %8
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @intel_scu_keepalive(...) #1

declare dso_local i32 @watchdog_fire(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
