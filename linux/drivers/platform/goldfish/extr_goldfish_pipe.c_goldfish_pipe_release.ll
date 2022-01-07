; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_pipe_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_pipe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.goldfish_pipe* }
%struct.goldfish_pipe = type { i64, i64, %struct.goldfish_pipe_dev* }
%struct.goldfish_pipe_dev = type { i32, i32** }

@PIPE_CMD_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @goldfish_pipe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_pipe_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.goldfish_pipe*, align 8
  %7 = alloca %struct.goldfish_pipe_dev*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %9, align 8
  store %struct.goldfish_pipe* %10, %struct.goldfish_pipe** %6, align 8
  %11 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %6, align 8
  %12 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %11, i32 0, i32 2
  %13 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %12, align 8
  store %struct.goldfish_pipe_dev* %13, %struct.goldfish_pipe_dev** %7, align 8
  %14 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %6, align 8
  %15 = load i32, i32* @PIPE_CMD_CLOSE, align 4
  %16 = call i32 @goldfish_pipe_cmd(%struct.goldfish_pipe* %14, i32 %15)
  %17 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %7, align 8
  %18 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %7, align 8
  %22 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %6, align 8
  %25 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32*, i32** %23, i64 %26
  store i32* null, i32** %27, align 8
  %28 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %7, align 8
  %29 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %6, align 8
  %30 = call i32 @signalled_pipes_remove_locked(%struct.goldfish_pipe_dev* %28, %struct.goldfish_pipe* %29)
  %31 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %7, align 8
  %32 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  store %struct.goldfish_pipe* null, %struct.goldfish_pipe** %36, align 8
  %37 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %6, align 8
  %38 = getelementptr inbounds %struct.goldfish_pipe, %struct.goldfish_pipe* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @free_page(i64 %39)
  %41 = load %struct.goldfish_pipe*, %struct.goldfish_pipe** %6, align 8
  %42 = call i32 @kfree(%struct.goldfish_pipe* %41)
  ret i32 0
}

declare dso_local i32 @goldfish_pipe_cmd(%struct.goldfish_pipe*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @signalled_pipes_remove_locked(%struct.goldfish_pipe_dev*, %struct.goldfish_pipe*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.goldfish_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
