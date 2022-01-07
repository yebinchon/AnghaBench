; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_send_isa_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_send_isa_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@debug = common dso_local global i64 0, align 8
@DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"sending following data cmd=0x%02x\0A\00", align 1
@WD_WCMD = common dso_local global i32 0, align 4
@pcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ISA_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"received following data for cmd=0x%02x: port0=0x%02x last_port0=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @send_isa_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_isa_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i64, i64* @debug, align 8
  %8 = load i64, i64* @DEBUG, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 15
  %16 = load i32, i32* @WD_WCMD, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %20 = add nsw i64 %19, 2
  %21 = call i32 @outb_p(i32 %18, i64 %20)
  %22 = load i32, i32* @ISA_COMMAND_TIMEOUT, align 4
  %23 = call i32 @udelay(i32 %22)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %25 = call i32 @inb_p(i64 %24)
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %39, %13
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 25
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %32 = call i32 @inb_p(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %42

37:                                               ; preds = %29
  %38 = call i32 @udelay(i32 250)
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %26

42:                                               ; preds = %36, %26
  %43 = load i64, i64* @debug, align 8
  %44 = load i64, i64* @DEBUG, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
