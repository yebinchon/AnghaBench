; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_rwait_and_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_rwait_and_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usblp = type { i32, i32 }

@waita = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usblp*, i32)* @usblp_rwait_and_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_rwait_and_lock(%struct.usblp* %0, i32 %1) #0 {
  %3 = alloca %struct.usblp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usblp* %0, %struct.usblp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @waita, align 4
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @DECLARE_WAITQUEUE(i32 %6, i32 %7)
  %9 = load %struct.usblp*, %struct.usblp** %3, align 8
  %10 = getelementptr inbounds %struct.usblp, %struct.usblp* %9, i32 0, i32 0
  %11 = call i32 @add_wait_queue(i32* %10, i32* @waita)
  br label %12

12:                                               ; preds = %35, %2
  %13 = load %struct.usblp*, %struct.usblp** %3, align 8
  %14 = getelementptr inbounds %struct.usblp, %struct.usblp* %13, i32 0, i32 1
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %40

20:                                               ; preds = %12
  %21 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %22 = call i32 @set_current_state(i32 %21)
  %23 = load %struct.usblp*, %struct.usblp** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @usblp_rtest(%struct.usblp* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.usblp*, %struct.usblp** %3, align 8
  %29 = getelementptr inbounds %struct.usblp, %struct.usblp* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %40

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %40

35:                                               ; preds = %31
  %36 = load %struct.usblp*, %struct.usblp** %3, align 8
  %37 = getelementptr inbounds %struct.usblp, %struct.usblp* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = call i32 (...) @schedule()
  br label %12

40:                                               ; preds = %34, %27, %17
  %41 = load i32, i32* @TASK_RUNNING, align 4
  %42 = call i32 @set_current_state(i32 %41)
  %43 = load %struct.usblp*, %struct.usblp** %3, align 8
  %44 = getelementptr inbounds %struct.usblp, %struct.usblp* %43, i32 0, i32 0
  %45 = call i32 @remove_wait_queue(i32* %44, i32* @waita)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @usblp_rtest(%struct.usblp*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
