; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_set_command_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_set_command_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@pcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CMD_ISA_IDLE = common dso_local global i32 0, align 4
@ISA_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"command_mode=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @set_command_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_command_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1))
  br label %5

5:                                                ; preds = %33, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 3
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %36

13:                                               ; preds = %11
  %14 = load i32, i32* @CMD_ISA_IDLE, align 4
  %15 = call i32 @send_isa_command(i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %33

19:                                               ; preds = %13
  %20 = load i32, i32* %1, align 4
  %21 = icmp eq i32 %20, 243
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 2), align 8
  %24 = add nsw i64 %23, 2
  %25 = call i32 @outb_p(i32 0, i64 %24)
  %26 = call i32 @udelay(i32 1200)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 2), align 8
  %28 = add nsw i64 %27, 2
  %29 = call i32 @outb_p(i32 0, i64 %28)
  %30 = load i32, i32* @ISA_COMMAND_TIMEOUT, align 4
  %31 = call i32 @udelay(i32 %30)
  br label %32

32:                                               ; preds = %22, %19
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %11
  %37 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1))
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %39 = load i64, i64* @debug, align 8
  %40 = load i64, i64* @DEBUG, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @send_isa_command(i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
