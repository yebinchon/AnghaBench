; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_pipe_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_pipe_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_pipe_dev = type { i32, i32, %struct.TYPE_4__*, i64, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@goldfish_pipe_device_deinit = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PIPE_REG_GET_SIGNALLED = common dso_local global i64 0, align 8
@MAX_SIGNALLED_PIPES = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @goldfish_pipe_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_pipe_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.goldfish_pipe_dev*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.goldfish_pipe_dev*
  store %struct.goldfish_pipe_dev* %11, %struct.goldfish_pipe_dev** %9, align 8
  %12 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %9, align 8
  %13 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, @goldfish_pipe_device_deinit
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %9, align 8
  %20 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %9, align 8
  %24 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PIPE_REG_GET_SIGNALLED, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i64 @readl(i64 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %9, align 8
  %33 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %81

37:                                               ; preds = %18
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @MAX_SIGNALLED_PIPES, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @MAX_SIGNALLED_PIPES, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %41, %37
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %69, %43
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %44
  %49 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %9, align 8
  %50 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %9, align 8
  %51 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %9, align 8
  %60 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @signalled_pipes_add_locked(%struct.goldfish_pipe_dev* %49, i32 %58, i32 %67)
  br label %69

69:                                               ; preds = %48
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %44

72:                                               ; preds = %44
  %73 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %9, align 8
  %74 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %73, i32 0, i32 1
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %9, align 8
  %78 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %77, i32 0, i32 0
  %79 = call i32 @tasklet_schedule(i32* %78)
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %31, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @signalled_pipes_add_locked(%struct.goldfish_pipe_dev*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
