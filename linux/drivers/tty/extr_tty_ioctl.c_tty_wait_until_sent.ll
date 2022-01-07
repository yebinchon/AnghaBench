; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_tty_wait_until_sent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_tty_wait_until_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i64)* }

@.str = private unnamed_addr constant [30 x i8] c"wait until sent, timeout=%ld\0A\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_wait_until_sent(%struct.tty_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @tty_debug_wait_until_sent(%struct.tty_struct* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = call i32 @tty_chars_in_buffer(%struct.tty_struct* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @wait_event_interruptible_timeout(i32 %15, i32 %20, i64 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %47

26:                                               ; preds = %12
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.tty_struct*, i64)*, i32 (%struct.tty_struct*, i64)** %35, align 8
  %37 = icmp ne i32 (%struct.tty_struct*, i64)* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.tty_struct*, i64)*, i32 (%struct.tty_struct*, i64)** %42, align 8
  %44 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 %43(%struct.tty_struct* %44, i64 %45)
  br label %47

47:                                               ; preds = %25, %38, %31
  ret void
}

declare dso_local i32 @tty_debug_wait_until_sent(%struct.tty_struct*, i8*, i64) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @tty_chars_in_buffer(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
