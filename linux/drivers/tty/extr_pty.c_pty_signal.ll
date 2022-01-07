; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_pty.c_pty_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_pty.c_pty_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.pid = type { i32 }

@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @pty_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pty_signal(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pid*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SIGINT, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SIGQUIT, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SIGTSTP, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %14, %10, %2
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.pid* @tty_get_pgrp(i64 %29)
  store %struct.pid* %30, %struct.pid** %6, align 8
  %31 = load %struct.pid*, %struct.pid** %6, align 8
  %32 = icmp ne %struct.pid* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.pid*, %struct.pid** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @kill_pgrp(%struct.pid* %34, i32 %35, i32 1)
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.pid*, %struct.pid** %6, align 8
  %39 = call i32 @put_pid(%struct.pid* %38)
  br label %40

40:                                               ; preds = %37, %21
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.pid* @tty_get_pgrp(i64) #1

declare dso_local i32 @kill_pgrp(%struct.pid*, i32, i32) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
