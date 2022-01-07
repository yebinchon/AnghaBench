; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_signalled_pipes_remove_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_signalled_pipes_remove_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_pipe_dev = type { %struct.goldfish_pipe* }
%struct.goldfish_pipe = type { %struct.goldfish_pipe*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.goldfish_pipe* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goldfish_pipe_dev*, %struct.goldfish_pipe*)* @signalled_pipes_remove_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signalled_pipes_remove_locked(%struct.goldfish_pipe_dev* %0, %struct.goldfish_pipe* %1) #0 {
  %3 = alloca %struct.goldfish_pipe_dev*, align 8
  %4 = alloca %struct.goldfish_pipe*, align 8
  store %struct.goldfish_pipe_dev* %0, %struct.goldfish_pipe_dev** %3, align 8
  store %struct.goldfish_pipe* %1, %struct.goldfish_pipe** %4, align 8
  %5 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %6 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %11 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %10, i32 0, i32 0
  %12 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %11, align 8
  %13 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %14 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.goldfish_pipe* %12, %struct.goldfish_pipe** %16, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %19 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %18, i32 0, i32 0
  %20 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %19, align 8
  %21 = icmp ne %struct.goldfish_pipe* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %24 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %27 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %26, i32 0, i32 0
  %28 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %27, align 8
  %29 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %28, i32 0, i32 1
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %29, align 8
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %32 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %33 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %32, i32 0, i32 0
  %34 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %33, align 8
  %35 = icmp eq %struct.goldfish_pipe* %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %38 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %37, i32 0, i32 0
  %39 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %38, align 8
  %40 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %3, align 8
  %41 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %40, i32 0, i32 0
  store %struct.goldfish_pipe* %39, %struct.goldfish_pipe** %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %44 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %43, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %44, align 8
  %45 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %4, align 8
  %46 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %45, i32 0, i32 0
  store %struct.goldfish_pipe* null, %struct.goldfish_pipe** %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
