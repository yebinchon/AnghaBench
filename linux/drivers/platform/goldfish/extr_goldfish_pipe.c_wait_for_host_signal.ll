; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_wait_for_host_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_wait_for_host_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_pipe = type { i32, i32 }

@BIT_WAKE_ON_WRITE = common dso_local global i32 0, align 4
@BIT_WAKE_ON_READ = common dso_local global i32 0, align 4
@PIPE_CMD_WAKE_ON_WRITE = common dso_local global i32 0, align 4
@PIPE_CMD_WAKE_ON_READ = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@BIT_CLOSED_ON_HOST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.goldfish_pipe*, i32)* @wait_for_host_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_host_signal(%struct.goldfish_pipe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.goldfish_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.goldfish_pipe* %0, %struct.goldfish_pipe** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @BIT_WAKE_ON_WRITE, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @BIT_WAKE_ON_READ, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %17 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %16, i32 0, i32 0
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @PIPE_CMD_WAKE_ON_WRITE, align 4
  br label %26

24:                                               ; preds = %13
  %25 = load i32, i32* @PIPE_CMD_WAKE_ON_READ, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @goldfish_pipe_cmd(%struct.goldfish_pipe* %19, i32 %27)
  br label %29

29:                                               ; preds = %60, %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %32 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %37 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %41 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %40, i32 0, i32 0
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @wait_event_interruptible(i32 %38, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* @ERESTARTSYS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %62

51:                                               ; preds = %35
  %52 = load i32, i32* @BIT_CLOSED_ON_HOST, align 4
  %53 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %54 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %53, i32 0, i32 0
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %51
  br label %29

61:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %57, %48
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @goldfish_pipe_cmd(%struct.goldfish_pipe*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
