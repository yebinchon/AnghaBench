; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@wdrtas_expect_close = common dso_local global i64 0, align 8
@WDRTAS_MAGIC_CHAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"got unexpected close. Watchdog not stopped.\0A\00", align 1
@wdrtas_miscdev_open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @wdrtas_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdrtas_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load i64, i64* @wdrtas_expect_close, align 8
  %6 = load i64, i64* @WDRTAS_MAGIC_CHAR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @wdrtas_timer_stop()
  br label %13

10:                                               ; preds = %2
  %11 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @wdrtas_timer_keepalive()
  br label %13

13:                                               ; preds = %10, %8
  store i64 0, i64* @wdrtas_expect_close, align 8
  %14 = call i32 @atomic_dec(i32* @wdrtas_miscdev_open)
  ret i32 0
}

declare dso_local i32 @wdrtas_timer_stop(...) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @wdrtas_timer_keepalive(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
