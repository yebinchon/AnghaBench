; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_ist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_ist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_work = type { i32 }
%struct.sc16is7xx_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@irq_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kthread_work*)* @sc16is7xx_ist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc16is7xx_ist(%struct.kthread_work* %0) #0 {
  %2 = alloca %struct.kthread_work*, align 8
  %3 = alloca %struct.sc16is7xx_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kthread_work* %0, %struct.kthread_work** %2, align 8
  %6 = load %struct.kthread_work*, %struct.kthread_work** %2, align 8
  %7 = load i32, i32* @irq_work, align 4
  %8 = call %struct.sc16is7xx_port* @to_sc16is7xx_port(%struct.kthread_work* %6, i32 %7)
  store %struct.sc16is7xx_port* %8, %struct.sc16is7xx_port** %3, align 8
  %9 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %10 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  br label %12

12:                                               ; preds = %1, %34
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %16 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @sc16is7xx_port_irq(%struct.sc16is7xx_port* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %35

34:                                               ; preds = %30
  br label %12

35:                                               ; preds = %33
  %36 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %3, align 8
  %37 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  ret void
}

declare dso_local %struct.sc16is7xx_port* @to_sc16is7xx_port(%struct.kthread_work*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sc16is7xx_port_irq(%struct.sc16is7xx_port*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
