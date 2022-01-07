; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_interrupt_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_interrupt_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_pipe_dev = type { i32 }
%struct.goldfish_pipe = type { i32, i32 }

@PIPE_WAKE_CLOSED = common dso_local global i32 0, align 4
@BIT_CLOSED_ON_HOST = common dso_local global i32 0, align 4
@PIPE_WAKE_READ = common dso_local global i32 0, align 4
@BIT_WAKE_ON_READ = common dso_local global i32 0, align 4
@PIPE_WAKE_WRITE = common dso_local global i32 0, align 4
@BIT_WAKE_ON_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @goldfish_interrupt_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goldfish_interrupt_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.goldfish_pipe_dev*, align 8
  %4 = alloca %struct.goldfish_pipe*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.goldfish_pipe_dev*
  store %struct.goldfish_pipe_dev* %7, %struct.goldfish_pipe_dev** %3, align 8
  br label %8

8:                                                ; preds = %43, %1
  %9 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %10 = call %struct.goldfish_pipe* @signalled_pipes_pop_front(%struct.goldfish_pipe_dev* %9, i32* %5)
  store %struct.goldfish_pipe* %10, %struct.goldfish_pipe** %4, align 8
  %11 = icmp ne %struct.goldfish_pipe* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PIPE_WAKE_CLOSED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* @BIT_CLOSED_ON_HOST, align 4
  %19 = shl i32 1, %18
  %20 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %21 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %43

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PIPE_WAKE_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @BIT_WAKE_ON_READ, align 4
  %29 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %30 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %29, i32 0, i32 0
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PIPE_WAKE_WRITE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @BIT_WAKE_ON_WRITE, align 4
  %39 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %40 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %39, i32 0, i32 0
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %45 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %44, i32 0, i32 1
  %46 = call i32 @wake_up_interruptible(i32* %45)
  br label %8

47:                                               ; preds = %8
  ret void
}

declare dso_local %struct.goldfish_pipe* @signalled_pipes_pop_front(%struct.goldfish_pipe_dev*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
