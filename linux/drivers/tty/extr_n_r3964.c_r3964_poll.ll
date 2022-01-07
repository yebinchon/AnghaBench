; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_r3964_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_r3964_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.r3964_info* }
%struct.r3964_info = type { i32 }
%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.r3964_client_info = type { %struct.r3964_message* }
%struct.r3964_message = type { i32 }

@EPOLLOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"POLL\00", align 1
@current = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)* @r3964_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r3964_poll(%struct.tty_struct* %0, %struct.file* %1, %struct.poll_table_struct* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.poll_table_struct*, align 8
  %7 = alloca %struct.r3964_info*, align 8
  %8 = alloca %struct.r3964_client_info*, align 8
  %9 = alloca %struct.r3964_message*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.poll_table_struct* %2, %struct.poll_table_struct** %6, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 1
  %14 = load %struct.r3964_info*, %struct.r3964_info** %13, align 8
  store %struct.r3964_info* %14, %struct.r3964_info** %7, align 8
  store %struct.r3964_message* null, %struct.r3964_message** %9, align 8
  %15 = load i32, i32* @EPOLLOUT, align 4
  store i32 %15, i32* %11, align 4
  %16 = call i32 @TRACE_L(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.r3964_info*, %struct.r3964_info** %7, align 8
  %18 = load i32, i32* @current, align 4
  %19 = call i32 @task_pid(i32 %18)
  %20 = call %struct.r3964_client_info* @findClient(%struct.r3964_info* %17, i32 %19)
  store %struct.r3964_client_info* %20, %struct.r3964_client_info** %8, align 8
  %21 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %22 = icmp ne %struct.r3964_client_info* %21, null
  br i1 %22, label %23, label %49

23:                                               ; preds = %3
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  %27 = load %struct.poll_table_struct*, %struct.poll_table_struct** %6, align 8
  %28 = call i32 @poll_wait(%struct.file* %24, i32* %26, %struct.poll_table_struct* %27)
  %29 = load %struct.r3964_info*, %struct.r3964_info** %7, align 8
  %30 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.r3964_client_info*, %struct.r3964_client_info** %8, align 8
  %34 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %33, i32 0, i32 0
  %35 = load %struct.r3964_message*, %struct.r3964_message** %34, align 8
  store %struct.r3964_message* %35, %struct.r3964_message** %9, align 8
  %36 = load %struct.r3964_info*, %struct.r3964_info** %7, align 8
  %37 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %36, i32 0, i32 0
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.r3964_message*, %struct.r3964_message** %9, align 8
  %41 = icmp ne %struct.r3964_message* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %23
  %43 = load i32, i32* @EPOLLIN, align 4
  %44 = load i32, i32* @EPOLLRDNORM, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %42, %23
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %48
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i32 @TRACE_L(i8*) #1

declare dso_local %struct.r3964_client_info* @findClient(%struct.r3964_info*, i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
