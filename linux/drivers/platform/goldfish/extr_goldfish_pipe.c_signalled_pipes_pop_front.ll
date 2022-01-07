; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_signalled_pipes_pop_front.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_signalled_pipes_pop_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_pipe = type { i32, %struct.goldfish_pipe*, i32* }
%struct.goldfish_pipe_dev = type { i32, %struct.goldfish_pipe* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.goldfish_pipe* (%struct.goldfish_pipe_dev*, i32*)* @signalled_pipes_pop_front to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.goldfish_pipe* @signalled_pipes_pop_front(%struct.goldfish_pipe_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.goldfish_pipe_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.goldfish_pipe*, align 8
  %6 = alloca i64, align 8
  store %struct.goldfish_pipe_dev* %0, %struct.goldfish_pipe_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %8 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %12 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %11, i32 0, i32 1
  %13 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %12, align 8
  store %struct.goldfish_pipe* %13, %struct.goldfish_pipe** %5, align 8
  %14 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %5, align 8
  %15 = icmp ne %struct.goldfish_pipe* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %5, align 8
  %18 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %5, align 8
  %22 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %5, align 8
  %24 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %23, i32 0, i32 1
  %25 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %24, align 8
  %26 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %27 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %26, i32 0, i32 1
  store %struct.goldfish_pipe* %25, %struct.goldfish_pipe** %27, align 8
  %28 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %29 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %28, i32 0, i32 1
  %30 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %29, align 8
  %31 = icmp ne %struct.goldfish_pipe* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %16
  %33 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %34 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %33, i32 0, i32 1
  %35 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %34, align 8
  %36 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %32, %16
  %38 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %5, align 8
  %39 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %38, i32 0, i32 1
  store %struct.goldfish_pipe* null, %struct.goldfish_pipe** %39, align 8
  br label %40

40:                                               ; preds = %37, %2
  %41 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %42 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %5, align 8
  ret %struct.goldfish_pipe* %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
